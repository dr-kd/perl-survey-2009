package Survey::Perl::Controller::ReCaptcha;
use Moose;
BEGIN { extends 'Catalyst::Controller::reCAPTCHA' }

sub test_user :Private {
    my ($self, $c) = @_;
    $c->stash(dest => $c->req->params->{'dest'} || $c->req->uri);
    if ($c->session->{human}) {
        $c->res->redirect($c->stash->{dest});
    }
    else {
        $c->forward('captcha_check');
        if ($c->stash->{recaptcha_error}) {
            $c->stash( template => 'auth.tt');
            $c->forward('captcha_get');
        }
        else {
            warn "setting session to 1";
            $c->session->{human} = 1;
            $c->res->redirect($c->stash->{dest})
        }
    }
}


1;
