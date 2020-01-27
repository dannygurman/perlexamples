#!/usr/bin/perl
use strict;
use warnings;

sub main {
    my $file = 'input1.txt';
    if ( -f $file) {
        print "Found file > $file\n";
    }
    else {
        print "Not found:> $file\n";
    }
}

main();