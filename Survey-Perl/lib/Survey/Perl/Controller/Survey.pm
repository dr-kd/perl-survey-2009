package Survey::Perl::Controller::Survey;
use Moose;
BEGIN { extends 'Catalyst::Controller' }

sub survey_base :Chained("/") :PathPart("survey") :CaptureArgs(0) {
    my ($self, $c) = @_;
    $DB::single=1;
    if (! $c->user) {
        if ($c->req->params->{'dest'} && ! $c->session->{human}) {
            
            $c->forward('/recaptcha/test_user');
        }
        elsif (! $c->session->{human}) {
            $c->detach('/recaptcha/test_user');
        }
    }
}

sub get_root :Chained("survey_base") :PathPart("") :Args(0) {
    my ($self, $c) = @_;
    $c->stash(template => 'survey/index.tt');
}


1;
