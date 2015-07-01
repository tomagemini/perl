#!/usr/bin/perl -w
# File Name: ch13ex4.pl
# Author: Yi Zhu
# Date: 2015/06/09
# Object: Write a program like rm (don't need to include the options
# for rm).
use strict;
use 5.016;

my $USAGE = "Usage: $0 filenames!";
if(@ARGV < 1)
{
    say $USAGE;
    exit 1;
}
unlink or die "Cannot remove the file '$_': $!" foreach(@ARGV)
