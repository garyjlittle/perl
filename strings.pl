#!/usr/bin/env perl

#Single quoted strings are literal, the \n has no effect in single quoted strings.
print 'This has a \n in it';
print "\n";

#Double quoted strigs allow control characters e.g \n is treated as a special char.
print "This has an escape character newline now->\nThis will be on the following line";
print "\n";

#Concatonation is via "." operator
print "First "." Second\n";

#Strings can be multiplied.  Notice "x" not "*" for multiplication of strings.
print "Wow " x 5;
print "\n";
