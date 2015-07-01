#!/usr/bin/perl -w
# Program Name: ch4ex3ans.pl
# Date: 2015/05/20
# Object: Official answer for chapter 4 example 3.
use strict;

sub total
{
	my $sum; #private variable
	foreach (@_)
	{
		$sum += $_;
	}
	$sum;
}

sub average
{
	if(@_ == 0) { return; }
	my $count = @_;
	my $sum = total(@_);
	$sum/$count;
}

sub above_average
{
	my $average = average(@_);
	my @list;
	foreach my $element (@_)
	{
		if($element > $average)
		{
			push @list, $element;
		}
	}
	@list;
}
#test code
my @fred = above_average(1..10);
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";
my @barney = above_average(100, 1..10);
print "\@barney is @barney\n";
print "(Should be just 100)\n";
