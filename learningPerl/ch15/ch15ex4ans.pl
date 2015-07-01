#!/usr/bin/perl -w
# File Name: ch15ex4ans.pl
# Date: 2015/06/15
# Object: Chapter 15 exercises official answer
use strict;
use 5.016;

say "Checking the number <$ARGV[0]>";

given($ARGV[0])
{
	when(! /^\d+$/) { say "Not a number!" }
	my @divisors = divisors($_);
	my @empty;
	when(@divisors ~~ @empty) { say "Number is prime" }
	default { say "$_ is divisible by @divisors" }
}

sub divisors
{
	my $number = shift;
	my @divisors = ();
	foreach my $divisor (2 .. $number/2)
	{
		push @divisors, $divisor unless $number % $divisor;
	}
	@divisors;
}
