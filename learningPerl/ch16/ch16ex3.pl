#!/usr/bin/perl -w
# File Name: ch16ex3.pl
# Author: Yi Zhu
# Date: 2015/06/16
# Object: Write a program to parse the output of the date command and
# determine the current date. If it's weekday, print 'get to work'. Otherwise,
# print 'go play'.
use strict;
use 5.016;

$_ = `date`;
my($date, $rest) = /(\S+)\s+(.*)/;

my @weekend = qw(SAT SUN);
$date ~~ @weekend?say "go play":say "get to work";
