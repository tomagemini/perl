#!/usr/bin/perl -w
# File Name: ch14eg2.pl
# Date: 2015/06/11
# Object: Chapter 14 book examples
use strict;
use 5.016;

say "Manipulating a Substring with substr";

#syntax: my $part = substr($string, $initial_position, $length);

my $mineral = substr("Fred J. Flintstone", 8, 5); # Flint
my $rock = substr "Fred J. Flintstone", 13, 1000; # stone
my $pebble = substr "Fred J. Flintstone", 13; # stone

say "Fred J. Flintstone";
say "substr at index 8 with length 5 is: $mineral";
say "substr at index 13 with length 1000 is: $rock";
say "substr at index 13 without 3rd parameter is $pebble";

my $str = "some very long string";
my $out = substr($str, -3, 2); # in
say $str;
say "substr at index -3(3 characters backward) with length 2 is: $out";

my $long = "some very very long string";
my $right = substr($long, index($long, 'l'));
say $long;
say "substr at index of the first occurence of 'l' without length is
$right";

my $string = "Hello, world!";
say $string;
say "Replacing 'Hello' with 'Goodbye' ......";
substr($string, 0, 5) = 'Goodbye'; # $string is now 'Goodbye, world!'
say $string;

substr($string, -20) =~ s/fred/barney/g;
#replace fred with barney in the last 20 character of the $string

#4th parameter for substr is replace string:
say "Replacing 'Goodbye' with 'Welcome' by using 4th parameter";
substr($string, 0, 7, 'Welcome');
say $string;
