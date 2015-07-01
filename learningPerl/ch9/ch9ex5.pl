#!/usr/bin/perl -w
# File Name: ch9ex5.pl
# Author: Yi Zhu
# Date: 2015/06/02
# Object: A program to add a line after the shebang. But it won't add
# to any file already has that line.
use strict;
use 5.014;
########## WRONG ANSWER! SEE ch9ex5ans.pl ########
$^I = ".bak";
my $str = "## Copyright (c) 2015 by Yi Zhu\n";
while(<>)
{
    if(/^## Copyright/)
    {
	print;
    }
    else
    {
	s/(^#!.*\n)$/$1$str/i;
	print;
    }
}
