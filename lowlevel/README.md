# Low level challenge

Using only system libraries, in C, create a simple implementation of Curl (you can't just call libcurl.so).

Here is some functionality you can keep adding as you go along as you buildup the project

1. Give it the ability to have one command line argument (HTTP only), and it downloads the html for the page.
2. Add simple validation that the url is a valid format (don't worry about edge cases)
3. Add support for `-O` (capital o) to specify an output file.
4. Add support for binary files
5. Using something like openssl.so (or .dll ig if you're on windows), add support for HTTPS
6. Add support for specifying multiple files
    If `-O` is not specified, the files are output sequentially in the terminal in the order they are passed to the program
    If `-O` is specified, the files are put in a directory specified by the parameter. They could also download in parallel if you want

I don't know how much work all this is, don't feel bad if you can't finish all this. The goal is to have enough for you to work on.

# French

Just ask me, I'll explain it, I don't want to retype everything
