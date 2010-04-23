package Survey::Perl::Model::Auth;

use strict;
use base 'Catalyst::Model::DBIC::Schema';

__PACKAGE__->config(
    schema_class => 'Survey::Perl::Auth::Schema',
    
);

=head1 NAME

Survey::Perl::Model::Auth - Catalyst DBIC Schema Model
=head1 SYNOPSIS

See L<Survey::Perl>

=head1 DESCRIPTION

L<Catalyst::Model::DBIC::Schema> Model using schema L<Survey::Perl::Auth::Schema>

=head1 AUTHOR

Kieren Diment

=head1 LICENSE

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
