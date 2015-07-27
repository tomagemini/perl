#!/usr/bin/perl -w
# File Name: mymv.pl
# Author: Yi Zhu
# Date: 2015/07/27
# Object: ch13ex5 - Write a program like mv (don't need to include the options
# for mv).
# Version: 1.10 - file name changes from ch13ex5.pl to mymv.pl
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
my $newname = $ARGV[1] =~ s%.*/%%r;

#say $filename;
#say $newname;
if($newname)
{
    if(-e $ARGV[1])
    {
	warn "Can't rename, '$ARGV[1]' exists!\n";
    }
    elsif(rename $ARGV[0] => $ARGV[1])
    {
	say "Rename successful";
    }
    else
    {
	say "Rename failed: $!";
	exit 1;
    }
}
else
{
    $ARGV[1] .= $filename;
    if(-e $ARGV[1])
    {
	warn "Can't rename, '$ARGV[1]' exists!\n";
    }
    elsif(rename $ARGV[0] => $ARGV[1])
    {
	say "Rename successful";
    }
    else
    {
	say "Rename failed: $!";
	exit 1;
    }
}   
