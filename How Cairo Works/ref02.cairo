func main() {
    // [fp] = 19, ap++;
    [ap] = 1, ap++;
    [ap] = 2, ap++;
    [ap] = 3, ap++;
    [ap] = 4, ap++;
    [ap] = 5, ap++;
    // let x = [[fp + 3] + 1];
    // [ap] = x;  // This will compile to [ap] = [[fp + 3] + 1].
    let x = [[fp]];
    [ap] = x;
    ret;
}