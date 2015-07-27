#!/usr/bin/perl -w
# File Name: myrm.pl
# Author: Yi Zhu
# Date: 2015/07/27
# Object: ch13ex4 - Write a program like rm (don't need to include the options
# for rm).
# Version: 1.10 - file name changes from ch13ex4.pl to myrm.pl
use strict;
use 5.016;

my $USAGE = "Usage: $0 filenames!";
if(@ARGV < 1)
{
    say $USAGE;
    exit 1;
}
unlink or die "Cannot remove the file '$_': $!" foreach(@ARGV)
