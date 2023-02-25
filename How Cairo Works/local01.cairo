func main(){
    alloc_locals;
    local x;  // x will be a reference to [fp + 0].
    local y;  // y will be a reference to [fp + 1].

    x = 1;
    y = 7;
    [ap] = 10, ap++;
    [ap] = [fp];
    ret;
}