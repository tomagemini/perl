#!/usr/bin/perl -w
# File Name: ch13ex4ans.pl
# Date: 2015/06/09
# Object: Chapter 13 official exercises answers
use strict;
use 5.016;

foreach(@ARGV)
{
    unlink $_ or warn "Can't unlink $_: $!";
}
