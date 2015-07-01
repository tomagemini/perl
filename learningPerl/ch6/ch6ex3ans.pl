#!/usr/bin/perl -w
# File Name: ch6ex3ans.pl
# Date: 2015/05/26
# Object: Official answer for Chapter 6 exercises

use strict;
use 5.014;

my $longest = 0;
foreach my $key (keys %ENV)
{
    my $key_length = length($key);
    $longest = $key_length if $key_length > $longest;
}

foreach my $key (sort keys %ENV)
{
    printf "%-${longest}s %s\n", $key, $ENV{$key};
}
