#!/usr/bin/env perl
use warnings;
use strict;
use FindBin qw/$Bin/;
use DBIx::Class::Schema::Loader qw/ make_schema_at /;


 my %options;
 if (@ARGV) {
     my $table = shift @ARGV;
     %options = ( constraint => $table,
                  components => [@ARGV]);
 }


make_schema_at("PerlSurvey::Schema",
                   {
                       %options,
                       debug => 1,
                       relationships => 1,
                       use_namespaces => 1,
                       dump_directory => "$Bin/../lib" ,
                   },
                   ["dbi:SQLite:dbname=$Bin/../db/survey.db",
                    "",""]);

