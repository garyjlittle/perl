#!/usr/bin/env perl -w
#
open DATA,"<nc_heat_index.txt";

#Small file
@lines = <DATA>;
foreach $line (@lines) {
    print $line
}


