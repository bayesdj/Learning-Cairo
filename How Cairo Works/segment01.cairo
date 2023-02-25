%builtins output

func main(output_ptr : felt*) -> (output_ptr : felt*){
    [ap] = output_ptr, ap++;
    %{
        print('ap =', ap)
        print('[ap - 1] =', memory[ap - 1])
        print()
    %}
    assert [output_ptr] = 12
    return (output_ptr=output_ptr + 1)
}