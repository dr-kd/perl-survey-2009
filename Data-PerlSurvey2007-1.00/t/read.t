#!perl

use Test::More tests => 2;

BEGIN {
    use_ok( 'Data::PerlSurvey2007' );
}
use YAML::Syck;
my @responses = Data::PerlSurvey2007::read_responses( 'perlsurvey2007.csv' );

is( scalar @responses, 4575, 'Got all the responses' );
open my $FH, ">", "perlsurvey.yaml";
print $FH Dump \@responses;
