%builtins output

from starkware.cairo.common.alloc import alloc
from starkware.cairo.common.serialize import serialize_word

// // Computes the sum of the memory elements at addresses:
// //   arr + 0, arr + 1, ..., arr + (size - 1).
func array_sum(arr : felt*, size) -> felt {
    if (size == 0) {
        return 0;
    }

    // // size is not zero.
    let sum_of_rest = array_sum(arr=arr + 1, size=size - 1);
    return [arr] + sum_of_rest;
}

func array_prod(arr : felt*, size) -> felt {
    if (size == 0) {
        return 1;
    }

    // // size is not zero.
    let prod_of_rest = array_prod(arr=arr + 2, size=size - 2);
    return arr[1] * prod_of_rest;
}

func main{output_ptr : felt*}() {
    const ARRAY_SIZE = 2;

    // // Allocate an array.
    let (ptr) = alloc();

    // // Populate some values in the array.
    assert [ptr] = 2;
    assert [ptr + 1] = 3;
    assert [ptr + 2] = 5;
    assert [ptr + 3] = 7;
    assert [ptr + 4] = 1;
    assert [ptr + 5] = 6;

    let prod = array_prod(arr=ptr, size=6);
    serialize_word(prod);
    return ();
}