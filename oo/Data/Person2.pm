package Data::Person2;
use strict;
use warnings FATAL => 'all';

#constructor  for our Person class using a Perl hash reference
sub new {
    my $class = shift;

    my $self = {
        _firstName => shift,
        _lastName  => shift,
        _ssn       => shift,
    };

    # You can use simple hash in your consturctor if you don't want to assign any value to any class variable. For example −
    # my $self = {};

    # Print all the values just for clarification.
    print "First Name is $self->{_firstName}\n";
    print "Last Name is $self->{_lastName}\n";
    print "SSN is $self->{_ssn}\n";

    # The object reference is created by blessing a reference to the package's class
    bless $self, $class;
    return $self;
}

#  helper method to get person’s first name
sub getFirstName {
    my( $self ) = @_;
    return $self->{_firstName};
}

#Another helper function to set person’s first name
sub setFirstName {
    my ( $self, $firstName ) = @_;
    $self->{_firstName} = $firstName if defined($firstName);
    return $self->{_firstName};
}

1;