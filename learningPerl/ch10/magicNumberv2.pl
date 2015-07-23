#!/usr/bin/perl -w
# File Name: magicNumberv2.pl
# Author: Yi Zhu
# Date: 2015/07/23
# Object: Make a program to let user guess a magic number. This
# program should prompt user if their number is too high or too
# low. User should also be able to exit the program by exit or
# quit. Add a debug mode that tells the magic number.
# Version: 1.10 - file name changes from ch10ex2.pl to magicNumberv2.pl
use strict;
use 5.014;

my $debug = $ARGV[0] // 0;

my $magicNumber = int(1 + rand 100);
say "The magic number is $magicNumber" if $debug;

while(1)
{
    say "Please enter your guess number between 1 to 100: ";
    chomp(my $input = <STDIN>);
    if($input eq 'exit' || $input eq 'quit')
    {
	last;
    }

    if($input == $magicNumber)
    {
	say "Bingo!";
	last;
    }
    else
    {
	$input > $magicNumber?say "Too high" : say "Too Low";
    }
}
