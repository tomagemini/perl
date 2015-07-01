#!/usr/bin/perl -w
# File Name: showCap.pl
# Author: Yi Zhu
# Date: 2015/06/18
# Object: ch7ex4 - Print out lines has a word is capitialized but not all CAP
# Version: 1.10 - add a $USAGE
#               - modified else part for error inputs
#               - filename changes from ch7ex3.pl to showCap.pl
use strict;
use 5.014;

my $USAGE = "Usage: $0 inputs.";

if(@ARGV > 0)
{
    while(<>)
    {
	print if(/[A-Z][a-z]+/);
    }
}
else
{
    say "Error! There is no input. $USAGE";
}
