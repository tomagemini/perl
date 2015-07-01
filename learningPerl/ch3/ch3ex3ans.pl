#!/usr/bin/perl -w
# Program Name: ch3ex3ans.pl
# Author: Learning Perl
# Object: Official Answer of chapter 3 example 3.
print "Enter some lines, then press Ctrl-D:\n";
chomp(@lines = <STDIN>);
@sorted = sort @lines;
print "@sorted\n";
# print output on seperated lines:
# print sort <STDIN>;
