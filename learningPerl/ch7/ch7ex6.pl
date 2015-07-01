#!/usr/bin/perl -w
# File Name: ch7ex6.pl
# Author: Yi Zhu
# Date: 2015/05/26
# Object: Print out lines has both 'fred' and 'wilma'

use strict;
use 5.014;

if(@ARGV > 0)
{
    while(<>)
    {
	print if(/fred/ && /wilma/);
    }
}
else
{
    say "Error! There is no input.";
}
