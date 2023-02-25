func main(){
    [fp] = 11, ap++;
    // [ap] = 2, ap++;
    call foo;
    call foo;
    call foo;
    call foo;
    // [ap] = [ap] + 1; will not work
    // [ap] = [fp];

    ret;
}

func foo(){
    // [fp] = 312, ap++;
    [ap] = 1000, ap++;
    ret;
}