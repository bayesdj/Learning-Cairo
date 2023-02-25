func main(){
    div2(2)
    ret;
} 

func div2(x){
    %{ memory[ap] = 1 - (ids.x % 2) %}
    jmp odd if [ap] != 0, ap++;

    even:
    // Case n % 2 == 0.
    [ap] = x / 2, ap++;
    ret;

    odd:
    // Case n % 2 == 1.
    [ap] = x - 1, ap++;
    [ap] = [ap - 1] / 2, ap++;
    ret;
}