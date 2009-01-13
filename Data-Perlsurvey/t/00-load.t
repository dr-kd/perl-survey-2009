#!perl

use FindBin qw/$Bin/;
use Test::More qw/no_plan/;
use YAML::Syck qw/LoadFile Dump/;

BEGIN {
	use_ok( 'Data::Perlsurvey' );
}

diag( "Testing Data::Perlsurvey $Data::Perlsurvey::VERSION, Perl $], $^X" );

my $file = "$Bin/../../perlsurvey2007.yaml";
my $ps = Data::Perlsurvey->new(rawdata => LoadFile($file));
my $out = $file . ".csv";
$ps->print_csv($out);
my $head = $ps->get_head;
ok(ref($head) eq "ARRAY", "->head method returns an array ref");



