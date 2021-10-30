# in perl the program name is $0
$program_name = $0;

# in perl the first command line argument is $ARGV[0].  
# also, it won't throw an exception if there is no $ARGV[1] or [2] or etc.  
$arg0 = $ARGV[0];
$arg1 = $ARGV[1];
$arg2 = $ARGV[2];
$arg3 = $ARGV[3];

# perl does not have "argc".  Instead, you can get the length of the ARGV array through the 'hack' below
$argc = @ARGV;

# show the values!
print "program name is : " . $program_name . "\n";
print "argument 0 is : " . $arg0 . "\n";
print "argument 1 is : " . $arg1 . "\n";
print "argument 2 is : " . $arg2 . "\n";
print "argument 3 is : " . $arg3 . "\n";
print "argc is : " . $argc . "\n";
