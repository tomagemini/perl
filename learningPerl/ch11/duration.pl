#!/usr/bin/perl -w
# File Name: duration.pl
# Author: Yi Zhu
# Date: 2015/07/23
# Object: ch11ex2 - Calculate and print the interval of a given date to
#         current date. 
# Version: 1.10 - file name changes from ch11ex2.pl to duration.pl
use strict;
use 5.016;
use DateTime;

my $USAGE = "Usage: $0 year month day: $!";

if(@ARGV != 3)
{
    say $USAGE;
    exit 1;
}

#say "@ARGV";

my $year = $ARGV[0];
my $month = $ARGV[1];
my $day = $ARGV[2];

my $dt1 = DateTime->now;
my $dt2 = DateTime->new(
    year => $year,
    month => $month,
    day => $day
    );
say "The first date is $dt1";
say "The second date is $dt2";
my $duration = $dt2 - $dt1;
my @units = $duration->in_units(qw(years months days));
printf "%d years, %d months, and %d days\n", @units;
