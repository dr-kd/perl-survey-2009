package Survey::Perl::Controller::Root;

use strict;
use warnings;
use parent 'Catalyst::Controller::reCAPTCHA';

__PACKAGE__->config->{namespace} = '';



sub index :Path :Args(0) {
    my ( $self, $c ) = @_;
    $c->res->redirect($c->uri_for('/survey'));
}


sub end : ActionClass('RenderView') {}

1;
