#!/usr/bin/perl -w
# File Name: ch14ex2ans.pl
# Date: 2015/06/11
# Object: Chapter 14 official answers.
use strict;
use 5.016;

my %last_name = qw{
fred flintsonte Wilma Flintstone Barney Rubble betty rubble Bamm-Bamm
Rubble PEBBLES FLINTSTONE};

my @keys = sort {
    "\L$last_name{$a}" cmp "\L$last_name{$b}"
	or
	"\L{$a}" cmp "\L{$b}";
} keys %last_name;

foreach (@keys)
{
    print "$last_name{$_}, $_\n";
}
