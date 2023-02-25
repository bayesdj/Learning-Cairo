%builtins pedersen

from starkware.cairo.common.cairo_builtins import HashBuiltin

func hash2{hash_ptr: HashBuiltin* }(x, y) -> (
    z
){
    let hash = hash_ptr
    let hash_ptr = hash_ptr + HashBuiltin.SIZE
    // Invoke the hash function.
    hash.x = x
    hash.y = y
    // Return the updated pointer (increased by 3 memory cells)
    // and the result of the hash.
    return (z=hash.result)
}

func main{pedersen_ptr : HashBuiltin*}() -> (){
    let (z) = hash2{hash_ptr=pedersen_ptr}(3, 6 )
    return()
}