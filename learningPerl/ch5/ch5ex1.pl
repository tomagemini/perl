#!/usr/bin/perl -w
# Program Name: ch5ex1.pl
# Author: Yi Zhu
# Date: 2015/05/24
# Object: Reverse all the lines of the input file.
use strict;
use 5.010;

my $usage = "USAGE: ch5ex1.pl filenames";
if(@ARGV < 1)
{
	print "USAGE($!)\n";
	exit 1;
}

my @files = reverse @ARGV;

foreach (@files)
{
	open my $FH, '<', $_;
	my @array;
	while(<$FH>)
	{
		push @array, $_;
	}
	close $FH;
	print reverse @array;
}
