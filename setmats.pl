#!/usr/bin/perl -w
# File Name: setmats.pl
# Author: Yi Zhu
# Date: 2015/06/21
# Object: A program to calculate the most efficient way to match one materials
# in one file to the acutal need of materials in another file. This program
# should accept two(2) input files. The first file should be the needs and the
# second file should be all the materials.
use strict;
use 5.016;
use autodie;

my $USAGE = "Usage: $0 file1(needs) file2(materials).";

sub myTokenizer(@)
{
#	say "array is @_";
	my @result;
	foreach (@_)
	{
		push(@result, split(/ /, $_));
	}
	@result;
}

if(@ARGV != 2)
{
	say "Error! The command line should have two files. $USAGE.";
	exit 1;
}

open my $fh1, '<', $ARGV[0];
open my $fh2, '<', $ARGV[1];

chomp(my @temp = <$fh1>);
say "needs are @temp";
my @needs = myTokenizer(@temp);
chomp(@temp = <$fh2>);
say "mats are @temp";
my @mats = myTokenizer(@temp);

my %matched;
foreach @needs
{
	if($_ ~~ @mats)
	{
		$matched{$_} = $_;
		delete
say foreach @mats;
