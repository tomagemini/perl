#!/usr/bin/perl -w
# File Name: ch14ex3ans.pl
# Date: 2015/06/11
# Object: Chapter 14 official answers.
use strict;
use 5.016;

say "Please enter a string:";
chomp(my $string = <STDIN>);
say "Please enter a substring to search:";
chomp(my $sub = <STDIN>);

my @places;

for(my $pos = -1;;)
{
    $pos = index($string, $sub, $pos + 1);
    last if $pos == -1;
    push @places, $pos;
}

print "Location of '$sub' in '$string' were: @places\n";
