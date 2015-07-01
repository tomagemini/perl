#!/usr/bin/perl -w
# File Name: ch9ex3.pl
# Author: Yi Zhu
# Date: 2015/06/02
# Object: Modify a copy of a text file, and switch all fred and wilma
use strict;
use 5.014;

foreach (@ARGV)
{
    open(my $FI, "<", $_) || die("Cannot open the file: $!");
    open(my $FO, ">", "$_\.out") || die("Cannot open the file: $!");
    while(<$FI>)
    {
	select $FO;
	s/fred/%afred%/ig;
	s/wilma/fred/ig;
	s/%afred%/wilma/ig;
	print;
    }
    close $FO;
    close $FI;
}
