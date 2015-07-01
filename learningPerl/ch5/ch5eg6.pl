#!/usr/bin/perl -w
# Program Name: ch5eg6.pl
# Date: 2015/05/24
# Object: Chapter 5 book example.
use strict;
use 5.010;

print "This example is for standard output:\n";

my $name = "Larry Wall";
print "Hello there, $name, did you know that 3+4 is ", 3+4, "?\n";

print "The example of print array:\n";
my @array = qw(larry moe curly);
print @array; #print a list of items
print "@array"; #print a string (containing an interpolated array)

print "The example of array with newlines:\n";
print "@array\n";
