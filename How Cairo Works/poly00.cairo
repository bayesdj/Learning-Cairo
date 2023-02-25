func main(){
    [ap] = 100, ap++;
    [ap] = [fp] * [fp], ap++;         // x * x (x^2)
    [ap] = [ap - 1] * [fp], ap++;     // x^2 * x (x^3)
    [ap] = [ap - 2] * 23, ap++;       // x^2 * 23
    [ap] = [fp] * 45, ap++;           // x * 45
    [ap] = [ap - 3] + [ap - 2], ap++; // x^3 + x^2 * 23
    [ap] = [ap - 1] + [ap - 2], ap++; // x^3 + x^2 * 23 + x * 45
    [ap] = [ap - 1] + 67, ap++;       // x^3 + x^2 * 23 + x * 45 + 67
    ret;;
}