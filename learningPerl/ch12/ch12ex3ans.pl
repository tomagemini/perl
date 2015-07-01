#!/usr/bin/perl -w
# File Name: ch12ex3ans.pl
# Date: 2015/06/09
# Object: Chapter 12 official exercises answers
use strict;
use 5.016;

say "Looking for my files that are readable and writable";

die "No files specified!\n" unless @ARGV;

foreach my $file (@ARGV)
{
    say "$file is readable and writable" if -o -r -w $file;
}
