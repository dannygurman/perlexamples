#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

# Perl program to illustrate the
# Dereferencing of a Scalar

# defining a scalar
my $scalar = 1234;

# creating an reference to scalar variable
my $reference_scalar = \$scalar;

# Dereferencing
# printing the value stored
# at $reference_scalar by prefixing
# $ as it is a Scalar reference
print $$reference_scalar;
