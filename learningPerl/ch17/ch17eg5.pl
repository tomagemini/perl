#!/usr/bin/perl -w
# File Name: ch17eg5.pl
# Date: 2015/06/17
# Object: Chapter 17 book examples
use strict;
use 5.016;

say 'Transforming Items from a List with map';

my @data = (4.75, 1.5, 2, 1234, 6.9456, 12345678.9, 29.95);
print "The money numbers are:\n", map { sprintf("%25s\n", $_) } @data;
print "Some powers of two are: \n", map "$_\t" . (2 ** $_) . "\n", 0..15;
