#!/usr/bin/perl -w
# File Name: showfred.pl
# Author: Yi Zhu
# Date: 2015/06/18
# Object: ch7ex1 - Print out lines has 'fred'
# Version: 1.10 - add a $USAGE
#               - modified else part for error inputs
#               - filename changes from ch7ex1.pl to showfred.pl
use strict;
use 5.014;

my $USAGE = "Usage: $0 inputs.";

if(@ARGV > 0)
{
    while(<>)
    {
	print if(/fred/);
    }
}
else
{
    say "Error! There is no input. $USAGE";
}
