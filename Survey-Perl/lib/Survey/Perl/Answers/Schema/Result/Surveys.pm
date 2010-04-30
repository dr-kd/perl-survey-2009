package Survey::Perl::Answers::Schema::Result::Surveys;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Survey::Perl::Answers::Schema::Result::Surveys

=cut

__PACKAGE__->table("surveys");

=head1 ACCESSORS

=head2 management_unmaintainable

  data_type: 'text'
  is_nullable: 1

=head2 email

  data_type: 'text'
  is_nullable: 1

=head2 x_comments

  data_type: 'text'
  is_nullable: 1

=head2 x_platform

  data_type: 'text'
  is_nullable: 1

=head2 report

  data_type: 'text'
  is_nullable: 1

=head2 understand

  data_type: 'text'
  is_nullable: 1

=head2 force

  data_type: 'text'
  is_nullable: 1

=head2 run_tests

  data_type: 'text'
  is_nullable: 1

=head2 cpan4

  data_type: 'text'
  is_nullable: 1

=head2 cpan3

  data_type: 'text'
  is_nullable: 1

=head2 cpan2

  data_type: 'text'
  is_nullable: 1

=head2 cpan1

  data_type: 'text'
  is_nullable: 1

=head2 cpan_important

  data_type: 'text'
  is_nullable: 1

=head2 cert_comments

  data_type: 'text'
  is_nullable: 1

=head2 cert_other

  data_type: 'text'
  is_nullable: 1

=head2 cert_me

  data_type: 'text'
  is_nullable: 1

=head2 words

  data_type: 'text'
  is_nullable: 1

=head2 frustrates

  data_type: 'text'
  is_nullable: 1

=head2 best

  data_type: 'text'
  is_nullable: 1

=head2 apps

  data_type: 'text'
  is_nullable: 1

=head2 embedded

  data_type: 'text'
  is_nullable: 1

=head2 netengs

  data_type: 'text'
  is_nullable: 1

=head2 sysadmins

  data_type: 'text'
  is_nullable: 1

=head2 experienced

  data_type: 'text'
  is_nullable: 1

=head2 early_career

  data_type: 'text'
  is_nullable: 1

=head2 beginner

  data_type: 'text'
  is_nullable: 1

=head2 first

  data_type: 'text'
  is_nullable: 1

=head2 management_scale

  data_type: 'text'
  is_nullable: 1

=head2 mangement_unmaintainable

  data_type: 'text'
  is_nullable: 1

=head2 management_outdated

  data_type: 'text'
  is_nullable: 1

=head2 management_encourages

  data_type: 'text'
  is_nullable: 1

=head2 scale

  data_type: 'text'
  is_nullable: 1

=head2 unmaintainable

  data_type: 'text'
  is_nullable: 1

=head2 startup

  data_type: 'text'
  is_nullable: 1

=head2 eliminate

  data_type: 'text'
  is_nullable: 1

=head2 legacy

  data_type: 'text'
  is_nullable: 1

=head2 cpan_feature

  data_type: 'text'
  is_nullable: 1

=head2 cpan_fix_bug

  data_type: 'text'
  is_nullable: 1

=head2 cpan_bug

  data_type: 'text'
  is_nullable: 1

=head2 feature_interpreter

  data_type: 'text'
  is_nullable: 1

=head2 fix_bug_interpreter

  data_type: 'text'
  is_nullable: 1

=head2 bug_report_interpreter

  data_type: 'text'
  is_nullable: 1

=head2 handover_modules

  data_type: 'text'
  is_nullable: 1

=head2 cpan_modules

  data_type: 'text'
  is_nullable: 1

=head2 conference

  data_type: 'text'
  is_nullable: 1

=head2 pm_meetings

  data_type: 'text'
  is_nullable: 1

=head2 local_pm

  data_type: 'text'
  is_nullable: 1

=head2 tech_list_non_perl

  data_type: 'text'
  is_nullable: 1

=head2 tech_list

  data_type: 'text'
  is_nullable: 1

=head2 pm_list

  data_type: 'text'
  is_nullable: 1

=head2 perl_editors_secondary

  data_type: 'text'
  is_nullable: 1

