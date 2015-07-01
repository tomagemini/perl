#!/usr/bin/perl -w
# File Name: ch12ex3.pl
# Author: Yi Zhu
# Date: 2015/06/09
# Object: Use stacked file test operators to list all files named on
# the command line that are readable, writable, and owned by you.
use strict;
use 5.016;

my $USAGE = "Usage: $0 filenames";
say $USAGE;exit 1 if(@ARGV < 1);

while(@ARGV)
{
    $_ = shift;
    say "The file '$_' is readable, writable, and owned by me."
	if(-r -w -o $_);
}
