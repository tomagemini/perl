#!/usr/bin/perl -w
# File Name: ch8ex2.pl
# Author: Yi Zhu
# Date: 2015/05/27
# Object: write a pattern to match the word end with 'a'
use strict;
use 5.014;

while(<>)
{ # take one input line at a time
	chomp;
	if(/\b\w*a\b/)
	{
		print "Matched: |$`<$&>$'|\n"; # the special match vars
	}
	else
	{
		print "No match: |$_|\n";
	}
}
