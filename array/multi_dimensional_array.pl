#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

use Data::Dumper;


my @animals = ('dog', 'cat', 'rabbit');
my @fruits = ('apple', 'banana', 'orange');

my $fruits_ref = \@fruits;
print $fruits_ref->[0] . "\n";

my @values;

# push (@values, @animals);
# push @values, @fruits;

push (@values, \@animals); # \ - reference to array not the array itself
push @values, \@fruits;

print Dumper(@values);
