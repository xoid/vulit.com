package db;

use DBI;

my $user='vulit';
my $pass='vulit';

sub init
{
	my $dsn = "DBI:mysql:database=vulit";
    return DBI->connect($dsn, $user, $pass);
}

sub new
{
	my %self;
	$self{dbh} = init();
	return bless %self;
}

sub posts
{
	my $self=shift;
	my $sql = "SELECT * FROM posts";
	return $self->{dbh}->selectall_arrayref($sql) or die 'Cant posts.selectall';
}

1;