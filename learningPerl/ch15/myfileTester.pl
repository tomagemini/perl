#!/usr/bin/perl -w
# File Name: myfileTester.pl
# Author: Yi Zhu
# Date: 2015/07/28
# Object: ch15ex3 - Using for-when to go through all files on command line and
# test if each of the file is readable, writable, or executable.
# Version: 1.10 - file name changes from ch15ex3.pl to myfileTester.pl
use strict;
use 5.016;

my $USAGE = "Usage: $0 filenames.";
if(@ARGV < 1)
{
	say $USAGE;
	exit 1;
}
for (@ARGV)
{
	say;
	when(-r) { say "Readable"; continue}
	when(-w) { say "Writable"; continue}
	when(-x) { say "Executable"; continue}
	default { say "Test for $_ ends." }
}
