#!/usr/bin/perl
use strict;
use warnings;

# $| = 1; forces a flush after every write or print, so the output appears as soon as
#  it's generated rather than being buffered.
$|=1;

sub main {
    my @files = (
        'input1.txt',
        'input2.txt',
    );

    foreach my $file(@files){
        print "$file\n";
        if ( -f $file) {
            print("Found file : $file\n");
        }
    }

}

main();