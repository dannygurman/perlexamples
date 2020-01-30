package Speak;
use strict;
use warnings FATAL => 'all';

use Exporter qw(import);

@EXPORT_OK = qw(test greet);
# @EXPORT = qw(test);

sub test {
    print "Hello there.\n";
}

sub greet {
    print "Hey, how's it goin?\n";
}


#Return 1 because Perl modules are required to return a value to signal if the require directive must succeed
#  (true value returned) or fail (false value returned;
#  this can make sense if the module failed to initialize for some reason).
#If you don't return anything, the interpreter cannot know if the require must succeed or fail
1; #Like return 1