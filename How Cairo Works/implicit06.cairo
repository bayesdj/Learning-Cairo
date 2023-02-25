from starkware.cairo.common.cairo_builtins import HashBuiltin
from starkware.cairo.common.hash import hash2

func bar{hash_ptr : HashBuiltin*}(x){
    if x == 0:
        hash2(1, 2)
        tempvar hash_ptr = hash_ptr
    else:
        tempvar hash_ptr = hash_ptr
    }

    hash2(3, 4)
    return ()
}