#!/usr/bin/perl -w
# File Name: ch9ex4ans.pl
# Date: 2015/06/03
# Object: Official answer for Chapter 9 exercises
use strict;
use 5.014;

$^I = ".bak";  # make backups
while(<>)
{
    if(/\A#!/) # is it the shebang line?
    {
	$_ = "## Copyright (C) 20XX by Yours Truly\n";
    }
    print;
}
