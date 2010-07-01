#!/usr/bin/perl -w

use strict;

use FindBin qw($Bin);
use Mail::ExpandAliases;
use File::Spec::Functions qw(catfile);
use Test::More;

my ($aliases_file, $m);
BEGIN {
    plan tests => 3;
}

use_ok("Mail::ExpandAliases");

$aliases_file = catfile($Bin, "aliases");

ok(defined($m = Mail::ExpandAliases->new($aliases_file)));
ok(defined $m->exists("nobody"));
