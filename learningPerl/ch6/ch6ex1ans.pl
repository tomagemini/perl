#!/usr/bin/perl -w
# File Name: ch6ex1ans.pl
# Date: 2015/05/26
# Object: Official answer for Chapter 6 exercises

use strict;
use 5.014;

my %last_name = qw{
    fred flintstone 
    barney rubble
    wilma flintstone
};
print "Pleae enter a first name: ";
chomp(my $name = <STDIN>);
print "That's $name $last_name{$name}.\n";
