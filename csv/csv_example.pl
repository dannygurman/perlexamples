#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

use Data::Dumper;

sub parsing_example {

    my $in_file = 'test.csv';
    #INPUT - global file reference
    unless(open(INPUT, $in_file)) {
        die "\nCannot open $in_file\n";
    }

    #calling input to read first line - the header and skip it
    <INPUT>;
    my $delimiter_regex = '\s*,\s*'; # remove spaces in the split
    while(my $line = <INPUT>) {
        #new line in the end is not removed by default by split
        chomp ($line)  ;#- remove trailing line

        my @values = split(/$delimiter_regex/, $line);

        print "\n ------ 1 -------------\n";
        print $values[1] . "\n";

        print "\n ------ 2 -------------\n";
        print join ('|', @values);

        print "\n ------ 3 -------------\n";
        print Dumper(@values);
    }

    close INPUT;
}

parsing_example();

