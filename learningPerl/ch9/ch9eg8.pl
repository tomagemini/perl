#!/usr/bin/perl -w
# File Name: ch9eg8.pl
# Date: 2015/06/01
# Object: Official book examples for Chapter 9
use strict;
use 5.014;

say "Nongreedy Qualifiers";

my $str = 'ababbba';
say "Original string is: $str";
say 'Replacing a(.*)a for c$1c with greedy qualifier is:';
(my $r1 = $str) =~ s/a(.*)a/c$1c/;
say $r1;
say 'Replacing a(.*?)a for c$1c with nongreedy qualifier is:';
(my $r2 = $str) =~ s/a(.*?)a/c$1c/;
say $r2;
