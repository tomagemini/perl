#!/usr/bin/perl -w
# File Name: ch15eg5.pl
# Date: 2015/06/15
# Object: Chapter 15 book examples.
use strict;
use 5.016;

say 'Using when with Many Items';

my @names = qw(Fred Frederick Barney Alfred);

foreach (@names)
{
    say "\nProcessing $_";

    when(/fred/i)
    {
	say 'Name has fred in it';
	continue;
    }
    when(/^Fred/)
    {
	say 'Name starts with Fred';
	continue;
    }
    when('Fred')
    {
	say 'Name is Fred';
    }
    say "Moving on to default...";
    default
    {
	say "I don't see a Fred";
    }
}
