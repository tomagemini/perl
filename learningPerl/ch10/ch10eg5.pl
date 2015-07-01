#!/usr/bin/perl -w
# File Name: ch10eg5.pl
# Date: 2015/06/03
# Object: Chapter 10 book examples
use strict;
use 5.014;

say "The defined-or Operator (//)";

foreach my $try (0, undef, '0', 1, 25)
{
    print "Trying [$try] ---> ";
    my $value = $try // 'default';
    say "\tgot [$value]";
}
