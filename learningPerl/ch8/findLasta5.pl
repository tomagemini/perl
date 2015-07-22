#!/usr/bin/perl -w
# File Name: findLasta5.pl
# Author: Yi Zhu
# Date: 2015/07/21
# Object: ch8ex5 - write a pattern to match the word end with 'a' by using
# label and also capture up to 5 next character
# Version: 1.10 - add a $USAGE
#               - add an else part for error display
#               - file name changes from ch8ex5.pl to findLasta5.pl
use strict;
use 5.014;
my $USAGE = "Usage: $0 inputs.";

if(@ARGV > 0)
{
	while(<>)
	{ # take one input line at a time
		chomp;
		if(/(?<word>\b\w*a\b)(.{0,5})/)
		{
			print "Matched: |$`<$+{word}>$2|\n"; # the special match vars
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
