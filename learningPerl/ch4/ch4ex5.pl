#!/usr/bin/perl -w
# Program Name: ch4ex5.pl
# Author: Yi Zhu
# Date: 2015/05/20
# Object: Greet the user and mention all the person had greeted.
use strict;
use 5.010;

sub greet($)
{
	state @names;

	print "Hi $_[0]! ";
	if(@names == 0)
	{
		print "You are the first one here!\n";
	}
	else
	{
		print "I've seen: @names\n";
	}
	push(@names, $_[0]);
}
#test code
greet('Fred');
greet('Barney');
greet('Wilma');
greet('Betty');
