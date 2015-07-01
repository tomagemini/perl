#!/usr/bin/perl -w
# File Name: ch15ex5.pl
# Date: 2015/06/16
# Object: Chapter 16 book examples
use strict;
use 5.016;

say 'The system Function';

system 'ls -l \$HOME';

system 'for i in *.txt; do echo == $i ==; cat $i; done'; 
