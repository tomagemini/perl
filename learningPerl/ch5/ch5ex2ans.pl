#!/usr/bin/perl -w
# Program Name: ch5ex2ans.pl
# Date: 2015/05/25
# Object: Official answer for chapter 5 example 2.
use strict;
use 5.010;

print "Enter some lines, then press Ctrl-D:\n"; #or Ctrl-Z
chomp(my @lines = <STDIN>);

print "1234567890" x 7, "12345\n"; #rule line to column 75

my $format = "%20s\n" x @lines;
printf $format, @lines;
