#!/usr/bin/perl -w
#-w - warning on

# Original Array

@array = ( 10, 20, 30 );

# Printing Array elements
print "Original Array: @array \n";

# Calling push function to
# add a list of elements
push(@array, (35, 40, 55));

# Printing Updated array elements
print "Updated Array: @array \n";
#Original Array: 10 20 30
#Updated Array: 10 20 30 35 40 55

