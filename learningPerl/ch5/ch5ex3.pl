#!/usr/bin/perl -w
# Program Name: ch5ex3.pl
# Author: Yi Zhu
# Date: 2015/05/25
# Object: Prompt user for columns first, and then strings by separate
# lines and print out all strings in a right-justified, user input
# column format.

use strict;
use 5.010;

say "Please enter the number for columns format:";
chomp(my $col = <>);

say "Please enter the strings, one per line(use <ctrl>-D to end):";
chomp(my @strings = <>);

my $colSample = '1234567890';
say $colSample x ($col / 10) . substr $colSample, 0, $col % 10;
foreach (@strings)
{
	printf "%${col}s\n", $_;
}
