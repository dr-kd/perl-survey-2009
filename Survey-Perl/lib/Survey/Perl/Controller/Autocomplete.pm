package Survey::Perl::Controller::Autocomplete;
use Moose;
BEGIN {extends 'Catalyst::Controller'};

sub auto :Private {
    my ($self, $c) = @_;
    $c->stash( current_view => 'JSON');
}

sub ProgLang :Path {
    my ($self, $c) = @_;
    my $autocomplete = $c->model('Autocomplete')->get_list('language', $c->req->params->{'q'});
    $c->stash(autocomplete => $autocomplete);
}

sub Country :Path {
    my ($self, $c) = @_;
    my $autocomplete = $c->model('Autocomplete')->get_list('country', $c->req->params->{'q'});
    $c->stash(autocomplete => $autocomplete);
    
}

1;
