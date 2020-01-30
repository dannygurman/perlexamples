
@INC is a built-in array perl provides. It contains a series of directories, the "search path" for perl when trying to load a modul

When perl encounters a use statement, a require statement, or a do statement:
use Module::Name;
require Module::Name;
do "Module/Name.pm";
perl will go over the directories listed in @INC and check if the appropriate file can be found.

In order to use the modules in perlexamples/modules_examples
we need to do one of the following:

1. When running in  Intellij ide we can mark the directory as "perl5 library root"
which will run the script with the  -Idirectory  parameters.
See perl --help:
 -Idirectory       specify @INC/#include directory (several -I's allowed)

For example:
C:/Strawberry/perl/bin/perl.exe -IC:/dev/git-views/personal/perlexamples/modules_examples C:/dev/git-views/personal/perlexamples/modules_examples/aritmhtic_user.pl

2.
add use lib statement to the script that use the modules :
use lib 'C:/dev/git-views/personal/perlexamples/modules_examples';

3. Add module path to environment variable PERL5LIB:
PERL5LIB=/dev/git-views/personal/perlexamples/modules_examples
in linux:
export PERL5LIB=/home/foobar/code
In windows:
set PERL5LIB=c:\path\to\dir

Could be done also in in intellij ide run configuration

see:
 https://perlmaven.com/how-to-change-inc-to-find-perl-modules-in-non-standard-locations
 https://perlmaven.com/what-is-at-inc