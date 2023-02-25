func pow4(n) -> (m : felt){
    // alloc_locals
    // local x
    jmp body if n != 0;
    [fp] = 0, ap++;
    ret;

    body:
    alloc_locals;
    local x = n * n;
    [ap] = x * x, ap++;
    ret;
}

func main(){
    pow4(n=0);
    ret;
}