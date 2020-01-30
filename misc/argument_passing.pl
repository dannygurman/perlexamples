#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

#Method 1: List Assignment
sub foo1 {
    my ($user, $date, $system) = @_; # No shifting, and @_ preserved
}
#Method 2: Individual Assignment from @_
sub foo2 {
    my $user = $_[1];
    my $date = $_[2];   # Must be YYYY-MM-DD
    my $system = $_[3]; # Optional
}
#Method 3: Using "shift"
sub foo3 {
    my $user = shift;
    my $date = shift;   # Must be YYYY-MM-DD
    my $system = shift; # Optional
}