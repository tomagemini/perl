#!/usr/bin/perl -w
# File Name: fileTester.pl
# Author: Yi Zhu
# Date: 2015/07/23
# Object: ch12ex1 - Test file(s) on command line for existence, readable,
# writable, and executable.
# Version: 1.10 - file name changes from ch12ex1.pl to fileTester.pl
#               - add a $USAGE
#               - add an else part to display error message
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
if(@ARGV > 0)
{
	while(@ARGV)
	{
		$_ = shift;
		say testFile(shift);
	}
}
else
{
    say "Error! There is no input. $USAGE";
}

