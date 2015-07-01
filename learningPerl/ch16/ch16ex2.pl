#!/usr/bin/perl -w
# File Name: ch16ex2.pl
# Author: Yi Zhu
# Date: 2015/06/16
# Object: Modify previous program to send the output to ls.out and error
# message to ls.err.
use strict;
use 5.016;

open STDOUT, '>', 'ls.out' or die "Cannot open STDOUT to ls.out: $!";
open STDERR, '>', 'ls.err' or die "Cannot open STDERR to ls.err: $!";
chdir '/etc' or die "Cannot chdir to /etc: $!";
exec 'ls -l' or die "Cannot long list /etc";
