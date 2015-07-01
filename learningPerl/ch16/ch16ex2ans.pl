#!/usr/bin/perl -w
# File Name: ch16ex1ans.pl
# Date: 2015/06/16
# Object: Chapter 16 official answers for exercies
use strict;
use 5.016;

open 'STDOUT', '>', 'ls.out' or die "Can't write to ls.out: $!";
open 'STDERR', '>', 'ls.err' or die "Can't write to ls.err: $!";
chdir '/' or die "Can't chdir to root directory: $!";
exec 'ls', '-l' or die "can't exec ls: $!";
