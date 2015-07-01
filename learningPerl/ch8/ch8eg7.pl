#!/usr/bin/perl -w
# File Name: ch8eg7.pl
# Date: 2015/05/27
# Object: Official example for Chapter 8
use strict;
use 5.014;

say "The Automatic Match Variables";

if("Hello there, neighbour" =~ /\s(\w+),/)
{
	print "That actually matched '$&'.\n";
}

if("Hello there, neighbour" =~ /\s(\w+),/)
{
	print "That was ($`)($&)($').\n";
}

if("Hello there, neighbour" =~ /\s(\w+),/p)
{
	print "That actually matched '${^MATCH}'.\n";
}

if("Hello there, neighbour" =~ /\s(\w+),/p)
{
	print "That was (${^PREMATCH})(${^MATCH})(${^POSTMATCH}).\n";
}
