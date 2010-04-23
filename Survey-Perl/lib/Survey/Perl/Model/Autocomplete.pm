package Survey::Perl::Model::Autocomplete;

use strict;
use base 'Catalyst::Model::DBIC::Schema';

sub get_list {
    my ($self, $tbl, $col, $q) = @_;
    my $search =  "$q%";
    my $rs = $self->resultset($tbl)->search({ $col => {like => $search } });
    my @res;
    while (my $rec = $rs->next) {
        push @res, $rec->$col;
    }
    return \@res;
}

1;
