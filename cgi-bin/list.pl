#!/usr/bin/perl

use CGI;
use HTML::Template::Pro;
use strict;
use db;

my $db = db->new() or die 'Cant db init';

my $tmpl = HTML::Template::Pro->new(filename => 'tmpl/list.tmpl');

my %param = (
				TITLE 		=> 'мои суперпосты',
				KEYWORDS	=> 'linux, perl',
				DESCRIPTION => 'yet another IT hints diary',
				POSTS 	=> db->posts()
			);

$tmpl->param(%param);
print "Content-type: text/html\n\n";
print $template->output();
