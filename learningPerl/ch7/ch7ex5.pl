#!/usr/bin/perl -w
# File Name: ch7ex5.pl
# Author: Yi Zhu
# Date: 2015/05/26
# Object: Print out lines has two of the same non-whitespace character
# next to each other.

use strict;
use 5.014;

if(@ARGV > 0)
{
    while(<>)
    {
	print if(/(\w)\1/);
    }
}
else
{
    say "Error! There is no input.";
}
