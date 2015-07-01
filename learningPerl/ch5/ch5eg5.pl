#!/usr/bin/perl -w
# Program Name: ch5eg5.pl
# Date: 2015/05/24
# Object: Chapter 5 book example.
use strict;
use 5.010;

print "This example uses variable \$ARGV:\n";

@ARGV = qw(larry moe curly);
while(<>)
{
	chomp;
	print "It was $_ that I saw in some stoogle-like file!\n";
}
