#!/usr/bin/perl -w
# File Name: ch15ex3ans.pl
# Date: 2015/06/15
# Object: Chapter 15 exercises official answer
use strict;
use 5.016;

for(@ARGV)
{
	say "Processing $_";
	
	when(! -e) {say "\tFile does not exist!"}
	when(-r _) {say "\tReadable!"; continue;}
	when(-w _) {say "\tWritable!"; continue;}
	when(-x _) {say "\tExecutable!"; continue;}
}
