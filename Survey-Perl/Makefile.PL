#!/usr/bin/env perl
use inc::Module::Install;

name 'Survey-Perl';
all_from 'lib/Survey/Perl.pm';

requires 'Catalyst::Runtime' => '5.80006';
requires 'Catalyst::Plugin::ConfigLoader';
requires 'Catalyst::Plugin::Static::Simple';
requires 'Catalyst::Action::RenderView';
requires 'Catalyst::Controller::reCAPTCHA';
requires 'Catalyst::Plugin::Session';
requires 'Catalyst::Plugin::Session::Store::FastMmap';
requires 'Catalyst::Plugin::Session::State::Cookie';
requires 'Catalyst::View::TT';

requires 'parent';
requires 'Config::General'; # This should reflect the config file format you've chosen
catalyst;

requires 'Catalyst::Plugin::Authentication';
requires 'Catalyst::Plugin::Authorization::Roles';
requires 'Catalyst::Plugin::Session';
requires 'Catalyst::Plugin::Session::State::Cookie';
requires 'Catalyst::Plugin::Session::Store::FastMmap';
requires 'Catalyst::Authentication::Store::DBIx::Class';
requires 'Catalyst::Authentication::Credential::HTTP';
requires 'DBIx::Class::EncodedColumn';
requires 'Config::JFDI';

install_script glob('script/*.pl');
auto_install;
WriteAll;
