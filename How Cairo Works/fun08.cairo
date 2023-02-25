func main(){
    // let ans = exp2(1, 5, 2)
    // ret;
    exp(2, 7);
    // [ap-1] = 16;
    return();
}

func exp(x: felt, n: felt){
    // let res = exp2(acc=1, n=n, base=x)
    // ret;
    return exp2(acc=1, n=n, base=x);
}

func exp2(acc, n, base){ 
    jmp body if n != 0;
    [ap] = acc, ap++;
    ret; 
    // return (res = acc)

    body:
    // [ap] = acc*base, ap++;
    // [ap] = n-1, ap++;
    // [ap] = base, ap++;
    // call exp2
    // ret;
    return exp2(acc*base, n-1, base);
}