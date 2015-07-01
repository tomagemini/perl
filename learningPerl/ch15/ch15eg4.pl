#!/usr/bin/perl -w
# File Name: ch15eg4.pl
# Date: 2015/06/15
# Object: Chapter 15 book examples.
use strict;
use 5.016;

say "Dumb Matching";

given($ARGV[0])
{
    when('Fred') # smart
    {
	say 'Name is Fred';
	continue;
    }
    when($_ =~ /^Fred/) # dumb
    {
	say 'Name starts with Fred';
	continue;
    }
    when(/fred/i) # smart
    {
	say 'Name has fred in it';
    }
    default
    {
	say "I don't see a Fred";
    }
}
