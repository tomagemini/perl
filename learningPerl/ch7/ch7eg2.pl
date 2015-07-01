#!/usr/bin/perl -w
# File Name: ch7eg2.pl
# Date: 2015/05/26
# Object: Official examples for Chapter 7

use strict;
use 5.014;

say "Grouping in Patterns";
$_ = 'abba';
if(/(.)\1/)
{ # matches 'bb'
    print "It matched same character next to itself!\n";
}

$_ = "yabba dabba doo";
if(/y(....) d\1/)
{
    print "It matched the same character after y and d\n";
}

if(/y(.)(.)\2\1/)
{ # matches 'abba'
    print "It matched after the y!\n";
}

if(/y((.)(.)\3\2) d\1/)
{ # igorne nesting, only count open paranthesis for orders
    print "It matched!\n";
}

$_ = "aa11bb";
if(/(.)\111/)
{
    print "It matched!(for any character follow by 1)\n";
}

if(/(.)\g{1}11/)
{
    print "It matched!(same thing as he previous one)\n";
}

if(/(.)\g{-1}11/)
{
    print "It matched!(negative index means relative position to the
right)\n";
}

$_ = 'xaa11bb';
if(/(.)(.)\g{-1}11/)
{
    print "It matched!\n";
}
