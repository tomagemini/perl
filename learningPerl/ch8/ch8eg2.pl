#!/usr/bin/perl -w
# File Name: ch8eg2.pl
# Date: 2015/05/26
# Object: Official example for Chapter 8
use strict;
use 5.014;

say "The Binding Operator =~";
my $some_other = "I dream of betty rubble.";
if($some_other =~ /\brub/)
{
	print "Aye, there's the rub.\n";
}

say "Interpolating into Patterns";
my $what = 'larry';

while(<>)
{
	if(/\A($what)/)
	{ # pattern is anchored at beginning of string
		print "We saw $what in beginning of $_";
	}
}
