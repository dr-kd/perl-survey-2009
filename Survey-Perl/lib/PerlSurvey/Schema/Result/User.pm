package PerlSurvey::Schema::Result::User;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

PerlSurvey::Schema::Result::User

=cut

__PACKAGE__->table("user");

=head1 ACCESSORS

=head2 userid

  data_type: integer
  default_value: undef
  is_nullable: 1
  size: undef

=head2 sessionid

  data_type: varchar
  default_value: undef
  is_nullable: 1
  size: 128

=head2 username

  data_type: varchar
  default_value: undef
  is_nullable: 1
  size: 64

=head2 email

  data_type: varchar
  default_value: undef
  is_nullable: 1
  size: 128

=head2 language

  data_type: char
  default_value: undef
  is_nullable: 1
  size: 10

=cut

__PACKAGE__->add_columns(
  "userid",
  {
    data_type => "integer",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
  "sessionid",
  {
    data_type => "varchar",
    default_value => undef,
    is_nullable => 1,
    size => 128,
  },
  "username",
  {
    data_type => "varchar",
    default_value => undef,
    is_nullable => 1,
    size => 64,
  },
  "email",
  {
    data_type => "varchar",
    default_value => undef,
    is_nullable => 1,
    size => 128,
  },
  "language",
  { data_type => "char", default_value => undef, is_nullable => 1, size => 10 },
);
__PACKAGE__->set_primary_key("userid");

=head1 RELATIONS

=head2 answers

Type: has_many

Related object: L<PerlSurvey::Schema::Result::Answer>

=cut

__PACKAGE__->has_many(
  "answers",
  "PerlSurvey::Schema::Result::Answer",
  { "foreign.user" => "self.userid" },
);


# Created by DBIx::Class::Schema::Loader v0.05003 @ 2010-02-21 17:15:23
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:LTWm+4L0nOH7ahbfC6AYNA


# You can replace this text with custom content, and it will be preserved on regeneration
1;
