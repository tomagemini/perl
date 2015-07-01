#!/usr/bin/perl -w
# File Name: match1toN.pl
# Author: Yi Zhu
# Date: 2015/06/22
# Object: Ask for two integer inputs. One is the number for max sum and
# another is the number of items allowed for the sum. Then, find the best
# match for the number in terms of items of sum in the internal array.
use strict;
use 5.014;

say 'Please enter your number: ';
chomp(my $max = <STDIN>);
# say 'How many elements allowed to calculate the sum: ';
# chomp(my $count = <STDIN>);
my @a = qw/11 5 13 2 9 7 4 6 9 8 3 5/;

my $index = 0;
my $sum = 0;

say "The number is $max";
say "Items allowed: $count";
@a = sort { $a <=> $b } @a;
say "The internal array is @a";



# foreach (@a)
# {
# 	$max -= $_;
# 	$sum += $_;
# 	$index += 1;
# 	last if($max < $_);
# }

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
