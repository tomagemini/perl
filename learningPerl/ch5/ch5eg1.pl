#!/usr/bin/perl -w
# Program Name: ch5eg1.pl
# Date: 2015/05/24
# Object: Chapter 5 book example.
use strict;
use 5.010;

print "This example uses \$line:\n";
while(defined(my $line = <STDIN>))
{
	print "I saw $line";
}
