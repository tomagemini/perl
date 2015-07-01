#!/usr/bin/perl -w
# File Name: delArrEle.pl
# Author: Yi Zhu
# Date: 2015/06/22
# Object: For two(2) arrays, find all the elements in the second array that
# also in the first array. Push the index of the elements in the second array
# with the match value in the first array. Then, empty all the matches in the
# second array.
use strict;
use 5.014;

say "Testing array deletion";

my @a1 = qw/13 26 23 14 19 9 8/;
my @a2 = qw/9 23 14/;

my %h1;
my $index2 = 0;

foreach (@a2)
{
	if($_ ~~ @a1)
	{
		$h1{$index2} = $_;
		$index2++;

		my $index1 = 0;
		$index1++ until $a1[$index1] == $_;
		splice(@a1, $index1, 1);
	}
	else
	{
		$index2++;
	}
}

say "a1 is @a1";
while(my($k, $v) = each %h1)
{
	say "$k => $v";
}
