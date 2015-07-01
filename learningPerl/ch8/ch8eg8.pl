#!/usr/bin/perl -w
# File Name: ch8eg8.pl
# Date: 2015/05/27
# Object: Official example for Chapter 8
use strict;
use 5.014;

while(<>)
{ # take one input line at a time
	chomp;
	if(/YOUR_PATTERN_GOES_HERE/)
	{
		print "Matched: |$`<$&>$'|\n"; # the special match vars
	}
	else
	{
		print "No match: |$_|\n";
	}
}
