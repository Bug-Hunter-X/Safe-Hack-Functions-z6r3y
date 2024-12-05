# Integer Overflow Bug in Hack

This repository demonstrates a subtle integer overflow bug in a simple Hack program.  The `bar` function calculates `foo(x) * 2`, where `foo(x)` is `x + 1`. If `x` is a very large positive integer, the addition in `foo` might cause an overflow.

The solution provided addresses this issue by adding appropriate checks for potential integer overflow before performing arithmetic operations.

## Bug Report:

The `bug.hack` file contains the original buggy code, while `bugSolution.hack` provides a corrected version. The bug is an integer overflow that may occur when the `bar` function receives a large input value.