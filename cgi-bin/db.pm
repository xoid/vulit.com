package db;

use DBI;

my $user='vulit';
my $pass='vulit';

sub init
{
	my $dsn = "DBI:mysql:database=vulit";
    return DBI->connect($dsn, $user, $pas);
}

1;