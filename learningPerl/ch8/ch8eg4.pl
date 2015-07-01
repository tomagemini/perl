#!/usr/bin/perl -w
# File Name: ch8eg4.pl
# Date: 2015/05/26
# Object: Official example for Chapter 8
use strict;
use 5.014;

say "The Presistence of Captures";

my $wilma = '123';
$wilma =~ /([0-9]+)/; # Succeeds, $1 is 123
$wilma =~ /([a-z][A-Z]+)/; # BAD! Untested match result
print "Wilma's word was $1... or was it?\n"; # Still 123!

if($wilma =~ /([a-zA-Z]+)/)
{
	print "Wilma's word was $1.\n";
}
else
{
	print "Wilma doesn't have a word.\n";
}
