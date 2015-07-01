#!/usr/bin/perl -w
# File Name: ch8ex6.pl
# Author: Yi Zhu
# Date: 2015/05/27
# Object: write a pattern to match the line end with a whitesapce and
# add a marker character at the end of output line
use strict;
use 5.014;

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
