#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

use strict;
use warnings;

use Data::Dumper;

$|=1;

sub main {

    my $input = 'test.csv';

    unless(open(INPUT, $input)) {
        die "\nCannot open $input\n";
    }

    <INPUT>;

    my @data;

    while(my $line = <INPUT>) {

        chomp $line;

        my ($name, $payment, $date) = split /\s*,\s*/, $line;

        my %values = (
            "Name" => $name,
            "Payment" => $payment,
            "Date" => $date,
        );

        push @data, \%values;
    }

    close INPUT;

    foreach my $data(@data) {
        # -> for de reference to get the value of the hash
        print $data->{"Payment"} . "\n";
    }

    # arrow not needed here -no need to reference - not clear
    print "Descartes: " . $data[3]{"Name"};
}

main();

