func main() {
    let x = [ap];
    [ap] = 1, ap++;
    [ap] = 2, ap++;
    [ap] = 5, ap++;

    [ap] = x, ap++;
    jmp rel -7;  // Jump to the previous instruction.
}