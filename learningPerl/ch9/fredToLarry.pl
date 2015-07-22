#!/usr/bin/perl -w
# File Name: fredToLarry.pl
# Author: Yi Zhu
# Date: 2015/07/22
# Object: ch9ex2 - Modify a copy of a text file. Replace all fred with
# Larry(case insensitive).
# Version: 1.10 - file name changes from ch9ex2.pl to fredToLarry.pl
#               - add a $USAGE
#               - add an else part for error display
use strict;
use 5.014;

my $USAGE = "Usage: $0 filenames";

if(@ARGV > 0)
{
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
}
else
{
    say "Error! There is no input. $USAGE";
}
