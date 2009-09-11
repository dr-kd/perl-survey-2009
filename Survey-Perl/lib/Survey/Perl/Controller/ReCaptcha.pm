package Survey::Perl::Controller::ReCaptcha;
use Moose;
BEGIN { extends 'Catalyst::Controller::reCAPTCHA' }

sub test_user :Private {
    my ($self, $c) = @_;
    return 1 if $c->session->{human} ;
    $c->forward('captcha_check');
    if ($c->stash->{recaptcha_error}) {
        $c->stash( template => 'auth.tt');
        $c->forward('captcha_get');
    }
    else {
        $c->session->{human} = 1;
        $c->res->redirect($c->req->params->{'dest'})
    }
}


1;
