#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
use Data::Dumper;

$| = 1;

sub main {

    my %foods = (
        "mice" => "cheese",
        "dogs" => "meat",
        "birds" => "seeds",
    );

    while( my ($key, $value) = each %foods) {
        print "$key: $value\n";
    }


    foreach my $key(sort keys %foods) {
        my $value = $foods{$key};
        print "$key = $value\n";
    }

}

main();
