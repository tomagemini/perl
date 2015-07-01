#!/usr/bin/perl -w
# File Name: showfredi.pl
# Author: Yi Zhu
# Date: 2015/06/18
# Object: ch7ex2 - Print out lines has 'fred' or 'Fred'.
# Version: 1.10 - add a $USAGE
#               - modified else part for error inputs
#               - filename changes from ch7ex2.pl to showfredi.pl
use strict;
use 5.014;

my $USAGE = "Usage: $0 inputs.";
if(@ARGV > 0)
{
    while(<>)
    {
	print if(/[F|f]red/);
    }
}
else
{
    say "Error! There is no input. $USAGE";
}
