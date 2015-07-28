#!/usr/bin/perl -w
# File Name: rootList2.pl
# Author: Yi Zhu
# Date: 2015/07/28
# Object: ch16ex2 - Modify previous program to send the output to ls.out and
# error message to ls.err.
# Version: 1.10 - file name changes from ch16ex2.pl to rootList2.pl
use strict;
use 5.016;

open STDOUT, '>', 'ls.out' or die "Cannot open STDOUT to ls.out: $!";
open STDERR, '>', 'ls.err' or die "Cannot open STDERR to ls.err: $!";
chdir '/etc' or die "Cannot chdir to /etc: $!";
exec 'ls -l' or die "Cannot long list /etc";
