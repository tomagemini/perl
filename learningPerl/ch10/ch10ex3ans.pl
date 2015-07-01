#!/usr/bin/perl -w
# File Name: ch10ex3ans.pl
# Date: 2015/06/03
# Object: Chapter 10 official exercise answers
use strict;
use 5.014;

$ENV{ZERO} = 0;
$ENV{EMPTY} = '';
$ENV{UNDEFINED} = undef;

my $longest = 0;
foreach my $key (keys %ENV)
{
    my $key_length = length($key);
    $longest = $key_length if $key_length > $longest;
}

foreach my $key (sort keys %ENV)
{
    printf "%-${longest}s %s\n", $key, $ENV{$key} // "(undefiend)";
}
