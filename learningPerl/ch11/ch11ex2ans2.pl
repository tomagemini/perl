#!/usr/bin/perl -w
# File Name: ch11ex2ans2.pl
# Date: 2015/06/08
# Object: Chapter 11 official exercise answer
use strict;
use 5.016;
use DateTime;
use Time::Piece;

my $t = localtime;
my $now = DateTime->new(
    year => $t->year,
    month => $t->month,
    day => $t->day,
    );

my $then = DateTime->new(
    year => $ARGV[0],
    month => $ARGV[1],
    day => $ARGV[2],
    );

my $duration = $now - $then;
my @units = $duration->in_units(qw(years months days));
printf "%d years, %d months, and %d days\n", @units;
