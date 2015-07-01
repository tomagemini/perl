#!/usr/bin/perl -w
# File Name: ch11ex2ans1.pl
# Date: 2015/06/08
# Object: Chapter 11 official exercise answer
use strict;
use 5.016;
use DateTime;

my @t = localtime;
my $now = DateTime->new(
    year => $t[5] + 1900,
    month => $t[4] + 1,
    day => $t[3],
    );
my $then = DateTime->new(
    year => $ARGV[0],
    month => $ARGV[1],
    day => $ARGV[2],
    );

my $duration = $now - $then;
my @units = $duration->in_units(qw(years months days));
printf "%d years, %d months, and %d days\n", @units;
