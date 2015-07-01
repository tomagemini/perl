#!/usr/bin/perl -w
# Program Name: ch5eg3.pl
# Date: 2015/05/24
# Object: Chapter 5 book example.
use strict;
use 5.010;

print "This example is chomp with variable \$line:\n";
while(defined(my $line = <>))
{
	chomp($line);
	print "It was $line that I saw!\n";
}
