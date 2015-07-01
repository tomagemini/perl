#!/usr/bin/perl -w
# File Name: ch9eg2.pl
# Date: 2015/05/28
# Object: Official book examples for Chapter 9
use strict;
use 5.014;

say 'Global Replacements with /g';

$_ = "home, sweet home!";
say "Original String is: \"$_\"";
say "Now: cave, sweet cave!";
s/home/cave/g;
print "$_\n";

$_ = "Input  data\t may have    extra whitespace."; 
say "Original String is: \"$_\"";
say "Now: Input data may have extra whitespace.";
s/\s+/ /g;
print "$_\n";
s/^\s+|\s$//g; # strip leading, trailing whitespace

#Different Delimiters
#style1: Using 3 delimiters
#eg:
#s#^https://#http://#;
#style2: using paired characters(two pairs)
#eg:
#s{fred}{barney};
#The two pairs can be different character pairs
#s[fred](barney);
#s<fred>#barney#;
