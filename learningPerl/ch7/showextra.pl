#!/usr/bin/perl -w
# File Name: showextra.pl
# Author: Yi Zhu
# Date: 2015/06/18
# Object: ch7ex6 - Print out lines has both 'fred' and 'wilma'
# Version: 1.10 - add a $USAGE
#               - modified else part for error inputs
#               - filename changes from ch7ex6.pl to showextra.pl
use strict;
use 5.014;

my $USAGE = "Usage: $0 inputs.";
if(@ARGV > 0)
{
    while(<>)
    {
	print if(/fred/ && /wilma/);
    }
}
else
{
    say "Error! There is no input. $USAGE";
}
