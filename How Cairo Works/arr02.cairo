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
    return arr[0] * prod_of_rest;
}

func main{output_ptr : felt*}() {
    const ARRAY_SIZE = 4;

    // // Allocate an array.
    let (ptr) = alloc();

    // // Populate some values in the array.
    assert [ptr] = 2;
    assert [ptr + 1] = 3;
    assert [ptr + 2] = 5;
    assert [ptr + 3] = 7;

    let prod = array_prod(arr=ptr, size=ARRAY_SIZE);
    
    // [ap] = [ap-4], ap++;
    // let ptr = ptr-4;
    // jmp rel -4;
    // let sum = array_sum(arr=ptr, size=ARRAY_SIZE);

    serialize_word(prod);
    // serialize_word(sum);

    return ();
}