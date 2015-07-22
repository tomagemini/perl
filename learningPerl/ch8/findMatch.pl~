#!/usr/bin/perl -w
# File Name: findMatch.pl
# Author: Yi Zhu
# Date: 2015/07/21
# Object: ch8ex1 - write a pattern to match the word 'match'
# Version: 1.10 - add a $USAGE
use strict;
use 5.014;

my $USAGE = "Usage: $0 inputs.";

if(@ARGV > 0)
{
	while(<>)
	{ # take one input line at a time
		chomp;
		if(/match/)
		{
			print "Matched: |$`<$&>$'|\n"; # the special match vars
		}
		else
		{
			print "No match: |$_|\n";
		}
	}
}
else
{
	say "Error! There is no input. $USAGE";
}
