#!/usr/bin/perl 
use strict;
use warnings;
use Survey::Perl::Answers::Schema;
use Config::JFDI;
use Data::Dumper;
my $conf   = Config::JFDI->new( name => "Survey::Perl" );
my $config = $conf->get;
my $schema = Survey::Perl::Answers::Schema->connect(
    @{ $config->{'Model::Answers'}->{connect_info} },
);
my $answer_rs = $schema->resultset('Survey');
my $ans;
open my $fh, ">", $ARGV[0] or die "can't open file for writing: $!\n";

while ( my $answer = $answer_rs->next ) {
    print Dumper $answer->columns;
    for ( $answer->columns ) {
        print $fh $_ . "," . $answer->$_ . "\n"
          or die "couldn't write row: $!";
    }
}
close $fh;
