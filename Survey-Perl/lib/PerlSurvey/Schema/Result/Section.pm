package PerlSurvey::Schema::Result::Section;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

PerlSurvey::Schema::Result::Section

=cut

__PACKAGE__->table("sections");

=head1 ACCESSORS

=head2 id

  data_type: integer
  default_value: undef
  is_nullable: 1
  size: undef

=head2 title

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
  "title",
  {
    data_type => "text",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
);
__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 questions

Type: has_many

Related object: L<PerlSurvey::Schema::Result::Question>

=cut

__PACKAGE__->has_many(
  "questions",
  "PerlSurvey::Schema::Result::Question",
  { "foreign.section" => "self.id" },
);


# Created by DBIx::Class::Schema::Loader v0.05003 @ 2010-02-21 17:15:23
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:iHeluErrk5uqhV0MnYXr3Q


# You can replace this text with custom content, and it will be preserved on regeneration
1;
