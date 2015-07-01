#!/usr/bin/perl -w
# File Name: ch17eg3.pl
# Date: 2015/06/16
# Object: Chapter 17 book examples
use strict;
use 5.016;

say 'More Advanced Error Handling';

#You try some code and if anything goes wrong, the program throws and
#exception that it expects you to catch. With just basic perl, you throw and
#exception with die and catch it with eval. You can inspect the value of $@ to
#figure out what happened
#e.g.
# {
# 	local $@; #don't stomp on higher level errors
# 	eval
# 	{
# 		...; 
# 		my($barney, $fred, $dino);
# 		die "An unexpected exception message" if $unexpected;
# 		die "Bad denominator" if $dino == 0;
# 		$barney = $fred / $dino;
# 	}
# 	if($@ =~ /unexpected/)
# 	{
# 		...;
# 	}
# 	elsif($@ =~ /denominator/)
# 	{
# 		...;
# 	}
# }

#Try::Tiny module makes try, catch, finally blocks like java
#e.g.
# use Try::Tiny;
# try
# {
# 	...; # some code that might throw errors
# }
# catch
# {
# 	...; # some code to handle the error
# }
# finally
# {
# 	...; # some code always executes
# }
#you can use try like eval to simply igonre errors
#Try::Tiny puts error message in $_. You can still use $@, but part of
#Try::Tiny's purpose is to prevent the abuse of $@
$barney = 
 try{ $fred / $dino }
 catch
 {
	 say "Error was $_"; # not $@
 };
 finally
 {
	 say @_ ? 'There was an error' : 'Everything worked';
 }
