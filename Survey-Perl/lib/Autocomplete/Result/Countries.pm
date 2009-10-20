package Autocomplete::Result::Countries;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("InflateColumn::DateTime", "Core");
__PACKAGE__->table("countries");
__PACKAGE__->add_columns(
  "code",
  { data_type => "char", default_value => undef, is_nullable => 1, size => 2 },
  "name",
  {
    data_type => "varchar",
    default_value => undef,
    is_nullable => 1,
    size => 96,
  },
);
__PACKAGE__->set_primary_key("code", "name");


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-10-21 10:45:17
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:/HU2U5R4lM4tj+YRb7eDWQ


# You can replace this text with custom content, and it will be preserved on regeneration
1;
