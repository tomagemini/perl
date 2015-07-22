#!/usr/bin/perl -w
# File Name: addCopyright.pl
# Author: Yi Zhu
# Date: 2015/07/22
# Object: ch9ex4 - A program to add a line after the shebang
# Version: 1.10 - add a $USAGE
#               - modified else part for error inputs
#               - filename changes from ch7ex3.pl to showCap.pl
use strict;
use 5.014;

my $USAGE = "Usage: $0 inputs.";

if(@ARGV > 0)
{
	$^I = ".bak";
	my $str = "## Copyright (c) 2015 by Yi Zhu\n";
	while(<>)
	{
		s/(^#!.*\n)$/$1$str/i;
		print;
	}
}
else
{
    say "Error! There is no input. $USAGE";
}
