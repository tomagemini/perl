#!/usr/bin/perl -w
# Program Name: ch5ex2.pl
# Author: Yi Zhu
# Date: 2015/05/24
# Object: Prompt user for strings by separate lines and print out all
# strings in a right-justified, 20 character column format.
use strict;
use 5.010;

say "Please enter the strings, one per line(use <ctrl>-D to end):";
my @strings = <>;

say '1234567890' x 7 . '012345';
foreach (@strings)
{
	printf "%20s\n", $_;
}
