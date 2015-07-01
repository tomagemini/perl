#!/usr/bin/perl -w
# File Name: ch9ex4.pl
# Author: Yi Zhu
# Date: 2015/06/02
# Object: A program to add a line after the shebang
use strict;
use 5.014;

$^I = ".bak";
my $str = "## Copyright (c) 2015 by Yi Zhu\n";
while(<>)
{
    s/(^#!.*\n)$/$1$str/i;
    print;
}
