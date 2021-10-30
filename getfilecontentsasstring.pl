### begin reusable code ###

sub get_file_contents_as_string
{
    $input_file_name = $_[0];

    open(INPUTFILE, '<', $input_file_name);

    my $retVal = "";

    while(<INPUTFILE>)
    {
        $retVal .= $_;
    }

    close(INPUTFILE);

    return $retVal;
}

### end reusable code ###

##################################################################################

### begin demo ###

# 1. get inputs
my $file_name = $ARGV[0];

# 2. call the code
my $file_contents = get_file_contents_as_string($file_name);

# 3. show the output
print $file_contents;

### end demo ###