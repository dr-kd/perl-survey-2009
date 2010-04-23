package Autocomplete::Result::ProgLang;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("prog_lang");
__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
  "language",
  {
    data_type => "text",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
);
__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-10-21 10:45:17
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:8V/ye3txpdjrTW75vKyBoA


# You can replace this text with custom content, and it will be preserved on regeneration
1;
