#!/usr/bin/perl -w
# File Name: ch15ex4.pl
# Author: Yi Zhu
# Date: 2015/06/15
# Object: Using given and smart matching to print all divisors of a number on
# command line, or a prime. If the argument is not a number, give an error and
# stop calculating.
use strict;
use 5.016;

my $USAGE = "Usage: $0 number.";
if(@ARGV < 1)
{
	say $USAGE;
	exit 1;
}

sub divisors($)
{
	my $number = shift;
	my @divisors = ();
	foreach my $divisor (2 .. ($number / 2))
	{
		push @divisors, $divisor unless $number % $divisor;
	}
	@divisors;
}

given($ARGV[0])
{
	my @result = divisors($_);
	when(/\D+/) { say "Not a Number!"; }
	when(@result ~~ my @empty) { say "It's a prime"; }
	default { say "@result"; }
}
