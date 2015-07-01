#!/usr/bin/perl -w
# Program Name: ch5ex3ans.pl
# Date: 2015/05/25
# Object: Official answer for chapter 5 example 3.
use strict;
use 5.010;

print "What column width would you like? ";
chomp(my $width = <STDIN>);

print "Enter some lines, then press Ctrl-D:\n"; #or Ctrl-Z
chomp(my @lines = <STDIN>);

print "1234567890" x (($width+9)/10), "\n"; #rule line to column as needed

foreach (@lines)
{
	printf "%${width}s\n", $_;
}
