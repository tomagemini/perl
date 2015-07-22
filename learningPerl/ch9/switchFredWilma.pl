#!/usr/bin/perl -w
# File Name: switchFredWilma.pl
# Author: Yi Zhu
# Date: 2015/07/22
# Object: ch9ex3 - Modify a copy of a text file, and switch all fred and wilma
# Version: 1.10 - add a $USAGE
#               - modified else part for error inputs
#               - filename changes from ch9ex3.pl to switchFredWilma.pl
use strict;
use 5.014;

my $USAGE = "Usage: $0 inputs.";

if(@ARGV > 0)
{
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
}
else
{
    say "Error! There is no input. $USAGE";
}
