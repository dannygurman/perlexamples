#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

use Data::Person2;

my $person_object = new Data::Person2( "xxx", "Saleem", 23234345);

# Get first name which is set using constructor.
my $firstName = $person_object->getFirstName();

print "Before Setting First Name is : $firstName\n";

# Now Set first name using helper function.
$person_object->setFirstName( "yyy." );

# Now get first name set by helper function.
$firstName = $person_object->getFirstName();
print "After Setting First Name is : $firstName\n";
