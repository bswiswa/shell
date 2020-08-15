# note that all variables are in global scope except for function parameters
# so if you want to declare a local variable in a function, you must
# declare it as a parameter but you don't have to pass in a value.
# if you don't declare it as a parameter, that variable is global and its
# value is persistent across multiple invocations of the function

function subtractAndAddOne(a, b, c){
    c = 1;
    return (a-b+c);
}
BEGIN {
    print subtractAndAddOne(3,2);
}
