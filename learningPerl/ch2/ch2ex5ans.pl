#!/usr/bin/perl -w
# Program Name: ch2ex5ans.pl
# Author: Learning Perl
# Object: Official Answer of chapter 2 example 5.
print "Enter a string: ";
$str = <STDIN>;
print "Enter a number of times: ";
chomp($num = <STDIN>);
$result = $str x $num;
print "The result is:\n$result.";
