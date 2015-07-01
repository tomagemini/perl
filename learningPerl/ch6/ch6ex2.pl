#!/usr/bin/perl -w
# File Name: ch6ex2.pl
# Author: Yi Zhu
# Date: 2015/05/26
# Object: Get names from user and count the times of appearance for
# each name.
use strict;
use 5.014;

say "Please enter the names, one per line(use <Ctrl>-D to end>:";
chomp(my @names = <>);
#my @names = qw(fred barney fred dino wilma fred);
my %nameHash;
foreach (@names)
{
    if(exists $nameHash{$_})
    {
	$nameHash{$_} += 1;
    }
    else
    {
	$nameHash{$_} = 1;
    }
}

foreach my $key (sort keys %nameHash)
{
    say "$key => $nameHash{$key}";
}
