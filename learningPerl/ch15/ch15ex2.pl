#!/usr/bin/perl -w
# File Name: ch15ex2.pl
# Author: Yi Zhu
# Date: 2015/06/15
# Object: The program takes a number as input and print 'Fizz' if it is
# divisiable by 3, 'Bin' if it's divisible by 5, 'Sausage' if it's divisible by
# 7.
use strict;
use 5.016;

say 'Please input a number:';
chomp(my $input = <STDIN>);
given($input)
{
	when(/\D+/) { say 'Not a Number!' }
	when($_ % 3 == 0)
	{
		say 'Fizz';
		continue;
	}
	when($_ % 5 == 0)
	{
		say 'Bin';
		continue;
	}
	when($_ % 7 == 0) { say 'Sausage'; }
	default { say "What's next?"; }
}
