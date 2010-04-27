package Survey::Perl::Answers::Schema::Result::Survey;
use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("surveys");
__PACKAGE__->add_columns(
    "surveyid",
    {
        data_type     => "INTEGER",
        default_value => "undef",
        is_nullable   => "1",
    },

    "gender",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
    },
    "age",
    {
        data_type     => "INTEGER",
        default_value => "undef",
        is_nullable   => "1",
    },
    "country_birth",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 200
    },
    "country_residence",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => "200",
    },
    "highest_qual",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => "50",
    },
    "field",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => "200"
    },
    "perl_formal",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => "15"
    },
    "other_dynamic_formal",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => "25"
    },
    "other_dynamic_taught",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => "25"
    },
    "income",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => "25"
    },
    "industries",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },

    "prog_length",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 10
    },
    "perl_length",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 10
    },
    "percent_programming",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 10
    },
    "percent_management",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 10
    },
    "percent_perl",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 10
    },
    "spare_time",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 10
    },
    "perl_versions",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 10
    },

    "os_dev",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 10
    },
    "os_deployment",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 10
    },

    "lang",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },
    "lang1",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },
    "lang2",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },
    "lang3",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },
    "lang4",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },

    "perl_freq",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },

    "pm_list",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },
    "tech_list",
    {
        data_type     => "text",
        default_value => "undef",
        is_nullable   => "1",
    },
    "tech_list_non_perl",
    {
        data_type     => "text",
        default_value => "undef",
        is_nullable   => "1",
    },
    "local_pm",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => "200"
    },
    "pm_meetings",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => "100"
    },
    "conference",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => "100"
    },
    "cpan_modules",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => "25"
    },
    "handover_modules",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },
    "bug_report_interpreter",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },
    "fix_bug_interpreter",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },
    "feature_interpreter",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },
    "cpan_bug",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },
    "cpan_fix_bug",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },
    "cpan_feature",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },

    "legacy",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => "100",
    },
    "eliminate",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },
    "startup",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },
    "unmaintainable",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },
    "scale",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },
    "management_encourages",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },

    "management_outdated",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100

    },
    "management_unmaintainable",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },
    "management_scale",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },
    "first",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },
    "beginner",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },
    "early_career",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },
    "experienced",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },
    "sysadmins",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },
    "netengs",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },
    "embedded",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },
    "apps",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },

    "best",
    {
        data_type     => "text",
        default_value => "undef",
        is_nullable   => "1",
    },
    "frustrates",
    {
        data_type     => "text",
        default_value => "undef",
        is_nullable   => "1",
    },
    "words",
    {
        data_type     => "text",
        default_value => "undef",
        is_nullable   => "1",
    },

    "cert_me",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },
    "cert_other",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },
    "cert_comments",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },

    "cpan_important",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },

    "cpan1",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },
    "cpan2",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },
    "cpan3",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },
    "cpan4",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },
    "run_tests",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },
    "force",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },
    "understand",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },
    "report",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },
    "x_platform",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },
    "x_comments",
    {
        data_type     => "char",
        default_value => "undef",
        is_nullable   => "1",
        size          => 100
    },

    "email",
    {
        data_type     => "varchar",
        default_value => "undef",
        is_nullable   => "1",
        size          => 255
    },
    "perl_editors",
    { 
	    data_type => "varchar", 
	    default_value => "undef", 
	    is_nullable => 1, 
	    size => 255 
	},
	"perl_editors_secondary",
    { 
	    data_type => "varchar", 
	    default_value => "undef", 
	    is_nullable => 1, 
	    size => 255 
	},
	

);
__PACKAGE__->set_primary_key("surveyid");

1;
