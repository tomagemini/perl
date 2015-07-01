#!/usr/bin/perl -w
# File Name: wordcount.pl
# Author: Yi Zhu
# Date: 2015/06/18
# Object: ch6ex2 - Reads a series of words with one word per line until
# end-of-input. Then prints a summary of how man times each word was seen.
# Version: 1.01 - filename changes from ch16ex2.pl to wordcount.pl
use strict;
use 5.014;

say "Please enter the names, one per line(use <Ctrl>-D to end>:";
chomp(my @inputs = <>);
#my @inputs = qw(fred barney fred dino wilma fred);
my %count;
foreach (@inputs)
{
    if(exists $count{$_})
    {
	$count{$_} += 1;
    }
    else
    {
	$count{$_} = 1;
    }
}

foreach my $key (sort keys %count)
{
    say "$key => $count{$key}";
}
