#!/usr/bin/perl -w
# File Name: ch8eg5.pl
# Date: 2015/05/26
# Object: Official example for Chapter 8
use strict;
use 5.014;

$_ = "brontosaurus steak";
say "Noncapturing Parentheses";
if(/(bronto)?saurus (steak|burger)/)
{
	print "Fred wants a $2\n";
}

if(/(?:bronto)?saurus (steak|burger)/)
{
	print "Fred wants a $1\n";
}

$_ = "brontosaurus BBQ burger";
if(/(?:bronto)?saurus (?:BBQ )?(steak|burger)/)
{
	print "Fred wants a $1\n";
}
