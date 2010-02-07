package Survey::Perl::Controller::Autocomplete;
use Moose;
BEGIN {extends 'Catalyst::Controller'};

sub auto :Private {
    my ($self, $c) = @_;
    $c->stash( current_view => 'JSON');
}

sub ProgLang :Local {
    my ($self, $c) = @_;
    my $autocomplete = $c->model('Autocomplete')->get_list('ProgLang', 'language', $c->req->params->{'q'});
    $c->res->body(join "\n", @$autocomplete);
#    $c->stash(autocomplete => $autocomplete);
}

sub Country :Local {
    my ($self, $c) = @_;
    my $autocomplete = $c->model('Autocomplete')->get_list('Countries', 'name' , $c->req->params->{'q'});
    $c->res->body(join "\n", @$autocomplete);
#    $c->stash(autocomplete => $autocomplete);
    
}

1;
