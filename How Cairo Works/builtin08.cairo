%builtins output pedersen
from starkware.cairo.common.cairo_builtins import HashBuiltin
from starkware.cairo.common.hash import hash2
from starkware.cairo.common.alloc import alloc
from starkware.cairo.common.serialize import serialize_word

func hashn{hash_ptr: HashBuiltin*}(arr: felt*, size) -> (z){
    if size == 2:
        let (z) = hash2([arr], [arr+1])
        // tempvar hash_ptr = hash_ptr
        return (z)
    else:
        let v = [arr+size-1]
        let (x) = hashn(arr=arr, size=size-1)
        let (z) = hash2(x, v)
        // tempvar hash_ptr = hash_ptr
        return (z)
    }
}

func main{output_ptr: felt*, pedersen_ptr: HashBuiltin*}(){
    const ARRAY_SIZE = 5

    // Allocate an array.
    let (ptr) = alloc()

    // Populate some values in the array.
    assert [ptr] = 1
    assert [ptr + 1] = 2
    assert [ptr + 2] = 3
    assert [ptr + 3] = 0
    assert [ptr + 4] = 7

    // Call array_sum to compute the sum of the elements.
    let (h) = hashn{hash_ptr=pedersen_ptr}(arr=ptr, size=ARRAY_SIZE)

    // Write the sum to the program output.
    serialize_word(h)
    return ()
}