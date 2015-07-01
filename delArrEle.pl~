#!/usr/bin/perl -w
# File Name: test.pl
# Author: Yi Zhu
# Date: 2015/05/25
# Object: Test some perl commands
use strict;
use 5.014;

say "Testing array deletion";

my @a1 = qw/13 26 23 14 19 9 8/;
my @a2 = qw/9 23 14/;

my %h1;

foreach (@a2)
{
	if($_ ~~ @a1)
	{
		$h1{$_} = $_;
		my $index = 0;
		$index++ until $a1[$index] == $_;
		splice(@a1, $index, 1);
	}
}

say "a1 is @a1";
while(my($k, $v) = each %h1)
{
	say "$k => $v";
}
