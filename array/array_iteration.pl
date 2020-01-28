#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
my @array = (1 ,2 ,3 );
foreach (@array)
{
    print($_);
}
print("\n");


# while(my $element=shift(@array))
# {
#     print($element);
# }

print("\n");
foreach my $number ( @array ) {
    print "\$number is $number\n";
    # unshift @numbers, "Added later";
}
print("\n");
my @numbers      = ( 1, 3, 7 );
my @more_numbers = ( 5, 8, 13 );
foreach my $number ( @numbers, @more_numbers ) {
    print "\$number is $number";
}
