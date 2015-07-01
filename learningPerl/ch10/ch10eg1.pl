#!/usr/bin/perl -w
# File Name: ch10eg1.pl
# Date: 2015/06/03
# Object: Chapter 10 book examples
use strict;
use 5.014;

say "Loop Controls: last";
# print all input lines mentioning fred, until the __END__ marker
while(<STDIN>)
{
    if(/__END__/)
    {
	# No more input on or after this marker line
	last;
    }
    elsif(/fred/)
    {
	print;
    }
}
## last comes here ##
