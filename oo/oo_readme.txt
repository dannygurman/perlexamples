 Object Oriented concept in Perl is very much based on references and anonymous array and hashes.

 An object within Perl is merely a reference to a data type that knows what class it belongs to.
  The object is stored as a reference in a scalar variable.
   Because a scalar only contains a reference to the object, the same scalar can hold different objects in different classes.

 A class within Perl is a package that contains the corresponding methods required to create and manipulate objects.

 A method within Perl is a subroutine, defined with the package.
  The first argument to the method is an object reference or a package name,
   depending on whether the method affects the current object or the class.

Perl provides a bless() function, which is used to return a reference which ultimately becomes an object.

Defining a Class
---------------------
A class is corresponding to a Perl Package in its simplest form.
To create a class in Perl, we first build a package.
A package is a self-contained unit of user-defined variables and subroutines, which can be re-used over and over again.

Perl Packages provide a separate namespace within a Perl program which keeps subroutines and variables independent
from conflicting with those in other packages

The scope of the package definition extends to the end of the file, or until another package keyword is encountered

Creating and Using Objects
--------------------------------
To create an instance of a class (an object) we need an object constructor.
This constructor is a method defined within the package.
Most programmers choose to name this object constructor method new, but in Perl you can use any name.

You can use any kind of Perl variable as an object in Perl.
 Most Perl programmers choose either references to arrays or hashes.


 When creating an object, you need to supply a constructor, which is a subroutine within a package that
 returns an object reference.
 The object reference is created by blessing a reference to the package's class

 see https://www.tutorialspoint.com/perl/perl_object_oriented.htm
