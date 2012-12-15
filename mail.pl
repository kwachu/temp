#!/usr/bin/perl
use strict;
use warnings;

use Email::Sender::Simple qw(sendmail);
use Email::Sender::Transport::SMTP ();
use Email::Simple ();
use Email::Simple::Creator ();

my $smtpserver = 'e-dodo.pl';
my $smtpport = 587;
my $smtpuser   = 'biker@e-dodo.pl';
my $smtppassword = 'qwe123.7';

my $transport = Email::Sender::Transport::SMTP->new({
  host => $smtpserver,
  port => $smtpport,
  sasl_username => $smtpuser,
  sasl_password => $smtppassword,
});

my $email = Email::Simple->create(
  header => [
    Date    => 'Tue, 12 Dec 2012 12:12:12 +0100 (CET)',
    To      => 'kwachuone@gmail.com',
    From    => 'biker@e-dodo.pl',
    Subject => 'konkurs',
  ],
  body => "Wiadomosc z przyszlosci\n",
);

sendmail($email, { transport => $transport });
