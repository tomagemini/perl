#!/usr/bin/perl -w
# File Name: ch9eg3.pl
# Date: 2015/05/28
# Object: Official book examples for Chapter 9
use strict;
use 5.014;

say 'Nondestructive Substitutions';

my $original = 'Fred ate 1 rib';
my $copy = $original;
$copy =~ s/\d+ ribs?/10 ribs/;
say "Original is: $original";
say "Copy is: $copy";
# you can combine the previous two lines into one:
#(my $copy = $original) =~ s/\d+ rib?/10 ribs/;
# or even without the parantheses by using /r
#my $copy = $original =~ s/\d+ rib?/10 ribs/r;
