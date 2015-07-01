#!/usr/bin/perl -w
# File Name: ch17eg6.pl
# Date: 2015/06/17
# Object: Chapter 17 book examples
use strict;
use 5.016;
use List::Util qw/first sum max shuffle max maxstr/;
use List::MoreUtils qw/none any all natatime mesh/;

say 'Fancier List Utilites';

my @characters = qw/fred Wilma betty barney dino pebbles wilma betty dino/;
# say @characters;
my $first_match = first { /\bwilma\b/i } @characters;
say $first_match;
my $total = sum(1..1000);
say "The sum of 1 to 1000 is: $total";
my @nums = (3, 5, 10, 4, 6);
my $max = max(@nums);
say "The max number in @nums is: $max";
my @str = qw/abbas joe sam robert teddy jerry/;
my $maxstr = maxstr(@str);
say "The max string in @str is : $maxstr";
my @shuffle = shuffle(1..100); # randomized order of elements
say "The randomized order of 1 to 100 is:";
say "@shuffle";
# You can check if no, any or all elements of a list match a condition
my @numbers = (3, 5, 89, 47, 99, 23, 76);
if(none {$_ > 100} @numbers)
{
	say 'No elements over 100';
}
if(any {$_ > 50} @numbers)
{
	say 'Some elements over 50';
}
elsif(all {$_ < 10} @numbers)
{
	say 'All elements are less than 10';
}

# If you want to deal with the list in groups of items, you can use the
# natatime (N at a time) to handle that for you:
my $iterator = natatime 3, @nums;
while(my @triad = $iterator->())
{
	say "Got @triad\n";
}

# If you want to combine two or more lists, you can use mesh to create a large
# list that interweaves all of the elements, even if the small arrays are not
# the same length
my @abc = 'a' .. 'z';
my @number = 1 .. 20;
my @large_array = mesh @abc, @number, @characters;
# say "@large_array";				
my $count = @large_array;
say $count;
# say "@large_array";
# my $tail = pop @large_array;
# say $tail;
my $c = 0;
foreach (@large_array)
{
	#$_ = $_ // 'undefined';
	say "$c\t$_";
	$c += 1;
}
my @array;
foreach (@large_array)
{
	push @array, $_ if($_);
}
say "@array";
