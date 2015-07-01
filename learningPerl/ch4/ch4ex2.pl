#!/usr/bin/perl -w
# Program Name: ch4ex2.pl
# Author: Yi Zhu
# Date: 2015/05/20
# Object: Write a sub to calculate and return the total(test:sum of 1 to 1000).
use strict;

sub total(@)
{
	my $total = 0;
	foreach (@_)
	{
		$total += $_;
	}
	$total;
}
#test code
print total(1..1000), "\n";
