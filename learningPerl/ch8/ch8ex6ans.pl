#!/usr/bin/perl -w
# File Name: ch8ex6ans.pl
# Date: 2015/05/27
# Object: Official answer for Chapter 8 exercises
use strict;
use 5.014;

while(<>)
{
	chomp;
	if(/\s\z/)
	{
		print "$_#\n";
   	}
}
