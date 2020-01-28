#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
use Data::Dumper;

$|=1;

sub main {
    my $input = 'test.csv';
    unless(open(INPUT, $input)) {
        die "\nCannot open $input\n";
    }
    #skip header
    <INPUT>;
    my @parsed_lines;

    while(my $line = <INPUT>) {
        chomp $line;
        my @values = split(/\s*,\s*/, $line);
        push(@parsed_lines, \@values); #push reference - using \
    }

    close INPUT;

    print "--------------\n";
    print $parsed_lines[3][1] . "\n";

    foreach my $line(@parsed_lines) {
        print Dumper($line);
       # $ { $array_ref } [0]  is same as $array_ref->[0]
        print "Name " . $line->[0] . "\n";
    }
}

main();


