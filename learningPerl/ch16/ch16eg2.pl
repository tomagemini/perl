#!/usr/bin/perl -w
# File Name: ch15eg2.pl
# Date: 2015/06/16
# Object: Chapter 16 book examples
use strict;
use 5.016;

say 'Using Backquotes in a List Context';

my @who_lines = `who`;
#say "@who_lines";

my %ttys;
foreach (`who`)
{
	my($user, $tty, $date) = /(\S+)\s+(\S+)\s+(.*)/;
	$ttys{$user} .= "$tty at $date\n";
}

say "$_ : $ttys{$_}" foreach (sort keys %ttys);
