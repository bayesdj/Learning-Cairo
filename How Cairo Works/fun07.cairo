func main(){
    // Call fib(1, 1, 10).
    let ans = fib(1, 1, 10);
    ret;
    // fib(1, 1, 10)
    // Make sure the 10th Fibonacci number is 144.
    // [ap - 1] = 144
    // return()
}

func fib(first_element, second_element, n) -> (res: felt){
    jmp fib_body if n != 0;
    return( res = second_element );

    fib_body:
    // let a = second_element
    // let b = first_element + second_element
    // let c = n - 1
    return fib(second_element, first_element + second_element, n-1);
}