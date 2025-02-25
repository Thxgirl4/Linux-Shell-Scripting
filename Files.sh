# File descriptors are integers that are associated with file input and output. They keep track of
# opened files. The best-known file descriptors are stdin, stdout, and stderr. We even can
# redirect the contents of one file descriptor to another. This recipe shows examples on how to
# manipulate and redirect with file descriptors.

# While writing scripts we use standard input (stdin), standard output (stdout), and standard
# error (stderr) frequently

# f 0: stdin (standard input)
# f 1: stdout (standard output)
# f 2: stderr (standard error)

# Redirecting or saving output text to a file can be done as follows:
        $ echo "This is a sample text 1" > temp.txt

# To append text to a file, consider the following example:
        $ echo "This is a sample text 2" >> temp.txt
# You can view the contents of the file as follows:
        $ cat temp.txt
# Let us see what a standard error is and how you can redirect it. stderr messages
# are printed when commands output an error message

    $ ls + > out.txt
    $ ls + 2> out.txt # works

# It is also possible to redirect stderr and stdout to a single file by converting
# stderr to stdout using this preferred method:
$ cmd 2>&1 output.txt
# Or the alternate approach:
$ cmd &> output.txt     