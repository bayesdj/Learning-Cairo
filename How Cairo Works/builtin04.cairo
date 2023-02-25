%builtins pedersen
// from starkware.cairo.common.cairo_builtins import HashBuiltin

func hash2(hash_ptr, x, y) -> (hash_ptr, z){
    // Invoke the hash function.
    x = [hash_ptr]
    y = [hash_ptr + 1]
    // Return the updated pointer (increased by 3 memory cells)
    // and the result of the hash.
    return (hash_ptr=hash_ptr + 3, z=[hash_ptr + 2])
}

func hash4(hash_ptr, u, v, w) -> (hash_ptr, z){
    u = [hash_ptr]
    v = [hash_ptr + 1]
    tempvar z0 = [hash_ptr + 2]
    let hash_ptr = hash_ptr + 3
    z0 = [hash_ptr]
    w = [hash_ptr + 1]
    // let z = [hash_ptr + 2]
    return (hash_ptr=hash_ptr + 3, z=[hash_ptr + 2])
}

// this works
func hash3(hash_ptr, u, v, w) -> (hash_ptr, z){
    let (p, z1) = hash2(hash_ptr, u, v)
    // let (p1, z) = hash2(p, z1, w)
    return hash2(p, z1, w)
}

func main{pedersen_ptr}(){
    let (pedersen_ptr, z) = hash4(hash_ptr = pedersen_ptr, u=1, v=2, w=3)
    return()
}