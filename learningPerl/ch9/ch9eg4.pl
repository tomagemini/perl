#!/usr/bin/perl -w
# File Name: ch9eg4.pl
# Date: 2015/05/28
# Object: Official book examples for Chapter 9
use strict;
use 5.014;

say 'Case Shifting';

$_ = "I saw Barney with Fred.";
say "Original is: \"$_\"";
say "Now is: I saw BARNEY with FRED.";
s/(fred|barney)/\U$1/gi;
say $_;

say "Now is: I saw barney with fred.";
s/(fred|barney)/\L$1/gi;
say $_;

say "Now is: I saw FRED with barney.";
s/(\w+) with (\w+)/\U$2\E with $1/i;
say $_;

say "Now is: I saw FRED with Barney.";
s/(fred|barney)/\u$1/ig;
say $_;

say "Now is: I saw Fred with Barney.";
s/(fred|barney)/\u\L$1/ig;

#These escape sequences are available in any double-quoted strings
