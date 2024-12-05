```hack
function foo(x: int): int {
  if (x > 2147483646) { // Check for potential overflow before addition
    return 0; // or throw an exception for better handling
  }
  return x + 1;
}

function bar(x: int): int {
  $fooResult = foo(x);
  if ($fooResult > 2147483646 / 2) { //check before multiplication to prevent overflow
    return 0; // or throw an exception for better handling
  }
  return $fooResult * 2;
}

function main(): void {
  echo bar(5);
  echo bar(2147483646);
}
```