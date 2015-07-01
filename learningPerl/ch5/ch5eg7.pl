#!/usr/bin/perl -w
# Program Name: ch5eg7.pl
# Date: 2015/05/24
# Object: Chapter 5 book example.
use strict;
use 5.010;

print "This example is for formatted output with printf:\n";

print "First example for string and number\n";
my ($user, $days_to_die) = ('Yi', 300);
printf "Hello, %s; your password expires in %d days!\n", $user,
	$days_to_die;

print "Second example for automatically chooses numbers(%g):\n";
printf "%g %g %g\n", 5/2, 51/17, 51 ** 17; #2.5 3 1.0683e+29 

print "Third example for truncate as needed: \n";
printf "in %d days!\n", 17.85; #truncate to 17 days

print "Fourth example for columnar data:\n";
printf "%6d\n", 42; #output like ````42(` stands for space)
printf "%2d\n", 2e3+1.95; #2001
printf "%10s\n", "wilma"; #looks like `````wilma
printf "%-15s\n", "filintstone"; #negative number for left-justified

print "Fifth example for floating-point rounds off:\n";
printf "%12f\n", 6 * 7 + 2/3; #looks like ```42.666667
printf "%12.3f\n", 6 * 7 + 2/3; #looks like ``````42.667
printf "%12.0f\n", 6 * 7 + 2/3; #looks like ``````````43
printf "Monthly interest rate: %.2f%%\n", 5.25/12; #looks like "0.44%"

print "Sixth example for array with printf:\n";
my @items = qw(wilma dino pebbles);
my $format = "The items are:\n" . ("%10s\n" x @items);
##print "the format is >>$format<<\n"; #for debugging
printf $format, @items;
