#!/usr/bin/perl -w
# File Name: ch15eg2.pl
# Date: 2015/06/15
# Object: Chapter 15 book examples.
use strict;
use 5.016;

say "Smart Match Precedence";

say 'Table 15-1. Smart match operations for pairs of operands';

my %table151 = (
    'Example' => 'Type of match',
    '%a ~~ %b' => 'hash keys identical',
    '%a ~~ @b or @a ~~ %b' => 'at least one key in %a is in @b',
    '%a ~~ /Fred/ or /Fred/ ~~ %b' => 'at least one key matches pattern',
    '\'Fred\' ~~ %a' => 'exists $a{Fred}',
    '@a ~~ @b' => 'arrays are the same',
    '@a ~~ /Fred/' => 'at least one element in @a pattern',
    '$name ~~ undef' => '$name is not defined',
    '$name ~~ /Fred/' => 'pattern match',
    '123 ~~ \'123.0\'' => 'numeric equality with "numish" string',
    '\'Fred\' ~~ \'Fred\'' => 'string equality',
    '123 ~~ 456' => 'numeric equality',
    );

printf "%-25s\t%s\n", $_, $table151{$_} foreach (sort {$b cmp $a} 
keys %table151);
