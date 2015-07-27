#!/usr/bin/perl -w
# File Name: myln.pl
# Author: Yi Zhu
# Date: 2015/07/27
# Object: ch13ex6 - Write a program like ln (don't need to include the options
# for ln).
# Version: 1.10 - file name changes from ch13ex6.pl to myln.pl
use strict;
use 5.016;

my $USAGE = "Usage: $0 filename1 filename2!";
if(@ARGV != 2)
{
    say $USAGE;
    exit 1;
}

unless(-e $ARGV[0])
{
    say "File '$ARGV[0]' does not exist";
    exit 1;
}

my $filename = $ARGV[0] =~ s%.*/%%r;

if(-d $ARGV[1])
{
    $ARGV[1] .= $filename;
    if(-l $ARGV[1])
    {
	warn "Can't link, '$ARGV[1]' exists!\n";
    }
    elsif(link $ARGV[0] => $ARGV[1])
    {
	say "link successful";
    }
    else
    {
	say "link failed: $!";
	exit 1;
    }
}
else
{
    if(-l $ARGV[1])
    {
	warn "Can't link, '$ARGV[1]' exists!\n";
    }
    elsif(link $ARGV[0] => $ARGV[1])
    {
	say "link successful";
    }
    else
    {
	say "link failed: $!";
	exit 1;
    }
}
   
