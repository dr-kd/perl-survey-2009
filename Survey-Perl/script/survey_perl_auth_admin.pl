#!/usr/bin/perl -w

use strict;
use warnings;
use Pod::Usage;
use Getopt::Long;
use FindBin qw/$Bin/;
use lib "$Bin/../lib";

use Survey::Perl::Auth::Schema;

my $user = undef;
my $passwd = undef;
my $help = undef;
my $role = undef;
my $email = undef;
my $schema = Survey::Perl::Auth::Schema->connect("dbi:SQLite:$Bin/../db/auth.db");

GetOptions(
    'user=s'    => \$user,
    'pass|password|passwd=s' => \$passwd,
    'role:s' => \$role,
    'help' => \$help,
    'email:s' => \$email,
);

pod2usage(1) if ( $help || !$user || !$passwd );

add_user($schema, $user,$passwd,$role, $email);

sub add_user {
    my ($schema, $user, $passwd, $role, $email ) = @_;
    my %user_insert = (
        username => $user,
        password => $passwd,
        email   => $email,
        role_text => $role,
    );

    my $role_rs = undef;
    if ($role) {
        $role_rs = $schema->resultset('Role')->find_or_create({role => $role});
        $user_insert{role_text} = $role;
    }
    my $user_rs = $schema->resultset('User')->create(\%user_insert);
    if ($role_rs) {
        my $user_role_rs = $schema->resultset('UserRole')
            ->create({ user => $user_rs,
                       roleid => $role_rs});
    }
}

=head1 NAME

survey_perl_auth_admin.pl - Sets the username and password for the generated authentication database

=head1 SYNOPSIS

survey_perl_auth_admin.pl -user username -passwd password [-role role]

 Options:
   -user      username
   -passwd    password
   -role      role (optional)
   -email     email address (optional)
   -help      display this help and exit

=cut
