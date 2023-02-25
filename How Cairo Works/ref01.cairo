func main(){
    let x = ap;
    [x] = 3, ap++;
    [ap] = 1, ap++;
    [ap] = 2, ap++;
    [ap] = 5, ap++;
    my_loop:
    [ap] = [ap-3], ap++;
    jmp my_loop;  // Jump to the previous instruction.
}