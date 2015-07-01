#!/usr/bin/perl -w
# File Name: ch12ex1.pl
# Author: Yi Zhu
# Date: 2015/06/08
# Object: Test file(s) on command line for existence, readable,
# writable, and executable.
use strict;
use 5.016;

sub testFile($)
{
    my $filename = $_;
    my $result = "This file $filename is ";
    return "The file $filename does not exist" unless -e $filename;

    $result .= -r $filename?"readable, ":"not readable, ";
    $result .= -w $filename?"writable, ":"not writable, ";
    $result .= -x $filename?"executable.":"not executable.";
    $result;
}

while(@ARGV)
{
    $_ = shift;
    say testFile(shift);
}
