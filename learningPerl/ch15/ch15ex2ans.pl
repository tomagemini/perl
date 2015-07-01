#!/usr/bin/perl -w
# File Name: ch15ex2ans.pl
# Date: 2015/06/15
# Object: Chapter 15 exercises official answer
use strict;
use 5.016;

for(1 .. 105)
{
	my $what = '';
	given($_)
	{
		when(not $_ % 3) { $what .= ' Fizz'; continue; }
		when(not $_ % 5) { $what .= ' Buzz'; continue; }
		when(not $_ % 7) { $what .= ' Sausage'; }
	}
	say "$_$what";
}
