#!/usr/bin/perl -w
# Program Name: ch5eg10.pl
# Date: 2015/05/24
# Object: Chapter 5 book example.
use strict;
use 5.010;

print "This example is output by say\n";

print "Hello\n";
print "Hello!", "\n";
say "Hello";

print "Example with say array:\n";
my @array = qw(a b c d);
say @array; # "abcd\n"
say "@array"; # "a b c b\n"

##say with filehandle
#say BEDROCK "Hello!";
