#!/usr/bin/perl -w
# File Name: magicNumber.pl
# Author: Yi Zhu
# Date: 2015/07/23
# Object: ch10ex1 - Make a program to let user guess a magic number. This
# program should prompt user if their number is too high or too
# low. User should also be able to exit the program by exit or quit.
# Version: 1.10 - file name changes from ch10ex1.pl to magicNumber.pl
use strict;
use 5.014;

my $magicNumber = int(1 + rand 100);
while(1)
{
    say "Please enter your guess number between 1 to 100: ";
    chomp(my $input = <>);
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
