#!/usr/bin/perl -w
# File Name: ch14eg1.pl
# Date: 2015/06/11
# Object: Chapter 14 book examples
use strict;
use 5.016;

say "Finding a Substring with index";

#syntax looks like: my $where = index($big, $small);
#locates the first occurrence of the small string within the big
#string, and return the integer location of the first character (0
#based)

my $stuff = "Howdy world!";
my $where = index($stuff, "wor");
say $stuff;
say "Find 'wor' at location: $where.";

my $where1 = index($stuff, "w"); # 2
my $where2 = index($stuff, 'w', $where1 + 1); # 6
my $where3 = index($stuff, 'w', $where2 + 1); # -1 (not found)

say "Find 'w' at location: $where1 from the beginning of the string";
say "Find 'w' at location: $where2 after the first occurence";
say "Find 'w' at location: $where3 after the second occurence(-1 means\
not found)";

my $last_slash = rindex("/etc/passwd", "/"); # 4
say "The last slash index for '/etc/passwd' is $last_slash";

my $fred = "Yabba dabba doo!";
$where1 = rindex($fred, "abba"); # 7
$where2 = rindex($fred, 'abba', $where1 - 1); # 1
$where3 = rindex($fred, 'abba', $where2 - 1); # -1

say $fred;
say "Find 'abba' at location: $where1 firstly";
say "Find 'abba' at location: $where2 secondly";
say "Find 'abba' at location: $where3 thirdly(-1 means not found)";
