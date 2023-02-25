%builtins pedersen

from starkware.cairo.common.cairo_builtins import HashBuiltin
from starkware.cairo.common.hash import hash2

func foo(hash_ptr : HashBuiltin*) -> (
    hash_ptr : HashBuiltin*, z
){
    // Use a with-statement, since 'hash_ptr' is not an
    // implicit argument.
    with hash_ptr:
        let (z) = hash2(1, 2)
    }
    return (hash_ptr=hash_ptr, z=z)
}

func main{pedersen_ptr : HashBuiltin*}() -> (){
    let (pedersen_ptr, z) = foo(pedersen_ptr)
    return()
}