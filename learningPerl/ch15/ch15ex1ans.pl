#!/usr/bin/perl -w
# File Name: ch15ex1ans.pl
# Date: 2015/06/15
# Object: Chapter 15 exercises official answer
use strict;
use 5.016;

my $Verbose = $ENV{VERBOSE} // 1;
my $secret = int(1 + rand 100);

print "Don't tell anyone, but the secret number is $secret.\n" if $Verbose;

LOOP: {
	print "Please enter a guess from 1 to 100: ";
	chomp(my $guess = <STDIN>);
	
	my $found_it = 0;
	given($guess)
	{
		when(! /^\d+$/) { say "Not a Number" }
		when($_ > $secret) { say "Too High!" }
		when($_ < $secret) { say "Too Low!" }
		default { say "Just right!"; $found_it++ }
	}
	
	last LOOP if $found_it;
	redo LOOP;
}
