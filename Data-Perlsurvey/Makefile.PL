use inc::Module::Install;

name     'Data-Perlsurvey';
all_from 'lib/Data/Perlsurvey.pm';
author   'Kieren Diment <zarquon@cpan.org>';
license  'perl';

build_requires 'Test::More';
requires 'Yaml::XS';
requires 'Squirrel';
requures 'Text::CSV_XS';

auto_install;

WriteAll;

