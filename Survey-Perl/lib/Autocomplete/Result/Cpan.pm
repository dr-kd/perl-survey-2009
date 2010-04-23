package Autocomplete::Result::Cpan;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("cpan");
__PACKAGE__->add_columns(
  "distro",
  {
    data_type => "text",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
);
__PACKAGE__->set_primary_key("distro");


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2010-02-07 13:46:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:1GBRp+M6B/6r2pdq/+SpXg


# You can replace this text with custom content, and it will be preserved on regeneration
1;
