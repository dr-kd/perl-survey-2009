package PerlSurvey::Schema::Result::Answer;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';

__PACKAGE__->load_components("TimeStamp");

=head1 NAME

PerlSurvey::Schema::Result::Answer

=cut

__PACKAGE__->table("answers");

=head1 ACCESSORS

=head2 id

  data_type: integer
  default_value: undef
  is_nullable: 1
  size: undef

=head2 user

  data_type: integer
  default_value: undef
  is_foreign_key: 1
  is_nullable: 1
  size: undef

=head2 field

  data_type: varchar
  default_value: undef
  is_foreign_key: 1
  is_nullable: 1
  size: 128

=head2 answer

  data_type: text
  default_value: undef
  is_nullable: 1
  size: undef

=head2 time_entered

  data_type: char
  default_value: current_timestamp
  is_nullable: 1
  size: 19

=head2 useragent

  data_type: text
  default_value: undef
  is_nullable: 1
  size: undef

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
  "user",
  {
    data_type => "integer",
    default_value => undef,
    is_foreign_key => 1,
    is_nullable => 1,
    size => undef,
  },
  "field",
  {
    data_type => "varchar",
    default_value => undef,
    is_foreign_key => 1,
    is_nullable => 1,
    size => 128,
  },
  "answer",
  {
    data_type => "text",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
  "time_entered",
  {
    data_type => "char",
    default_value => \"current_timestamp",
    is_nullable => 1,
    size => 19,
  },
  "useragent",
  {
    data_type => "text",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
);
__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.05003 @ 2010-02-21 19:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ZsueKFbUuCBVFX/1no1Ijg


# You can replace this text with custom content, and it will be preserved on regeneration
1;
