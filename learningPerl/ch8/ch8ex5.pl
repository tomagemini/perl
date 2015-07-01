#!/usr/bin/perl -w
# File Name: ch8ex5.pl
# Author: Yi Zhu
# Date: 2015/05/27
# Object: write a pattern to match the word end with 'a' by using
# label and also capture up to 5 next character
use strict;
use 5.014;

while(<>)
{ # take one input line at a time
	chomp;
	if(/(?<word>\b\w*a\b)(.{0,5})/)
	{
		print "Matched: |$`<$+{word}>$2|\n"; # the special match vars
	}
	else
	{
		print "No match: |$_|\n";
	}
}
