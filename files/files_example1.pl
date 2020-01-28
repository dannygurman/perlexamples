#!/usr/bin/perl
use strict;
use warnings;

sub parsing_example {
    my $file = 'input1.txt';
    if ( -f $file) {
        print "Found file > $file\n";
    }
    else {
        print "Not found:> $file\n";
    }
}

parsing_example();