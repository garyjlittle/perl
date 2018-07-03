#!/usr/bin/env perl -w
#
# Perl uses the term "Subroutines" for functions & Procedures. 
# Subroutines are defined with the word "sub" and called with &functionname.
#
# Perl has a weird idiom whereby the result of the last "expression"  becomes the return value
# result.  This is OK in simple case but is very weird generally.  See below example.
#
# functions have access to global variables natively e.g.
#
sub add_to_n {
    $n=$n+1;
}

sub add_to_n_and_print {
    $n=$n+1;
    print "Added to make $n\n";
}
$n=0;
print "n is $n \n";
#Call the function.
&add_to_n;
print "n is $n \n";
$ret=&add_to_n;
print "n is $n \n";
print "ret  is $ret \n";
#Call simuar function, with a print statement before returning.
$ret=&add_to_n_and_print;
print "n is $n \n";
print "ret  is $ret \n";
#In this case $ret == 1 because "1" is the return value of print and "print" is the
#last expression in the function (even though $n=$n+1 was the last *calcualtion*.
#
#
# Parameters
#
# Parameters passed into functions are assigned to $_[] array inside the function
#
# To make private variables use "my $var"
#
sub addtwo {
    #Use the list form of $_[]
    my($n,$k)=@_;
    $n+$k;
}

print "n is $n \n";
print "Calling addtwo with private variable n\n";
$ret=&addtwo(9,1);
print "n is $n \n";
print "ret  is $ret \n";

# Using variable length parameter lists.  e.g. return the max from a sequence
sub return_max {
    #Use shift to pull a value from the incoming array.  Always use "my"
    #to avoid colliding with global variables.
    my $max=shift @_;
    #Iterate over the array of parameters passed to this function.
    foreach $k (@_) {
        print "max = $max k = $k \n";
        if ($k > $max) {
            $max = $k;
        } 
        print "max = $max k = $k \n";
    }
    return $max
}

$ret=&return_max(9,1,2,11,3,4,5);
print "Max value is $ret \n";


