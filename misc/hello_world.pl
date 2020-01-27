# The use strict statement is called pragma

# It forces you to code properly to make your program less error-prone.
# For example: It forces you to declare variables before you use them.
#  You can declare variable using “my” keyword. “my” keyword restricts the scope of the variable to local.
#  It makes the code more readable and less error prone.
#  If you don’t declare variable using my keyword then the created variable would be global,
#  which you should avoid, reducing the scope of the variable to the place where it
#  is needed is a good programming practice.
use strict;

# This is another pragma,It helps you find typing mistakes,
#  it warns you whenever it sees something wrong with your program.
# It would help you find mistakes in your program faster.
use warnings;

# sub routine
sub main_example {
    print("Hello workd!");
    print "Hello workd 2!"
};

main_example();
