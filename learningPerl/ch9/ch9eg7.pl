#!/usr/bin/perl -w
# File Name: ch9eg7.pl
# Date: 2015/06/01
# Object: Official book examples for Chapter 9
use strict;
use 5.014;

say 'm// in List Context';

$_ = "Hello there, neighbour!";
my($first, $second, $third) = /(\S+) (\S+), (\S+)/;
print "$second is my $third\n";

#The /g modifier on m// will capture all the pattern match with a
#parantheses closure
my $text = 'Fred dropped a 5 ton granite block on Mr. Slate';
say "Original is: $text";
my @words = ($text =~ /([a-z]+)/ig);
say "Result should be: Fred dropped a ton granite block on Mr Slate";
print "Result: @words\n";

#if there is more than one parantheses, it will return all matches as
#a hash
my $data = "Barney Rubble Fred Flintstong Wilma Flintstone";
say "Data is: $data";
my %last_name = ($data =~ /(\w+)\s+(\w+)/g);
say "The match hash is:";
while(my ($key, $value) = each %last_name)
{
    say "$key => $value";
}
