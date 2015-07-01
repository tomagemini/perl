#!/usr/bin/perl -w
# File Name: ch10eg2.pl
# Date: 2015/06/03
# Object: Chapter 10 book examples
use strict;
use 5.014;

say "Loop Control: next";
# Analyze words in the input file or files

my %count;
my ($total, $valid) = (0,0);

while(<>)
{
    foreach (split) # break $_ into words, assign each to $_ in turn
    {
	$total++;
	next if /\W/; # strange words skip the remainder of the loop
	$valid++;
	$count{$_}++; # count each separate word
	## next comes here ##
    }
}

print "total things = $total, valid words = $valid\n";
foreach my $word (sort keys %count)
{
    print "$word was seen $count{$word} times.\n";
}
