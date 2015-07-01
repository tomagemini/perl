#!/usr/bin/perl -w
# File Name: ch7ex4.pl
# Author: Yi Zhu
# Date: 2015/05/26
# Object: Print out lines has a word is capitialized but not all CAP

use strict;
use 5.014;

if(@ARGV > 0)
{
    while(<>)
    {
	print if(/[A-Z][a-z]+/);
    }
}
else
{
    say "Error! There is no input.";
}
