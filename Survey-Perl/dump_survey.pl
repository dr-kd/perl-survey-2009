#!/usr/bin/env perl
use strict;
use warnings;
use Data::Dumper;
my $survey = $ARGV[0];
my $fields = do $survey;

foreach my $aref ( @{$fields} ) {
    foreach my $field ( @{$aref} ) {
	    next if ref $field ne 'HASH';
        print $field->{'field'} . "\n";
    }
}
