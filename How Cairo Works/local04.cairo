func pow4(n) -> (m : felt){
    // alloc_locals
    // local x
    jmp body if n != 0;
    [ap] = 0, ap++;
    ret;

    body:
    tempvar x = n*n*n*n;
    ret;
}

func main(){
    pow4(n=7);
    ret;
}