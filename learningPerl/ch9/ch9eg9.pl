#!/usr/bin/perl -w
# File Name: ch9eg9.pl
# Date: 2015/06/01
# Object: Official book examples for Chapter 9
use strict;
use 5.014;

say "Matching Multiple-Line Text";

#/m regex option let anchors to match the internal new lines
$_ = "I'm much better\nthan Barney is\nat bowling,\nWilma.\n";
print "Found 'Wilma' at start of line\n" if /^Wilma\b/im;

open FILE, "test.pl" or die "Can't open test.pl: $!";
my $lines = join '', <FILE>;
say $lines;
$lines =~ s/^/test.pl: /gm;
say "$lines";
