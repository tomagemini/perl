#!/usr/bin/perl -w
# File Name: ch15ex5ans.pl
# Date: 2015/06/15
# Object: Chapter 15 exercises official answer
use strict;
use 5.016;

say "Checking the number <$ARGV[0]>";

my $favorite = 42;

given($ARGV[0])
{
	when(! /^\d+$/) { say "Not a number!" }
	my @divisors = divisors($_);
	when(@divisors ~~ 2)
	{
		say "$_ is even";
		continue;
	}
	when(!(@divisors ~~ 2))
	{
		say "$_ is odd";
		continue;
	}
	when(@divisors ~~ $favorite)
	{
		say "$_ is divisible by my faovrite number";
		continue;
	}
	when($favorite)
	{
		say "$_ is my favorite number";
		continue;
	}

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

