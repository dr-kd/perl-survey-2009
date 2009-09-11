package Survey::Perl;

use strict;
use warnings;

use Catalyst::Runtime 5.80;

use parent qw/Catalyst/;
use Catalyst qw/-Debug
                ConfigLoader
                Static::Simple
                Authentication
                Authorization::Roles
                Session
                Session::State::Cookie
                Session::Store::FastMmap /;
our $VERSION = '0.01';

__PACKAGE__->config( name => 'Survey::Perl' );
__PACKAGE__->config->{recaptcha}->{pub_key} = '6LcsbAAAAAAAAPDSlBaVGXjMo1kJHwUiHzO2TDze';
__PACKAGE__->config->{recaptcha}->{priv_key} = '6LcsbAAAAAAAANQQGqwsnkrTd7QTGRBKQQZwBH-L';


# Start the application
__PACKAGE__->config( authentication => {
    'default_realm' => 'users',
    'realms' => {
        'users' => {
            'store' => {
                'role_column' => 'role_text',
                'user_class' => 'Auth::User',
                'class' => 'DBIx::Class',
            },
            'credential' => {
                 'password_type' => 'hashed',
                 'password_field' => 'password',
                 'password_hash_type' => 'SHA-1',
                 'class' => 'HTTP',
                 'type' => 'basic',
             }
        }
    },
});__PACKAGE__->setup();


1;
