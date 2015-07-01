#!/usr/bin/perl -w
# Program Name: ch6eg4.pl
# Date: 2015/05/25
# Object: Chapter 6 book examples
use strict;
use 5.010;

say "Typical use of a hash";

my %books;
$books{fred} = 3;
$books{wilma} = 1;
$books{betty} = 0; #no books currently checked out
$books{pebbles} = undef; #no books EVER checked out; a new libaray card

say "The exists function";
if(exists $books{fred})
{
	print "Hey, there's a libaray card for fred!\n";
}

say "The delete function";
my $person = 'pebbles';
delete $books{$person}; #Revoke the libaray card for $person

say "Hash element interpolation";
foreach $person (sort keys %books) #each patron, in order
{
	print "$person has $books{$person} items\n"; #fred has 3 items
}
