package PerlSurvey::Schema::Result::Question;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

PerlSurvey::Schema::Result::Question

=cut

__PACKAGE__->table("questions");

=head1 ACCESSORS

=head2 field

  data_type: varchar
  default_value: undef
  is_nullable: 1
  size: 128

=head2 title

  data_type: text
  default_value: undef
  is_nullable: 1
  size: undef

=head2 type

  data_type: text
  default_value: undef
  is_nullable: 1
  size: undef

=head2 validation

  data_type: text
  default_value: undef
  is_nullable: 1
  size: undef

=head2 section

  data_type: integer
  default_value: undef
  is_foreign_key: 1
  is_nullable: 1
  size: undef

=cut

__PACKAGE__->add_columns(
  "field",
  {
    data_type => "varchar",
    default_value => undef,
    is_nullable => 1,
    size => 128,
  },
  "title",
  {
    data_type => "text",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
  "type",
  {
    data_type => "text",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
  "validation",
  {
    data_type => "text",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
  "section",
  {
    data_type => "integer",
    default_value => undef,
    is_foreign_key => 1,
    is_nullable => 1,
    size => undef,
  },
);
__PACKAGE__->set_primary_key("field");

=head1 RELATIONS

=head2 section

Type: belongs_to

Related object: L<PerlSurvey::Schema::Result::Section>

=cut

__PACKAGE__->belongs_to(
  "section",
  "PerlSurvey::Schema::Result::Section",
  { id => "section" },
  { join_type => "LEFT" },
);

=head2 answers

Type: has_many

Related object: L<PerlSurvey::Schema::Result::Answer>

=cut

__PACKAGE__->has_many(
  "answers",
  "PerlSurvey::Schema::Result::Answer",
  { "foreign.field" => "self.field" },
);


# Created by DBIx::Class::Schema::Loader v0.05003 @ 2010-02-21 17:15:23
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:TZWCrS5b/XmoTj9/mpey6g


# You can replace this text with custom content, and it will be preserved on regeneration
1;
