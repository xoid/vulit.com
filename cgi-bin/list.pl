#!/usr/bin/perl

use CGI;
use CGI::FastTemplate;
use strict;

print "Content-type: text/html\n\n";

print "Hello world\n";

CGI::FastTemplate->set_root('tmpl/');
my $tpl = new CGI::FastTemplate('list.tmpl');

$tpl->define( main    => "main.tpl",
                row     => "table_row.tpl",
                all     => "table_all.tpl",
                );

$tpl->assign(TITLE => "I am the title.");

my %defaults = (    #FONT   => "<font size=+2 face=helvetica>",
                    EMAIL   => 'jmoore@sober.com',
                    );   
$tpl->assign(\%defaults);

  $tpl->parse(ROWS      => ".row");      ## the '.' appends to ROWS
  $tpl->parse(CONTENT   => ["row", "all"]);
  $tpl->parse(CONTENT   => "main");

  $tpl->print();            ## defaults to last parsed
  $tpl->print("CONTENT");   ## same as print() as "CONTENT" was last parsed

  $ref = $tpl->fetch("CONTENT");        


