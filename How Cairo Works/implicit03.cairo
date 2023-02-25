%builtins pedersen

from starkware.cairo.common.cairo_builtins import HashBuiltin
from starkware.cairo.common.hash import hash2

func foo{pedersen_ptr : HashBuiltin*}() -> (z : felt){
    let (z) = hash2{hash_ptr=pedersen_ptr}(1, 2)
    // The previous statement rebinds the value of hash_ptr0.
    // If hash_ptr0 were used here, it would've referred to
    // the updated value, rather than foo's argument.
    return (z=z)
}

func main{pedersen_ptr : HashBuiltin*}() -> (){
    foo()
    return()
}