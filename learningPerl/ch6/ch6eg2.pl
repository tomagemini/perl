#!/usr/bin/perl -w
# Program Name: ch6eg2.pl
# Date: 2015/05/25
# Object: Chapter 6 book examples
use strict;
use 5.010;

say "The hash as a whole";

my %some_hash = ('foo', 35, 'bar', 12.4, 2.5, 'hello', 'wilma',
				 1.72e30, 'betty', "bye\n");

say "The value of the hash (in a list context) is simply list of
key-value pairs";

my @any_array = %some_hash;

print "@any_array\n";
#might give something like this:
#betty bye (and a newline) wilma 1.72e+30 foo 35 2.5 hello bar 12.4

say "The big arrow";
my %last_name = 
( #a hash may be a lexical variable
  'fred' => 'flintstone',
  'dino' => undef,
  #you may omit the quote marks one some hash keys when you use the
  #fat comma, which automatically quotes the values to its left:
  barney => 'rubble',
  betty => 'rubble',
);

#say %last_name;
