#!/usr/bin/perl -w
# File Name: ch12ex2ans.pl
# Date: 2015/06/09
# Object: Chapter 12 official exercises answers
use strict;
use 5.016;

die "No file names supplied!\n" unless @ARGV;
my $oldest_name = shift @ARGV;
my $oldest_age = -M $oldest_name;

foreach (@ARGV)
{
    my $age = -M;
    ($oldest_name, $oldest_age) = ($_, $age) if $age > $oldest_age;
}

printf "The oldest file was %s, and it was %.1f days old.\n",
    $oldest_name, $oldest_age;
