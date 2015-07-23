#!/usr/bin/perl -w
# File Name: myfileTester.pl
# Author: Yi Zhu
# Date: 2015/07/23
# Object: ch12ex3 - Use stacked file test operators to list all files named on
# the command line that are readable, writable, and owned by you.
# Version: 1.10 - file name changes from ch12ex3.pl to myfileTester.pl
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
