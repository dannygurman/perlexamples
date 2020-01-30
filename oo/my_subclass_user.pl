#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

use MyClass;
use MySubClass ;

print "Invoke MyClass method\n";

my $myObject = MyClass->new();
$myObject->MyMethod();

print "Invoke MySubClass method\n";

my $myObject2 = MySubClass->new();
$myObject2->MyMethod();

print "Create a scoped object\n";
{
    my $myObject2 = MyClass->new();
}
# Destructor is called automatically here

print "Create and undef an object\n";
my $myObject3 = MyClass->new();
undef $myObject3;

print "Fall off the end of the script...\n";
# Remaining destructors are called automatically here
