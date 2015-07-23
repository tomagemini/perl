#!/usr/bin/perl -w
# File Name: oldestFile.pl
# Author: Yi Zhu
# Date: 2015/07/23
# Object: ch12ex2 - Find the oldest file on the command line
# Version: 1.10 - file name changes from ch12ex2.pl to oldestFile.pl
use strict;
use 5.016;

my $USAGE = "Usage: $0 filenames";
say $USAGE;exit 1 if(@ARGV < 1);

my $oldest;
while(@ARGV)
{
    $_ = shift;
    if(! $oldest)
    {
	$oldest = $_;
    }
    elsif(-C $_ > -C $oldest)
    {
	$oldest = $_;
    }
}

my $age = -C $oldest;
printf "The oldest file is %s and it was %.1f days old.\n", $oldest, $age;
