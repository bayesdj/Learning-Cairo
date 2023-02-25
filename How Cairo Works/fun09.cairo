func main(){
    // [ap] = 2, ap++;
    // call foo;
    // // [ap] = 3, ap++;
    // call foo;
    // // [ap] = 4, ap++;
    call foo;
    call foo;
    call foo;
    // // [ap] = [ap] + 1; will not work
    [ap] = [ap-1], ap++;
    [ap] = [fp], ap++;
    [ap] = [ap-4], ap++;
    ret;
}

func foo(){
    // [fp] = 312, ap++;
    [ap] = 7000, ap++;
    ret;
}