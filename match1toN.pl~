#!/usr/bin/perl -w
# File Name: max1toN.pl
# Author: Yi Zhu
# Date: 2015/06/22
# Object: Find how many items in an array sum up to the set number
use strict;
use 5.014;

say 'Please enter your number: ';
chomp(my $aNum = <STDIN>);
my @a = qw/11 5 13 2 9 7 4 6 9 8 3 5/;

my $index = 0;
my $sum = 0;

say "The number is $aNum";
@a = sort { $a <=> $b } @a;
say "The internal array is @a";
foreach (@a)
{
	$aNum -= $_;
	$sum += $_;
	$index += 1;
	last if($aNum < $_);
}
# for($index = 0; $index < @a; $index += 1)
# {
# #	say "Element [$index] is: $a[$index]";
# 	$aNum -= $a[$index];
# #	say "The remain now is: $aNum";
# 	$sum += $a[$index];
# 	last if($aNum < $a[$index]);

# #	say "The sum including elements[$index] is: $sum";
# }
#$index += 1;
say "The sum of $index elements is: $sum";
