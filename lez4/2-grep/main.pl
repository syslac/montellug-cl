# Jibberish piece of code from "perlayer" project
# Find the real one at github.com/syslac/perlayer

#!/usr/bin/perl

package Player::ORM;
use base Class::DBI::Sweet;
use Data::Dumper;

Player::ORM->connection('dbi:SQLite:dbname=player_stats');

my $stats = sub {
    my $top = shift;
    $top //= 'a';
    if ($top eq 'a'){
        Player::Album->top5();
    }
    elsif ($top eq 't'){
        Player::Song->top5();
    }
    elsif ($top eq 'p'){
        Player::Artist->top5();
    }
    else {
        Player::Album->top5();
    }
};
