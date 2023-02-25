%builtins pedersen
// from starkware.cairo.common.cairo_builtins import HashBuiltin

func hash2(hash_ptr, x, y) -> (hash_ptr, z){
    // Invoke the hash function.
    x = [hash_ptr]
    y = [hash_ptr + 1]
    // Return the updated pointer (increased by 3 memory cells)
    // and the result of the hash.
    // let z1 = [hash_ptr+2] // both let and tempvar work
    // return (hash_ptr=hash_ptr + 3, z=z1)
    let hash_ptr=hash_ptr + 3
    return (hash_ptr, [hash_ptr-1])
}

func main{pedersen_ptr}(){
    let (pedersen_ptr, z) = hash2(hash_ptr = pedersen_ptr, x=1, y=2)
    return()
}