#!/usr/bin/env perl -w
#
#-w means throw warnings

#Variables start with $ sign

$this="Hello";
$that="World";
#prints "Hello World"
print $this." ".$that."\n";

#String comparisons
# Equals eq
# Not Equals ne 
# Less than lt
# Greater than gt
# Less than or equals le
# Greater than or equals ge

#If then Else

if ($this eq 'Hello') {
    print "String $this does equal Hello";
} else {
    print "String $this does not equal Hello";
}
print "\n";

#While loop
$count = 1;
while ($count <= 10) {
    print "$count \n";
    $count +=1;
}
