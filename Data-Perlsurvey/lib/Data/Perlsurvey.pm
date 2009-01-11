package Data::Perlsurvey;

use warnings;
use strict;
use YAML::Syck qw/LoadFile/;
use Squirrel;
use Text::CSV_XS;

has 'rawdata' => (is => 'ro', isa => 'ArrayRef', required => 1);
has 'flat_data' => (is => 'ro', isa => 'ArrayRef', lazy_build => 1);
=head1 NAME

Data::Perlsurvey

Grab data for the perl survey.

=head1 VERSION

Version 2007

The version number for this code is the year in which the data was
collected.

=cut

our $VERSION = '2007';

=head1 SYNOPSIS

Reads and writes data from the perl survey in a format amenable to analysis.

=head1 FUNCTIONS

=head2 _build_flat_data

get list of questions from the survey as a nice flat list;

=cut

sub _build_flat_data {
    my ($self) = @_;
    my @flatdata;
    foreach my $line (@{ $self->rawdata }) {
        my $response = {};
        foreach my $k (keys  %$line) {

            if (!ref $line->{$k}) { #single answer item
                $response->{$k} = $line->{$k}
            }
            else { # item with multiple answers
                foreach my $r ( @{$line->{$k}} ) {
                    my $itemkey = $k . " " . $r;
                    $response->{$itemkey} = 1;
                }
            }
        }
        push @flatdata, $response
    }
    return $self->_unify_cols(@flatdata);
}

=head2 _unify_cols (@flattened_data)

make sure that every row in the database has every column as a key

=cut

sub _unify_cols {
    my ($self, @data) = @_;
    my %head;
    foreach my $d (@data) {
        foreach my $k (keys %$d) {
            $head{$k} = ''
        }
    }
    my @flat_hashrefs;
    # all columns are together in one hash
    foreach my $d (@data) {
        my %uni_data;
        foreach my $k (keys %head) {
            $uni_data{$k} = $d->{$k} || 0;
        }
        push @flat_hashrefs, \%uni_data;
    }

    my @final;
    my @head =  sort keys %{ $flat_hashrefs[0] };
    $DB::single=1;
    push @final, \@head;

    foreach my $d (@flat_hashrefs) {
        my (@response) = map {$d->{$_} } @head;
        push @final, \@response;
    }

    return \@final;
}

=head2 print_csv ($outfile_name)

prints a csv file of the data

=cut

sub print_csv {
    my ($self, $filename) = @_;
    my $data = $self->flat_data;
    my $csv = Text::CSV_XS->new();
    open my $FH, ">", $filename or die;
    foreach my $d (@$data) {
        $csv->combine(@$d);
        print $FH $csv->string, "\n";
    }
}

=head1 AUTHOR

Kieren Diment, C<< <zarquon at cpan.org> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-data-perlsurvey at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Data-Perlsurvey>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Data::Perlsurvey

You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Data-Perlsurvey>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Data-Perlsurvey>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Data-Perlsurvey>

=item * Search CPAN

L<http://search.cpan.org/dist/Data-Perlsurvey/>

=back

=head1 ACKNOWLEDGEMENTS

=head1 COPYRIGHT & LICENSE

Copyright 2009 Kieren Diment, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut

1;
