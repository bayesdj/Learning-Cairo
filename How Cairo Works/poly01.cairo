func main(){
    tempvar x = 100;
    // // tempvar x2 = x * x
    // // tempvar x3 = x2 * x
    tempvar x4 = x*x*x + 23*x*x + 45*x + 67;

    // // [ap] = [ap - 1] + 67, ap++;       // x^3 + x^2 * 23 + x * 45 + 67
    // // [ap] = [fp] * [fp], ap++;         // x * x (x^2)
    // // [ap] = [ap - 1] * [fp], ap++;     // x^2 * x (x^3)
    // // [ap] = [ap - 2] * 23, ap++;       // x^2 * 23
    // // [ap] = [fp] * 45, ap++;           // x * 45
    // // [ap] = [ap - 3] + [ap - 2], ap++; // x^3 + x^2 * 23
    // // [ap] = [ap - 1] + [ap - 2], ap++; // x^3 + x^2 * 23 + x * 45
    // // [ap] = [ap - 1] + 67, ap++;       // x^3 + x^2 * 23 + x * 45 + 67
    ret;;
}