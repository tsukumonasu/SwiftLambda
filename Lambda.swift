func fib(x: Int) -> (Int) {
    return x <= 1 ? x :fib(x - 1) + fib(x - 2)
}

for i in (1..<21) {
    print("\(i)のとき=\(fib(i))")
}

func fizzbuzz(x: Int) -> (String) {
    switch (x % 3, x % 5) {
    case (0, 0): return "Fizz Buzz"
    case (0, _): return "Fizz"
    case (_, 0): return "Buzz"
    case (_, _): return "\(x)"
    }
}

for i in (1..<31) {
    print("\(i)のとき=\(fizzbuzz(i))")
}
