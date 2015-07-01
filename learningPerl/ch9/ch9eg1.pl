#!/usr/bin/perl -w
# File Name: ch9eg1.pl
# Date: 2015/05/28
# Object: Official book examples for Chapter 9
use strict;
use 5.014;

say 'Substitution with s///';

$_ = "He's out bowling with Barney tonight";
say 'Original String is: "', $_, '".';
say 'Replace Barney with Fred';
s/Barney/Fred/;
print "$_\n";
say 'Replace Wilma with Betty (fails)';
say $_;

$_ = 'green scaly dinosaur';
say "Original String is: \"$_\".";
say "Now it's \"scaly, green dinosaur\"";
s/(\w+) (\w+)/$2, $1/;
say $_;

say "Now it's \"huge, scaly, green dinosaur";
s/^/huge, /;
say $_;

say "Empty replacement: Now it's \"huge dinosaur\"";
s/,.*een//;
say $_;

say "Failed Match: still \"huge dinosaur\"";
s/green/red/;
say $_;

say "Now it's \"huge (huge !)dinosaur\"";
s/\w+$/($`!)$&/;
say $_;

say "Now it's \"huge (huge!) dinosaur\"";
s/\s+(!\W+)/$1 /;
say $_;

say "Now it's \"gigantic (huge!) dinosaur\"";
s/huge/gigantic/;
say $_;

$_ = "fred flintstone";
if(s/fred/wilma/)
{
    print "Succeddfully replaced fred with wilma!\n";
}
