#!/usr/bin/perl -w
# File Name: findLasta2.pl
# Author: Yi Zhu
# Date: 2015/07/21
# Object: ch8ex3 - write a pattern to match the word end with 'a' and display
# with single quotation mark.
# Version: 1.10 - add a $USAGE
use strict;
use 5.014;

my $USAGE = "Usage: $0 inputs.";

if(@ARGV > 0)
{
	while(<>)
	{ # take one input line at a time
		chomp;
		if(/(\b\w*a\b)/)
		{
			print "Matched: |$`\'$1\'$'|\n"; # the special match vars
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
