package Survey::Perl;

use strict;
use warnings;

use Catalyst::Runtime 5.80;

use parent qw/Catalyst/;
use Catalyst qw/-Debug
                ConfigLoader
                Static::Simple
                Session
                Session::Store::FastMmap
                Session::State::Cookie
               /;
our $VERSION = '0.01';

__PACKAGE__->config( name => 'Survey::Perl' );
__PACKAGE__->config->{recaptcha}->{pub_key} = '6LcsbAAAAAAAAPDSlBaVGXjMo1kJHwUiHzO2TDze';
__PACKAGE__->config->{recaptcha}->{priv_key} = '6LcsbAAAAAAAANQQGqwsnkrTd7QTGRBKQQZwBH-L';


# Start the application
__PACKAGE__->setup();


1;
