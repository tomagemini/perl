#!/usr/bin/perl -w
# File Name: ch12eg2.pl
# Date: 2015/06/08
# Object: Chapter 12 book examples
use strict;
use 5.016;

say "The localtime Function";

my $timestamp = 1180630098;
my $date = localtime $timestamp;
say "The date is: $date";
my ($sec, $min, $hour, $day, $mon, $year, $wday, $yday, $isdst) =
    localtime $timestamp;
say "year:$year month:$mon day:$day hour:$hour minute:$min
second:$sec weekday:$wday dayofyear:$yday isDST:$isdst";
my $now = gmtime;
say "Current universal(Greenwich Mean Time) timestamp as string is: $now";
