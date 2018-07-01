#!/usr/bin/env perl

#Single quoted strings are literal
print 'This has a \n in it';
print "\n";

#Double quoted strigs allow control characters e.g \n is treated as a special char.
print "This has an escape character newline now->\nThis will be on the following line";
print "\n";
