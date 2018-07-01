#!/usr/bin/env perl -w
#
print "Enter two lines\n";
$line = <STDIN>;
print ">>>>".$line."<<<<\n";
# Use chomp to get rid of newline.
chomp($line);
print ">>>>".$line."<<<<\n";
# It turns out that print ">>>".chomp($line)."<<<" yeilds
# ">>>1<<<" where "1" is the return value of chomp (chomp does not return the stirng
# but acts directly upon it.  Can optimize with chomp($line = <STDIN>)
chomp($line = <STDIN>);
print "XXXX".$line."XXXX\n";


