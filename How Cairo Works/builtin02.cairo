%builtins output pedersen

from starkware.cairo.common.cairo_builtins import HashBuiltin
// from starkware.cairo.common.hash import hash2

// Implicit arguments: addresses of the output and pedersen
// builtins.
func main{output_ptr, pedersen_ptr : HashBuiltin*}(){
    // The following line implicitly updates the pedersen_ptr
    // reference to pedersen_ptr + 3.
    let (pedersen_ptr, z) = hash2(hash_ptr = pedersen_ptr, u=1, v=2)
    assert [output_ptr] = z

    // Manually update the output builtin pointer.
    let output_ptr = output_ptr + 1

    // output_ptr and pedersen_ptr will be implicitly returned.
    return ()
}

func hash2(hash_ptr : HashBuiltin*, u, v) -> (hash_ptr : HashBuiltin*, z){
    let hash = hash_ptr 
    // Invoke the hash function.
    hash.x = u
    hash.y = v
    // Return the updated pointer (increased by 3 memory cells)
    // and the result of the hash.
    return (hash_ptr = hash_ptr + HashBuiltin.SIZE, z=hash.result)
    // return (z=hash.result)
}