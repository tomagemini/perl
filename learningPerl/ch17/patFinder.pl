#!/usr/bin/perl -w
# File Name: patFinder.pl
# Author: Yi Zhu
# Date: 2015/07/28
# Object: ch17ex1 - Make a program that reads a list of strings from a file,
# one per line, then let user enter a pattern. For each pattern, the program
# should tell how many strings match found and what they are. The program
# should simply report the error and let user input again.
# Version: 1.10 - file names changes from ch17ex1.pl to patFinder.pl
use strict;
use 5.016;
use autodie;

open FH, '<', 'sample_text.txt';
my @file = <FH>;
# say "@file";
LOOP:
{
	say 'Please enter your pattern:';
	chomp(my $pattern = <STDIN>);
	unless($pattern)
	{
		say "Exiting the program";
		exit 0;
	}

	my @matched = eval{grep /$pattern/, @file};
	if($@)
	{
		say "Error: $@";
		redo LOOP;
	}
	else
	{
		my $count = @matched;
		if($count)
		{
			say "There are total of $count match found: ";
			say map "$_", @matched;
		}
		else
		{
			say "No match found!";
		}
		redo LOOP;
	}
}
