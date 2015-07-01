#!/usr/bin/perl -w
# File Name: ch10eg4.pl
# Date: 2015/06/03
# Object: Chapter 10 book examples
use strict;
use 5.014;

say "Loop Control: last next redo";

foreach(1..10)
{
    print "Iteration number $_.\n\n";
    print "Please choose: last, next, redo or none of the above? ";
    chomp(my $choice = <STDIN>);
    print "\n";
    last if $choice =~ /last/i;
    next if $choice =~ /next/i;
    redo if $choice =~ /redo/i;
    print "That wasn't any of the choices... onward!\n\n";
}
print "That's all, folks!\n";
