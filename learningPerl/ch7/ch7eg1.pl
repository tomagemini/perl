#!/usr/bin/perl -w
# File Name: ch6eg1.pl
# Date: 2015/05/26
# Object: Official examples for Chapter 7

use strict;
use 5.014;

say "Using Simple Patterns";
$_ = "yabba dabba doo";
if(/abba/)
{
    print "It matched!\n";
}

say "Unicode Properties";
if(/\p{Space}/)
{ # 26 different possible characters
    print "The string has some whitespace.\n";
}
if(/\p{Digit}/)
{ # 411 differenct possible characters
    print "The string has a digit.\n";
}
if(/\p{AHex}\p{AHex}/)
{ # 22 different possible characters
    print "The string has a pair of hex digits.\n";
}
if(/\P{Space}/)
{ # Not space (many many characters!)
    print "The string has one more non-whitespace characters.\n";
}
