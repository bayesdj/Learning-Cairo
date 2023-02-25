
func main(){
    [ap] = 25, ap++;
    %{
        import math
        memory[ap] = int(math.sqrt(memory[ap - 1]))
    %}
    [ap - 1] = [ap] * [ap], ap++;
    ret;
}
// func main(){
//     [ap] = 25, ap++;
//     [ap] = 5
//     [ap - 1] = [ap] * [ap], ap++;
//     ret;
// }
