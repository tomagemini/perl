#!/usr/bin/perl -w
# File Name: ch6ex3.pl
# Author: Yi Zhu
# Date: 2015/05/26
# Object: Print out %ENV in format

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
