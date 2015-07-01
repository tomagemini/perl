#!/usr/bin/perl -w
# Program Name: ch4ex2ans.pl
# Date: 2015/05/20
# Object: Official answer for chapter 4 example 2.
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
#test code
print "The numbers from 1 to 1000 add up to ", total(1..1000), ".\n";
