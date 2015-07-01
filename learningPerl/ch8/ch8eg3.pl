#!/usr/bin/perl -w
# File Name: ch8eg3.pl
# Date: 2015/05/26
# Object: Official example for Chapter 8
use strict;
use 5.014;

say "The Match Variables";
$_ = "Hello there, neighbour";
if(/\s([a-zA-Z]+),/)
{ # capture the word between space and comma
	print "the word was $1\n"; # the word was there
}

if(/(\S+) (\S+), (\S+)/)
{
	print "words were $1 $2 $3\n";
}

my $dino = "I fear that I'll be extinct after 1000 years.";
if($dino =~ /([0-9]*) years/)
{
	print "That said '$1' years.\n"; #1000
}

$dino = "I fear that I'll be extinct after a few million years.";
if($dino =~ /([0-9]*) years/)
{
	print "That said '$1' years.\n"; # empty string
}