=head2 perl_editors

  data_type: 'text'
  is_nullable: 1

=head2 perl_freq

  data_type: 'text'
  is_nullable: 1

=head2 lang4

  data_type: 'text'
  is_nullable: 1

=head2 lang3

  data_type: 'text'
  is_nullable: 1

=head2 lang2

  data_type: (empty string)
  is_nullable: 1

=head2 lang1

  data_type: 'text'
  is_nullable: 1

=head2 lang

  data_type: 'text'
  is_nullable: 1

=head2 os_deployment

  data_type: 'text'
  is_nullable: 1

=head2 os_dev

  data_type: 'text'
  is_nullable: 1

=head2 perl_versions

  data_type: 'text'
  is_nullable: 1

=head2 spare_time

  data_type: (empty string)
  is_nullable: 1

=head2 percent_perl

  data_type: 'text'
  is_nullable: 1

=head2 percent_management

  data_type: 'text'
  is_nullable: 1

=head2 percent_programming

  data_type: 'text'
  is_nullable: 1

=head2 perl_length

  data_type: 'text'
  is_nullable: 1

=head2 prog_length

  data_type: 'text'
  is_nullable: 1

=head2 industries

  data_type: 'text'
  is_nullable: 1

=head2 income

  data_type: 'text'
  is_nullable: 1

=head2 other_dynamic_taught

  data_type: 'text'
  is_nullable: 1

=head2 other_dynamic_formal

  data_type: 'text'
  is_nullable: 1

=head2 perl_formal

  data_type: 'text'
  is_nullable: 1

=head2 field

  data_type: 'text'
  is_nullable: 1

=head2 highest_qual

  data_type: 'text'
  is_nullable: 1

=head2 country_residence

  data_type: 'text'
  is_nullable: 1

=head2 country_birth

  data_type: 'text'
  is_nullable: 1

=head2 age

  data_type: 'text'
  is_nullable: 1

=head2 gender

  data_type: 'text'
  is_nullable: 1

=head2 sessionid

  data_type: 'text'
  is_nullable: 1

=head2 user_agent

  data_type: 'text'
  is_nullable: 1

=head2 finish_time

  data_type: (empty string)
  is_nullable: 1

=head2 integer

  data_type: (empty string)
  is_nullable: 1

