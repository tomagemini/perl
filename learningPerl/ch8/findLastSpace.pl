#!/usr/bin/perl -w
# File Name: findLastSpace.pl
# Author: Yi Zhu
# Date: 2015/07/21
# Object: ch8ex6 - write a pattern to match the line end with a whitesapce and
# add a marker character at the end of output line
# Version: 1.10 - add a $USAGE
use strict;
use 5.014;

my $USAGE = "Usage: $0 inputs.";

if(@ARGV > 0)
{
	while(<>)
	{ # take one input line at a time
		chomp;
		if(/\s$/s)
		{
			print "$_%\n";
		}
		else
		{
			print "No match: |$_|\n";
		}
	}
}
else
{
    say "Error! There is no input. $USAGE";
}
