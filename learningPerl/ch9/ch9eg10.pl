#!/usr/bin/perl -w
# File Name: ch9eg10.pl
# Date: 2015/06/01
# Object: Official book examples for Chapter 9
use strict;
use 5.014;

say "Updating Many Files";

chomp(my $date = `date`);
$^I = ".bak";

while(<>)
{
    s/^Author:.*/Author: Randal L. Schwartz/;
    s/^Phone:.*\n//;
    s/^Date:.*/Date: $date/;
    print;
}
