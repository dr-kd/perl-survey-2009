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
    $c->log->debug( "Params: " . Dumper $answers);
    delete $answers->{'submit'};
    my @multis;
    $c->log->debug( "Answers: " . Dumper @{ $answers->{'field'} } );
    push @multis, { industries             => $_ } for @{ $answers->{'industries'} };
    push @multis, { perl_versions          => $_ } for @{ $answers->{'perl_versions'} };
    push @multis, { os_dev                 => $_ } for @{ $answers->{'os_dev'} };
    push @multis, { os_deployment          => $_ } for @{ $answers->{'os_deployment'} };
    push @multis, { perl_editors           => $_ } for @{ $answers->{'perl_editors'} };
    push @multis, { perl_editors_secondary => $_ } for @{ $answers->{'perl_editors_secondary'} };
    delete $answers->{$_}
      for qw/ industries perl_versions os_dev field os_deployment perl_editors perl_editors_secondary/;
    $c->log->debug( "multis: " . Dumper @multis );
    my $rs = $c->model('Answers')->txn_do(
        sub {
            $c->model('Answers::Survey')->populate( \@multis )
              or die "Could not submit survey answers: $!";

            $c->model('Answers::Survey')->create($answers)
              or die "Could not submit survey answers: $!";
        }
    );

}

1;
