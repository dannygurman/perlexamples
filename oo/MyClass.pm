package Data::MyClass;
use strict;
use warnings FATAL => 'all';

sub new {
    print "MyClass::new called\n";
    my $type = shift;            # The package/type name
    my $self = {};               # Reference to empty hash
    return bless $self, $type;
}

sub DESTROY {
    print "MyClass::DESTROY called\n";
}

sub MyMethod {
    print "MyClass::MyMethod called!\n";
}
1;