=head2 surveyid

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "management_unmaintainable",
  { data_type => "text", is_nullable => 1 },
  "email",
  { data_type => "text", is_nullable => 1 },
  "x_comments",
  { data_type => "text", is_nullable => 1 },
  "x_platform",
  { data_type => "text", is_nullable => 1 },
  "report",
  { data_type => "text", is_nullable => 1 },
  "understand",
  { data_type => "text", is_nullable => 1 },
  "force",
  { data_type => "text", is_nullable => 1 },
  "run_tests",
  { data_type => "text", is_nullable => 1 },
  "cpan4",
  { data_type => "text", is_nullable => 1 },
  "cpan3",
  { data_type => "text", is_nullable => 1 },
  "cpan2",
  { data_type => "text", is_nullable => 1 },
  "cpan1",
  { data_type => "text", is_nullable => 1 },
  "cpan_important",
  { data_type => "text", is_nullable => 1 },
  "cert_comments",
  { data_type => "text", is_nullable => 1 },
  "cert_other",
  { data_type => "text", is_nullable => 1 },
  "cert_me",
  { data_type => "text", is_nullable => 1 },
  "words",
  { data_type => "text", is_nullable => 1 },
  "frustrates",
  { data_type => "text", is_nullable => 1 },
  "best",
  { data_type => "text", is_nullable => 1 },
  "apps",
  { data_type => "text", is_nullable => 1 },
  "embedded",
  { data_type => "text", is_nullable => 1 },
  "netengs",
  { data_type => "text", is_nullable => 1 },
  "sysadmins",
  { data_type => "text", is_nullable => 1 },
  "experienced",
  { data_type => "text", is_nullable => 1 },
  "early_career",
  { data_type => "text", is_nullable => 1 },
  "beginner",
  { data_type => "text", is_nullable => 1 },
  "first",
  { data_type => "text", is_nullable => 1 },
  "management_scale",
  { data_type => "text", is_nullable => 1 },
  "mangement_unmaintainable",
  { data_type => "text", is_nullable => 1 },
  "management_outdated",
  { data_type => "text", is_nullable => 1 },
  "management_encourages",
  { data_type => "text", is_nullable => 1 },
  "scale",
  { data_type => "text", is_nullable => 1 },
  "unmaintainable",
  { data_type => "text", is_nullable => 1 },
  "startup",
  { data_type => "text", is_nullable => 1 },
  "eliminate",
  { data_type => "text", is_nullable => 1 },
  "legacy",
  { data_type => "text", is_nullable => 1 },
  "cpan_feature",
  { data_type => "text", is_nullable => 1 },
  "cpan_fix_bug",
  { data_type => "text", is_nullable => 1 },
  "cpan_bug",
  { data_type => "text", is_nullable => 1 },
  "feature_interpreter",
  { data_type => "text", is_nullable => 1 },
  "fix_bug_interpreter",
  { data_type => "text", is_nullable => 1 },
  "bug_report_interpreter",
  { data_type => "text", is_nullable => 1 },
  "handover_modules",
  { data_type => "text", is_nullable => 1 },
  "cpan_modules",
  { data_type => "text", is_nullable => 1 },
  "conference",
  { data_type => "text", is_nullable => 1 },
  "pm_meetings",
  { data_type => "text", is_nullable => 1 },
  "local_pm",
  { data_type => "text", is_nullable => 1 },
  "tech_list_non_perl",
  { data_type => "text", is_nullable => 1 },
  "tech_list",
  { data_type => "text", is_nullable => 1 },
  "pm_list",
  { data_type => "text", is_nullable => 1 },
  "perl_editors_secondary",
  { data_type => "text", is_nullable => 1 },
  "perl_editors",
  { data_type => "text", is_nullable => 1 },
  "perl_freq",
  { data_type => "text", is_nullable => 1 },
  "lang4",
  { data_type => "text", is_nullable => 1 },
  "lang3",
  { data_type => "text", is_nullable => 1 },
  "lang2",
  { data_type => "", is_nullable => 1 },
  "lang1",
  { data_type => "text", is_nullable => 1 },
  "lang",
  { data_type => "text", is_nullable => 1 },
  "os_deployment",
  { data_type => "text", is_nullable => 1 },
  "os_dev",
  { data_type => "text", is_nullable => 1 },
  "perl_versions",
  { data_type => "text", is_nullable => 1 },
  "spare_time",
  { data_type => "", is_nullable => 1 },
  "percent_perl",
  { data_type => "text", is_nullable => 1 },
  "percent_management",
  { data_type => "text", is_nullable => 1 },
  "percent_programming",
  { data_type => "text", is_nullable => 1 },
  "perl_length",
  { data_type => "text", is_nullable => 1 },
  "prog_length",
  { data_type => "text", is_nullable => 1 },
  "industries",
  { data_type => "text", is_nullable => 1 },
  "income",
  { data_type => "text", is_nullable => 1 },
  "other_dynamic_taught",
  { data_type => "text", is_nullable => 1 },
  "other_dynamic_formal",
  { data_type => "text", is_nullable => 1 },
  "perl_formal",
  { data_type => "text", is_nullable => 1 },
  "field",
  { data_type => "text", is_nullable => 1 },
  "highest_qual",
  { data_type => "text", is_nullable => 1 },
  "country_residence",
  { data_type => "text", is_nullable => 1 },
  "country_birth",
  { data_type => "text", is_nullable => 1 },
  "age",
  { data_type => "text", is_nullable => 1 },
  "gender",
  { data_type => "text", is_nullable => 1 },
  "sessionid",
  { data_type => "text", is_nullable => 1 },
  "user_agent",
  { data_type => "text", is_nullable => 1 },
  "finish_time",
  { data_type => "", is_nullable => 1 },
  "integer",
  { data_type => "", is_nullable => 1 },
  "surveyid",
  { data_type => "integer", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("surveyid");


# Created by DBIx::Class::Schema::Loader v0.06000 @ 2010-04-30 21:54:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:4JzbL12b6pG6nf7Q+ay5iQ


# You can replace this text with custom content, and it will be preserved on regeneration
1;
