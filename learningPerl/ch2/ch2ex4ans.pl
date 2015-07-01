#!/usr/bin/perl -w
# Program Name: ch2ex4ans.pl
# Author: Learning Perl
# Object: Official Answer of chapter 2 example 4.
print "Enter first number: ";
chomp($one = <STDIN>);
print "Enter second number: ";
chomp($two = <STDIN>);
$result = $one * $two;
print "The result is $result.\n";
