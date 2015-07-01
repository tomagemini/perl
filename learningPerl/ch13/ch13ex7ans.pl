#!/usr/bin/perl -w
# File Name: ch13ex7ans.pl
# Date: 2015/06/09
# Object: Chapter 13 official exercises answers
use strict;
use 5.016;
use File::Basename;
use File::Spec;

my $symlink = $ARGV[0] eq '-s';
shift @ARGV if $symlink;

my($source, $dest) = @ARGV;

if(-d $dest)
{
    my $basename = basename $source;
    $dest = File::Spec->catfile($dest, $basename);
}

if($symlink)
{
    symlink $source, $dest or die "Can't make soft link from '$source'
to '$dest': $!\n";
}
else
{
    link $source, $dest or die "Can't make hard link from '$source' to
'$dest': $! \n";
}
