#!/usr/bin/perl -w
# File Name: ch8eg1.pl
# Date: 2015/05/26
# Object: Official example for Chapter 8
use strict;
use 5.014;

say "Match Modifiers";
print "Would you like to play a game? ";
chomp($_ = <STDIN>);
if(/yes/i)
{ # case-insensitive match
	print "In that case, I recommend that you go bowling.\n";
}

$_ = "I saw Barney\ndown at the bowling alley\nwith Fred\nlast
night.\n";
if(/Barney.*Fred/s)
{
	print "That string mentions Fred after Barney!\n";
}
#Adding Whitespace with /x
#/-?[0-9]+\.?[0-9]*/ # what is this doing?
#/ -? [0-9]+ \.? [0-9]* /x # a little better
#Choosing a Character Interpretation
#/\w+/a # A-Z, a-z, 0-9, _ (ASCII)
#/\w+/u # any Unicode word character (Unicode)
#/\w+/l # The ASCII version, and word chars from the locale,
#       # perhaps characters like CE from Latin-9
