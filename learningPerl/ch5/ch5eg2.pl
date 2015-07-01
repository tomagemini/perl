#!/usr/bin/perl -w
# Program Name: ch5eg2.pl
# Date: 2015/05/24
# Object: Chapter 5 book example.
use strict;
use 5.010;

print "This example uses \$_\n";
while(defined($_ = <STDIN>)
{
	print "I saw $_";
}
# the following example is modified by me
#while(defined(chomp($_ = <>)))
#{
#	if(defined($_))
#	{
#		print "I saw \"$_\"\n";
#	}
#	else
#	{
#		exit;
#	}
#}
