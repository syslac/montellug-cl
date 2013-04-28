#!/usr/bin/env perl

foreach (glob "*.txt"){ die "Esercizio Fallito" if ($_ ne "lorem.txt"); } print "Esercizio riuscito\n";
