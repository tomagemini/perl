#!/usr/bin/perl -w
# File Name: ch15eg3.pl
# Date: 2015/06/15
# Object: Chapter 15 book examples.
use strict;
use 5.016;

say "The given Statement";

say "match number ~~ string" if 4 ~~ '4abc';
say "match string ~~ number" if '4abc' ~~ 4;

given($ARGV[0])
{
    when('Fred') { say 'Name is Fred' }
    when(/fred/) { say 'Name has fred in it' }
    when(/^Fred/) { say 'Name starts with Fred'}
    default { say "I don't see a Fred" }
}

say "There are break and continue sentences for the when clause";
