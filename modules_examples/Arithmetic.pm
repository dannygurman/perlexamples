package Arithmetic;

use warnings FATAL => 'all';

use Exporter;

#Each package contains a special array called @ISA .
# The @ISA array contains a list of that class's parent classes, if any.
# This array is examined when Perl does method resolution
# base class of this(Arithmetic) module


# @EXPORT and @EXPORT_OK are the two main variables used during export operation.
#
# @EXPORT contains list of symbols (subroutines and variables) of the module to
#  be exported into the caller namespace.
#
# @EXPORT_OK does export of symbols on demand basis.

our @ISA = qw(Exporter);

# Exporting the add and subtract routine
@EXPORT = qw(add subtract);

# Exporting the multiply and divide  routine on demand basis.
@EXPORT_OK = qw(multiply divide);

use strict;

sub add
{
    my ($no1,$no2) = @_;
    my $result;
    $result = $no1+$no2;
    return $result;
}

sub subtract
{
    my ($no1,$no2) = @_;
    my $result;
    $result = $no1-$no2;
    return $result;

}

sub multiply
{
    my ($no1,$no2) = @_;
    my $result;
    $result = $no1*$no2;
    return $result;
}

sub divide {
    my ($no1, $no2) = @_;
    my $result;
    $result = $no1 / $no2;
    return $result;
}
#must return 1
1;