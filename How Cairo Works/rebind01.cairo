func foo(x){
    let y = 1;
    jmp x_not_zero if x != 0;

    x_is_zero:
    [ap] = y, ap++;  // y == 1.
    let y = 2;
    [ap] = y, ap++;  // y == 2.
    jmp done;

    x_not_zero:
    [ap] = y, ap++;  // y == 1.
    let y = 3;
    [ap] = y, ap++;  // y == 3.

    done:
    // Here, y is revoked, and cannot be accessed.
    // [ap] = y, ap++;
    ret;
}

func main(){
    foo(x=7);
    ret;
}