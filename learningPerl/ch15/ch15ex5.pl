#!/usr/bin/perl -w
# File Name: ch15ex5.pl
# Author: Yi Zhu
# Date: 2015/06/15
# Object: Using given and smart matching to print all divisors of a number on
# command line, or a prime. If the argument is not a number, give an error and
# stop calculating. It also should print if it's an even or odd or divisible by
# your favorite number.
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

my $flag = 1;
my $fav;
while($flag)
{
	say "Please enter your favorite number:";
	chomp($fav = <STDIN>);
	$flag = 0 unless $fav =~ /\D+/;
}

given($ARGV[0])
{
	my @result = divisors($_);
	when(/\D+/) { say "Not a Number!"; }
	when($fav ~~ @result)
	{
		say "It's divisible by my favorite number.";
		continue;
	}
	when(@result ~~ [])
	{ 
		say "It's a prime";
		say "It's a odd number";
	}
	when(2 ~~ @result)
	{
		say "It's an even number";
		continue;
	}
	when(!(2 ~~ @result))
	{
		say "It's a odd number";
		continue;
	}
	default { say "@result"; }
}
