#!/usr/bin/perl -w
# File Name: ch14ex1ans.pl
# Date: 2015/06/11
# Object: Chapter 14 official answers.
use strict;
use 5.016;

my @numbers;
push @numbers, split while <>;
foreach (sort {$a <=> $b} @numbers)
{
    printf "%20g\n", $_;
}
