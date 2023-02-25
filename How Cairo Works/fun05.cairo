func foo(x, y) -> (z : felt, w : felt){
    [ap] = x + y, ap++;  // z.
    [ap] = x * y, ap++;  // w.
    ret;
}

func main(){
    // [ap] = 4, ap++;  // x.
    // [ap] = 5, ap++;  // y.
    // call foo
    // let foo_ret = [cast(ap - 2, foo.Return*)]
    // let foo_ret = foo(x=4, y=5)
    // [ap] = [ap - 1] + [ap - 2], ap++;  // Compute z + w.
    // [ap] = foo_ret.z + foo_ret.w, ap++;
    let (z, w) = foo(x=4, y=5)
    [ap] = z + w, ap++;
    // [ap] = z, ap++;
    // [ap] = z, ap++;
    // jmp rel -3
}