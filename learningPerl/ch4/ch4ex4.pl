#!/usr/bin/perl -w
# Program Name: ch4ex4.pl
# Author: Yi Zhu
# Date: 2015/05/20
# Object: Greet a person and mention the last greeted person to the
#         person if he/she is not the first one.
use strict;
use 5.010;

sub greet($)
{
	state @names;

	#my $name = shift;
	push(@names, $_[0]);
	print "Hi $_[0]! ";
	if(@names == 1)
	{
		print "You are the first one here!\n";
	}
	else
	{
		print "$names[-2] is also here!\n";
	}
}
#test code
greet( 'Fred' );
greet( 'Barney' );
