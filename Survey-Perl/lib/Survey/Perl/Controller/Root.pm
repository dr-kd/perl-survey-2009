package Survey::Perl::Controller::Root;

use strict;
use warnings;
use parent 'Catalyst::Controller::reCAPTCHA';

__PACKAGE__->config->{namespace} = '';



sub index :Path :Args(0) {
    my ( $self, $c ) = @_;
#    $c->res->body('<a href="'. $c->uri_for('/survey') . '">Survey</a>');
    $c->res->redirect($c->uri_for('/survey'));
}

sub do_404 :Path {
    my ( $self, $c ) = @_;
    $c->res->status(404);
    $c->res->body('Not found');
}


sub end : ActionClass('RenderView') {
    my ( $self, $c ) = @_;

    # begin by setting our minumum cache time to our default cache time in seconds.
    my $cachetime = 3600;

    # check to see if we have an error - we don't want error pages to be cached
    # so we force our cache-time to 0 in that case.
    if ( scalar @{ $c->error }) {
        $cachetime = 0;
    } else {
        # Look at each element of cachecontrol to find the shortest
        # cache time set. 

        foreach my $section ( keys %{$c->stash->{'cachecontrol'}} ) {

            # if the currently selected cache-control element is less
            # than the page's cache-time - we drop the cache-time to 
            # match the new limit.
            if ($c->stash->{'cachecontrol'}{$section} < $cachetime) {
                $cachetime = $c->stash->{'cachecontrol'}{$section};
            }
        }
    }

    # at this point - $cachetime should be set to the most restrictive
    # time set by all of the actions. Now it's time to turn it into 
    # a header that the cache server / browser can understand.  

    if ($cachetime == 0) {

        # if $cachetime is 0 - then we can't cache the page and we 
        # need to tell our requesting server / browser that.

        $c->response->header('Cache-Control' => 'no-cache')

    }
    else {

        # otherwise we set max-age to the cache-time specified.
        $c->response->header('Cache-Control' => 'max-age=' . $cachetime);
    }


}

1;
