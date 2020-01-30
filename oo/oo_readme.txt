  see https://www.tutorialspoint.com/perl/perl_object_oriented.htm

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

Inheritance
-----------------
Example- we can have a class Employee, which inherits from Person.
 This is referred to as an "isa" relationship because an employee is a person.
  Perl has a special variable, @ISA, to help with this. @ISA governs (method) inheritance.

Following are the important points to be considered while using inheritance −
Perl searches the class of the specified object for the given method or attribute, i.e., variable.
Perl searches the classes defined in the object class's @ISA array.
If no method is found in steps 1 or 2, then Perl uses an AUTOLOAD subroutine, if one is found in the @ISA tree.
If a matching method still cannot be found, then Perl searches for the method within the UNIVERSAL class (package)
that comes as part of the standard Perl library.
If the method still has not found, then Perl gives up and raises a runtime exception.


-----------------------------------
Destructors and Garbage Collection
Perl automatically free the memory allocated to the object when you have finished using it
for you as soon as the object goes out of scope.

In case you want to implement your destructor, which should take care of closing files or doing some extra
processing then you need to define a special method called DESTROY.
This method will be called on the object just before Perl frees the memory allocated to it.
 In all other respects, the DESTROY method is just like any other method,
  and you can implement whatever logic you want inside this method.

A destructor method is simply a member function (subroutine) named DESTROY,
which will be called automatically in following cases −
When the object reference's variable goes out of scope.
When the object reference's variable is undef-ed.
When the script terminates
When the perl interpreter terminates
For Example, you can simply put the following method DESTROY in your class −

package MyClass;
...
sub DESTROY {
   print "MyClass::DESTROY called\n";
}
