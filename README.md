# partition

A partition is the number of unique ways you can add positive integers to get a number n. The partitions of 4 are 1+1+1+1, 2+1+1. 2+2, 3+1, 4.

https://en.wikipedia.org/wiki/Partition_(number_theory)

Partitions came up in Algebra as the sizes of conjugate classes of symmetric groups and in the structure of finite abelian groups, so I wrote this short utility program.


Compiles from Haskell. Pretty simple program -- just builds a list -- so I doubt it could be significantly more efficient without starting to use graphics cards or something.

In my computer, it produces the 966,467 partitions of 60 in:

    $ time ./partition 60 > out.txt

    real  0m3.085s
    user  0m3.014s
    sys   0m0.049s

I think the time spent writing the 31 MB of data is a lot more significant than the time running the actual program.

Compile with 'make', run executable with a command line argument, like './partition n'.
Example:

    $ ./partition 4
    1 1 1 1
    2 1 1
    2 2
    3 1
    4

Remove object and executable files with 'make clean'.
