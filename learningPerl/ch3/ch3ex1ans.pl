#!/usr/bin/perl -w
# Program Name: ch3ex1ans.pl
# Author: Learning Perl
# Object: Official Answer of chapter 3 example 1.
print "Enter some lines, then press Ctrl-D or maybe Ctrl-Z:\n";
@lines = <STDIN>;
@reverse_lines = reverse @lines;
print @reverse_lines;
# or just:
# print reverse <STDIN>;
