#!/usr/bin/perl -w
# File Name: ch6ex2ans.pl
# Date: 2015/05/26
# Object: Official answer for Chapter 6 exercises

use strict;
use 5.014;

my(@words, %count, $word);
chomp(@words = <STDIN>);

foreach $word (@words)
{
    $count{$word} += 1;
}

foreach $word (sort keys %count)
{
    print "$word was seen $count{$word} times.\n";
}
