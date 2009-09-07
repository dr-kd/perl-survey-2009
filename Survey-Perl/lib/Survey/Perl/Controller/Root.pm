package Survey::Perl::Controller::Root;

use strict;
use warnings;
use parent 'Catalyst::Controller::reCAPTCHA';

__PACKAGE__->config->{namespace} = '';


sub auto :Private {
    my ($self, $c) = @_;
    $DB::single=1;
    unless ( $c->session->{human} || $c->req->path =~ 'do_test') {
        $c->stash(dest => $c->req->uri);
        $c->detach('test_user');
        return 0;
    }
}

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    $c->stash(template => 'index.tt');
}

sub default :Path {
    my ( $self, $c ) = @_;
    $c->response->body( 'Page not found' );
    $c->response->status(404);
}

sub test_user :Private {
    my ($self, $c) = @_;
    $c->stash( template => 'auth.tt');
    $c->forward('captcha_get');
}

sub do_test : Path('do_test') {
    my ($self, $c) = @_;
    $c->forward('captcha_check');
    $DB::single=1;
    if ($c->stash->{recaptcha_ok}) {
        $c->session->{human} = 1;
        $c->req->redirect($c->req->params->{'dest'})
    }
    else {
        $c->req->redirect($c->req->base);
    }
}

sub end : ActionClass('RenderView') {}

1;
