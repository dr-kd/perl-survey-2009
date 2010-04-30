package Survey::Perl::Controller::Survey;
use Moose;
use Config::Any;
BEGIN { extends 'Catalyst::Controller' }
use Data::Dumper;

sub survey_base : Chained("/") : PathPart("survey") : CaptureArgs(0) {
    my ( $self, $c ) = @_;

    if (! $c->user) {
        if ($c->req->params->{'dest'} && ! $c->session->{human}) {

            $c->forward('/recaptcha/test_user');
        }
        elsif (! $c->session->{human}) {
            $c->detach('/recaptcha/test_user');
        }
    }
}

sub get_root : Chained("survey_base") : PathPart("") : Args(0) {
    my ( $self, $c ) = @_;
    my $questions = do( $c->path_to('survey/en.pl') );
    $c->stash(
        sections => $questions,
        template => 'survey/index.tt'
    );
}

sub finish_survey : Chained("survey_base") PathPart("finish") Args(0) {
    my ( $self, $c ) = @_;
    my $answers = $c->req->params;
    $answers->{user_agent} = $c->req->user_agent;
    $answers->{sessionid} = $c->sessionid;
    $answers->{finish_time} = gmtime;
    delete $answers->{'submit'};
    my @multis;
    my $industries        = $answers->{'industries'};
    my $perls             = $answers->{'perl_versions'};
    my $os                = $answers->{'os_dev'};
    my $os_deploy         = $answers->{'os_deployment'};
    my $editors           = $answers->{'perl_editors'};
    my $secondary_editors = $answers->{'perl_editors_secondary'};
    for ( qw/ industries perl_versions os_dev field os_deployment perl_editors perl_editors_secondary/ ) {
        if ( ref $answers->{$_} eq 'ARRAY' ) {
            $answers->{$_} = Dumper $answers->{$_};
        }
        else {
            $answers->{$_} = Dumper [$answers->{$_}];
        }
    }
    #push @multis, map +{ perl_versions => $_ }, @$perls;
    #push @multis, map +{ os_dev        => $_ }, @$os;
    #push @multis, map +{ os_deployment          => $_ }, @$os_deploy;
    #push @multis, map +{ perl_editors           => $_ }, @$editors;
    #push @multis, map +{ perl_editors_secondary => $_ }, @$secondary_editors;
    $c->log->debug( "multis: " . Dumper $answers );
    my $rs = $c->model('Answers')->txn_do(
        sub {
            $c->log->debug('creating answers');
            $c->model('Answers::Surveys')->create($answers)
                or die "Could not submit survey answers: $!";
        }
    );
    $c->log->debug("Rs: $rs");
}

1;
