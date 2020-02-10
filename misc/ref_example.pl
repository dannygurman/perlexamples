#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
use 5.010;

my $nothing;
my $string = 'abc';
my $number = 42;

say 'nothing:', ref $nothing;   #
say 'string:     ', ref $string;    #
say 'number:     ', ref $number;    #

my $nothingref = \$nothing;
my $stringref  = \$string;
my $numberref  = \$number;
say 'nothingref: ', ref $nothingref; # SCALAR
say 'stringref:  ', ref $stringref;  # SCALAR
say 'numberref:  ', ref $numberref;  # SCALAR


# we pass an array or a hash to the ref() it will return an empty string,
#  but if we pass a reference to an array, or a reference to a hash,
# it will return ARRAY, or HASH respectively.
my @arr = (2, 3);
my %h = (
    answer => 42,
);
my $arrayref  = \@arr;
my $hashref   = \%h;

say 'array:      ', ref @arr;       #
say 'hash:       ', ref %h;         #
say 'arrayref:   ', ref $arrayref;  # ARRAY
say 'hashref:    ', ref $hashref;   # HASH

sub answer {
    return 42;
}
my $subref    = \&answer;

say 'subref:     ', ref $subref;    # CODE

#A reference to a reference: REF
my $str = 'abc';
my $strref = \$str;
my $refref    = \$strref;
say 'strref:     ', ref $strref;    # SCALAR
say 'refref:     ', ref $refref;    # REF

say 'refrefref:  ', ref \$refref;   # REF

#Reference to a Regex
my $regex = qr/\d/;
my $regexref = \$regex;
say 'regex:      ', ref $regex;     # Regexp

say 'regexref:   ', ref $regexref;  # REF