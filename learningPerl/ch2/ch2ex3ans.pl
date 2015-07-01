#!/usr/bin/perl -w
# Program Name: ch2ex3ans.pl
# Author: Learning Perl
# Object: Official Answer of chapter 2 example 3.
$pi = 3.141592654;
print "What is the radius? ";
chomp($radius = <STDIN>);
$circ = 2 * $pi * $radius;
if($radius < 0)
{
	$circ = 0;
}
print "The circumference of a circle of radius 12.5 is $circ.\n";
