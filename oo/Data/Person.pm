use strict;
use warnings FATAL => 'all';

package Data::Person;

sub new {
	my $class = shift;
	
	my $self = {
		"name" => shift,
		"age" => shift,
	};
	#bless REF,CLASSNAME
	#bless REF
	#This function tells the thingy referenced by REF that it is now an object in the CLASSNAME package.
	#  If CLASSNAME is an empty string, it is interpreted as referring to the main package.
	#  If CLASSNAME is omitted, the current package is used
	bless($self, $class);
	
	return $self;
}

sub greet {
	my ($self, $other) = @_;
	print "Hello $other; my name is " . $self->{"name"} . "; I am " . $self->{"age"} . " years old.\n";
}

1;