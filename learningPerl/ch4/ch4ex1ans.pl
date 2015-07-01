#!/usr/bin/perl -w
# Program Name: ch4ex1ans.pl
# Date: 2015/05/20
# Object: Official answer for chapter 4 example 1.
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
my @fred = qw{1 3 5 7 9};
my $fred_total = total(@fred);
print "The total of \@fred is $fred_total.\n";
print "Enter some numbers on seperate lines:\n";
my $user_total = total(<STDIN>);
print "The total of those numbers is $user_total.\n";
