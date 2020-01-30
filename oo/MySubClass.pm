package MySubClass;

use warnings FATAL => 'all';

@ISA = qw( MyClass );
use strict;

sub new {
    print "MySubClass::new called\n";
    my $type = shift;            # The package/type name
    my $self = MyClass->new;     # Reference to empty hash
    return bless $self, $type;
}

sub DESTROY {
    print "MySubClass::DESTROY called\n";
}

sub MyMethod {
    my $self = shift;
    $self->SUPER::MyMethod();
    print "   MySubClass::MyMethod called!\n";
}
1;