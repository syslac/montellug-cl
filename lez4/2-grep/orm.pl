# Jibberish piece of code from "perlayer" project
# Find the real one at github.com/syslac/perlayer

#!/usr/bin/perl

package Player::ORM;
use base Class::DBI::Sweet;
use Data::Dumper;

Player::ORM->connection('dbi:SQLite:dbname=player_stats');



sub top5 {
    my $self = shift;
    my @top = $self->retrieve_from_sql(qq{
        id >= 1
        ORDER BY played DESC
        LIMIT 5
        });
    foreach (@top){
        print $_->title.":\t".$_->played."\n";
    }
}
