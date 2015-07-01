#!/usr/bin/perl -w
# File Name: showdot.pl
# Author: Yi Zhu
# Date: 2015/05/26
# Object: ch7ex3 - Print out lines has '.'
# Version: 1.10 - add a $USAGE
#               - modified else part for error inputs
#               - filename changes from ch7ex3.pl to showdot.pl
use strict;
use 5.014;

my $USAGE = "Usage: $0 inputs.";
if(@ARGV > 0)
{
    while(<>)
    {
	print if(/\./);
    }
}
else
{
    say "Error! There is no input. $USAGE";
}
