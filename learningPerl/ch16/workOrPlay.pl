#!/usr/bin/perl -w
# File Name: workOrPlay.pl
# Author: Yi Zhu
# Date: 2015/07/28
# Object: ch16ex3 - Write a program to parse the output of the date command and
# determine the current date. If it's weekday, print 'get to work'. Otherwise,
# print 'go play'.
# Version: 1.10 - file name changes from ch16ex3.pl to workOrPlay.pl
use strict;
use 5.016;

$_ = `date`;
my($date, $rest) = /(\S+)\s+(.*)/;

my @weekend = qw(SAT SUN);
$date ~~ @weekend?say "go play":say "get to work";
