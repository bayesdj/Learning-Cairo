%builtins pedersen

from starkware.cairo.common.cairo_builtins import HashBuiltin
from starkware.cairo.common.hash import hash2

func foo{hash_ptr : HashBuiltin*}() -> (z : felt){
    let (z) = hash2(1, 2)
    // The previous statement rebinds the value of hash_ptr.
    // If hash_ptr were used here, it would've referred to the
    // updated value, rather than foo's argument.
    return (z=z)
}

func main{pedersen_ptr : HashBuiltin*}() -> (){
    foo{hash_ptr=pedersen_ptr}()
    return()
}