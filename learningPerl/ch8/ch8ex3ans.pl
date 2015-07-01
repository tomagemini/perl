#!/usr/bin/perl -w
# File Name: ch8ex3ans.pl
# Date: 2015/05/27
# Object: Official answer for Chapter 8 exercises
use strict;
use 5.014;

while(<STDIN>)
{ # take one input line at a time
	chomp;
	if(/\b\w*a\b/)
	{
		print "Matched: |$`<$&>$'|\n"; # the special match vars
		print "\$1 contains $1\n";
	}
	else
	{
		print "No match: |$_|\n";
	}
}
