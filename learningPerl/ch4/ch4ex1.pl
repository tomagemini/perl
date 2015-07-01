#!/usr/bin/perl -w
# Program Name: ch4ex1.pl
# Author: Yi Zhu
# Date: 2015/05/20
# Object: Write a sub to calculate and return the total
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
my @fred = qw{1 3 5 7 9};
my $fred_total = total(@fred);
print "The total of \@fred is $fred_total.\n";
print "Enter some numbers on seperate lines:\n";
my $user_total = total(<>);
print "The total of those numbers is $user_total.\n";
