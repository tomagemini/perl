#!/usr/bin/perl -w
# File Name: numSort.pl
# Author: Yi Zhu
# Date: 2015/07/23
# Object: ch14ex1 - Sort all input numbers from command line and print in
# seperated lines.
# Version: 1.10 - file name changes from ch14ex1.pl to numSort.pl
use strict;
use 5.016;

my $USAGE = "Usage: $0 numbers.";
if(@ARGV < 2)
{
    say $USAGE;
    exit 1;
}

my $length = 0;
foreach (@ARGV)
{
    $length = length($_) if length($_) > $length;
}

my @result = sort {$a <=> $b} @ARGV;
#printf "%-d\n", sort {$a <=> $b} @ARGV;
foreach (@result)
{
    printf "%${length}g\n", $_;
}
