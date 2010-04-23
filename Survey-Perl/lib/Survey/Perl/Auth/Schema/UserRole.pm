package Survey::Perl::Auth::Schema::UserRole;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("EncodedColumn", "Core");
__PACKAGE__->table("user_role");
__PACKAGE__->add_columns(
  "id",
  {
    data_type => "INTEGER",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
  "user",
  {
    data_type => "INTEGER",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
  "roleid",
  {
    data_type => "INTEGER",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->belongs_to("user", "Survey::Perl::Auth::Schema::User", { id => "user" });
__PACKAGE__->belongs_to(
  "roleid",
  "Survey::Perl::Auth::Schema::Role",
  { id => "roleid" },
);


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-09-11 17:06:47
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:7SObkavJKpDvaQLNcvrxBQ


# You can replace this text with custom content, and it will be preserved on regeneration
1;
