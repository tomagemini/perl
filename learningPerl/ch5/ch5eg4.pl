#!/usr/bin/perl -w
# Program Name: ch5eg4.pl
# Date: 2015/05/24
# Object: Chapter 5 book example.
use strict;
use 5.010;

print "This example is chomp with variable \$_:\n";
while(<>)
{
	chomp;
	print "It was $_ that I saw!\n";
}
