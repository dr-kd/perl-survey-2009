package Survey::Perl::View::Web;

use strict;
use base 'Catalyst::View::TT';

__PACKAGE__->config(TEMPLATE_EXTENSION => '.tt',
                    WRAPPER            => 'wrapper.tt',
                );

1;
