#!/usr/bin/perl -w
# File Name: ch14eg3.pl
# Date: 2015/06/11
# Object: Chapter 14 book examples
use strict;
use 5.016;

say "Formatting Data with sprintf";

say "Using sprintf with 'Money Numbers'";
my $money = sprintf "%.2f", 2.49997;
say '2.49997 with sprintf "%.2f" is ', $money;

sub big_money
{
    my $number = sprintf "%0.2f", shift @_;
    # Add one comma each time through the do-nothing loop
    1 while $number =~ s/^(-?\d+)(\d\d\d)/$1,$2/;
    # Put the dollar sign in the right place
    $number =~ s/^(-?)/$1\$/;
    $number;
}

my $result = big_money(-12345678.90);
say "-12345678\.90 is converted to $result";
