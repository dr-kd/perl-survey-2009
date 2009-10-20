package Survey::Perl::Model::Autocomplete;

use strict;
use base 'Catalyst::Model::DBIC::Schema';

sub get_list {
    my ($self, $tbl, $q) = @_;
    $tbl = ucfirst($tbl);
    my @tbls = $self->schema->sources;
    return \@tbls;
}

1;
