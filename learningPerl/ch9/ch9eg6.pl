#!/usr/bin/perl -w
# File Name: ch9eg6.pl
# Date: 2015/06/01
# Object: Official book examples for Chapter 9
use strict;
use 5.014;


say "The join Function";

#The join function looks like this:
#my $result = join $glue, @pieces;

#join put the glue between the pieces and returns the resulting
#string:
my $x = join ":", 4, 6, 8, 10, 12;
say "\$x should be: 4:6:8:10:12";
say $x;

#there may be no glue if the list doesn't have at least two elements
my $y = join "foo", "bar";
say "should be just bar, since no foo glue is needed";
say $y;
my @empty; #empty array
my $empty = join "baz", @empty;
say "join empty array returns empty string since there are no items.";

#you can break up a string and put it back with different dilimiter:
my @values = split(/:/, $x);
say "\@values is @values";
my $z = join "-", @values;
say "\$z is a join of \@values with '-' as dilimiter: $z";
