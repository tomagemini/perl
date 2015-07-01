#!/usr/bin/perl -w
# File Name: ch16ex1.pl
# Author: Yi Zhu
# Date: 2015/06/16
# Object: Changes to an hardcored directory and executes ls -l in it.
use strict;
use 5.016;

chdir '/etc' or die "Cannot chdir to /etc: $!";
system 'ls -l';
