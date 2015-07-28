#!/usr/bin/perl -w
# File Name: magicNum.pl
# Author: Yi Zhu
# Date: 2015/07/28
# Object: ch15ex1 - Rewrite chapter 10 exercise 1 by using given-when
# Version: 1.10 - file name changes from ch15ex1.pl to magicNum.pl
use strict;
use 5.016;

my $magic = int(1 + rand 100);
my $flag = 1;
while($flag)
{
	say 'Pleae enter you guess number between 1 to 100:'; 
	chomp(my $input = <STDIN>);
	given($input)
	{
		when($_ eq 'quit' || $_ eq 'exit')
		{
			say "You give up! The magic number is $magic.";
			$flag = 0;
		}
		when($_ =~ /\D+/) { say 'Input is not a number' }
		when($_ > $magic) { say 'Too high.' }
		when($_ < $magic) { say 'Too low.'}
		default
		{
			say "Bingo!";
			$flag = 0;
		}
	}
}
