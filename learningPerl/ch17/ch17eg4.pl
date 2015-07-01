#!/usr/bin/perl -w
# File Name: ch17eg4.pl
# Date: 2015/06/17
# Object: Chapter 17 book examples
use strict;
use 5.016;
use autodie;

say 'autodie';
say 'die automatically for each open and works after 5.010';

say 'Picking Items from a List with grep';
say 'grep filters the condition for odd number in range of 1 to 100:';
my @odd_number = grep { $_ % 2 } 1..1000;
say "@odd_number";

open my $fh, '<', 'ch9d1.txt';
my @matching_lines = grep /\bfred\b/i, <$fh>;
say @matching_lines;
open my $fh, '<', 'ch9d1.txt';
my $lines_count = grep /\bfred\b/i, <$fh>;
say "Number of matched lines: $lines_count";
