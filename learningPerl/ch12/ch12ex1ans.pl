#!/usr/bin/perl -w
# File Name: ch12ex1ans.pl
# Date: 2015/06/09
# Object: Chapter 12 official exercises answers
use strict;
use 5.016;

foreach my $file (@ARGV)
{
    my $attribs = &attributes($file);
    print "'$file' $attribs.\n";
}

sub attributes
{
    # report the attributes of a given file
    my $file = shift @_;
    return "does not exist" unless -e $file;

    my @attrib;
    push @attrib, "readable" if -r $file;
    push @attrib, "writable" if -w $file;
    push @attrib, "executable" if -x $file;
    return "exists" unless @attrib;
    'is ' . join " and ", @attrib; #return value
}
