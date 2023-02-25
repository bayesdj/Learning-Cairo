func main() {
    [fp] = 3, ap++;
    [ap] = 7, ap++;
    [ap] = 11, ap++;
    [ap] = [fp] + 10, ap++;
    [ap] = 1, ap++;
    jmp rel -4;
}