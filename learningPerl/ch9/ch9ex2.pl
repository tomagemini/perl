#!/usr/bin/perl -w
# File Name: ch9ex2.pl
# Author: Yi Zhu
# Date: 2015/06/02
# Object: Modify a copy of a text file. Replace all fred with
# Larry(case insensitive).
use strict;
use 5.014;

foreach (@ARGV)
{
    open(my $FI, "<", $_) || die("Cannot open the file: $!");
    open(my $FO, ">", "$_\.out") || die("Cannot open the file: $!");
    while(<$FI>)
    {
	select $FO;
	s/fred/Larry/ig;
	print;
    }
    close $FO;
    close $FI;
}
