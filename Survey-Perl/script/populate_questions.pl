#!/usr/bin/env perl
use warnings;
use strict;
use FindBin qw/$Bin/;
use lib "$Bin/../lib";
use PerlSurvey::Schema;

my $dispatch = {
    ac_textbox => sub {
        my ($item, $section, $rs) = @_;
        $item->{section} = $section->first;
        $item->{validation} = qr/^.*?$/;
        $rs->create($item);
    },
    likert => sub {
        my ($item, $section, $rs) = @_;
        $item->{validation} = qr/^[0-7]$/;
        $item->{section} = $section->first;
        $rs->create($item);
    },
    multiselect => sub {
        my ($item, $section, $rs) = @_;
        foreach my $l (@{$item->{labels}}) {
            $l =~ s/\s/_/g;
            $l = lc($l);
            my $row = { field => $item->{field} . "_" . $l,
                     title => $item->{title},
                     section => $section->first,
                 };
            $rs->create($row);
        }
    },

    radio_list => sub {
        my ($item, $section, $rs) = @_;
        $item->{section} = $section->first;
        my $max = $#{$item->{labels}} + 1;
        $item->{validation} = qr/[1-$max]/;
        delete $item->{labels};
        $DB::single=1;
        $rs->create($item);
    },

    textarea => sub {
        my ($item, $section, $rs) = @_;
        $item->{section} = $section->first;
        $item->{validation} = qr/^.*?$/;
        $rs->create($item);
    },

    textbox => sub {
        my ($item, $section, $rs) = @_;
        $item->{section} = $section->first;
        $item->{validation} = qr/^.*?$/;
        $rs->create($item);
    },
};


my $data = do "$Bin/../survey/en.pl";
my $dsn = "dbi:SQLite:dbname=$Bin/../db/survey.db";
my $schema = PerlSurvey::Schema->connect($dsn);
foreach my $section (@$data) {
    my $sec_rs = $schema->resultset('Section');
    my $sect = shift @$section;
    $sec_rs->create({ title => $sect->{section_title}});
    warn "Section " . $sect->{section_title} . "\n";
    foreach my $q (@$section) {
        my $rs = $schema->resultset('Question');
        next if $q->{type} eq 'heading';
        warn "Creating " . $q->{title} . " of " . $q->{type} . "\n";
        $dispatch->{$q->{type}}->($q, $sec_rs, $rs);
    }
}

__END__

=head1 SCHEMA

create table sections (
  id integer primary key,
  title text
);

create table questions (
  field varchar(128),
  title text,
  type text,
  validation text,
  section integer,
  foreign key (section) references sections(id),
  primary key (field)
);

create table user (
     userid integer primary key,
     sessionid varchar(128),
     username varchar (64),
     email varchar(128),
     language char(10)
);

create table answers (
   id integer primary key,
   user integer,
   field varchar(128),
   answer text,
   time_entered char(19) default current_timestamp,
   useragent text,
   foreign key (user) references user(userid),
   foreign key (field) references questions(field)
   );


2010-02-21 03:59:47
