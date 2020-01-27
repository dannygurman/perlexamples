#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

# numeric qualifier
# * zero or more of the preceding character, as many as possible
# + one or more of the preceding, as many as possible
# *? zero or more of the preceding character, as few as possible
# +? one or more of the preceding, as few as possible
# {5} five of the preceding
# {3,6} at least three and at most 6
# {3,} at least three

my $text = 'DE$1234567';
my $regex = '(DE\$\d{3})'; #Matched: 'DE$123'
# my $regex = '(DE\$\d{3,})'; #Matched: 'DE$1234567''
if($text =~ /$regex/) {
    print "Matched: '$1'\n";  #
}