#!/usr/bin/perl -w
# File Name: findLasta.pl
# Author: Yi Zhu
# Date: 2015/07/21
# Object: ch8ex2 - write a pattern to match the word end with 'a'
# Version: 1.10 - add a $USAGE
#               - add an else part for error display
#               - file name changes from ch8ex2.pl to findLasta.pl
use strict;
use 5.014;

my $USAGE = "Usage: $0 inputs.";

if(@ARGV > 0)
{
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
}
else
{
    say "Error! There is no input. $USAGE";
}
