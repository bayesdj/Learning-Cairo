func main(){
    // let x = ap
    // [x] = 0, ap++;
    [ap] = 1, ap++;
    [ap] = 7, ap++; // [x]-100, ap++;
    [ap] = 3, ap++;
    [ap] = [ap-1]+3, ap++;
    jmp rel -4;  // Jump to the previous instruction.
}