#!/usr/bin/perl 
use strict;
use warnings;
use Text::CSV_XS;
use Survey::Perl::Answers::Schema;
use Config::JFDI;
use Data::Dumper;
my $conf     = Config::JFDI->new( name => "Survey::Perl" );
my $config   = $conf->get;
my $schema =
  Survey::Perl::Answers::Schema->connect( @{ $config->{'Model::Answers'}->{connect_info} }, );
my $csv = Text::CSV_XS->new({binary => 1});
my $answer_rs = $schema->resultset('Survey')->all;

open my $fh, ">", $ARGV[0] or die "can't open file for writing: $!\n";
while ( my $answer = $answer_rs->next ) {
	$csv->print($fh, { $_ => $answer->$_ } ) for $answer->columns or die "couldn't write row: " . $csv->error_diag;
}
close $fh;