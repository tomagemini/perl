#!/usr/bin/perl -w
# File Name: showdouble.pl
# Author: Yi Zhu
# Date: 2015/06/18
# Object: ch7ex5 - Print out lines has two of the same non-whitespace character
# next to each other.
# Version: 1.10 - add a $USAGE
#               - modified else part for error inputs
#               - filename changes from ch7ex5.pl to showdouble.pl
use strict;
use 5.014;

my $USAGE = "Usage: $0 inputs.";
if(@ARGV > 0)
{
    while(<>)
    {
	print if(/(\w)\1/);
    }
}
else
{
    say "Error! There is no input. $USAGE";
}
