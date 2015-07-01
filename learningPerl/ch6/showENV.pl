#!/usr/bin/perl -w
# File Name: showENV.pl
# Author: Yi Zhu
# Date: 2015/06/18
# Object: ch6ex3 - Print out %ENV in format of key-value pairs
# Version: 1.01 - filename changes from ch6ex3.pl to showENV.pl
use strict;
use 5.014;

my ($klength, $vlength) = (0, 0);

while((my ($key, $value)) = each %ENV)
{
    $klength = length($key) > $klength?length($key):$klength;
    $vlength = length($key) > $vlength?length($value):$vlength;
}

foreach (sort keys %ENV)
{
    printf "%-${klength}s  %-${vlength}s\n", $_, $ENV{$_};
}
