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
    // let a = arr[0]; // same as a = [arr]
    return arr[0] + sum_of_rest;
    // return a;
}

func main{output_ptr : felt*}() {
    const ARRAY_SIZE = 3;

    // // Allocate an array.
    let (ptr) = alloc();

    // // Populate some values in the array.
    assert [ptr + 2] = 9;
    assert [ptr + 1] = 16;
    assert [ptr] = 25;

    // // Call array_sum to compute the sum of the elements.
    let sum = array_sum(arr=ptr, size=ARRAY_SIZE);

    // // Write the sum to the program output.
    serialize_word(sum);
    serialize_word(3*-1206167596222043737899107594365023368541035738443865566657697352045290673491);

    return ();
}