#!/usr/bin/perl -w
# File Name: ch14ex3.pl
# Author: Yi Zhu
# Date: 2015/06/11
# Object: Write a program to look through a given string for every
# occurence of a given substring, printing out the positions where the
# substring is found.
use strict;
use 5.016;

say "Please enter a string:";
chomp(my $str = <STDIN>);
say "Please enter a substring to search:";
chomp(my $substr = <STDIN>);
my $index = index($str, $substr);
say $index?$index:"No match found!";
while($index && $index != -1)
{
    $index = index($str, $substr, $index + 1);
    say $index if($index > -1);
}
