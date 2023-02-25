%builtins output range_check

from starkware.cairo.common.math import assert_in_range, assert_nn, assert_le
from starkware.cairo.common.serialize import serialize_word

func foo{range_check_ptr}(x, y, z, w){
    assert_nn(w)
    // assert_le(z, w)
    // assert_le(y, z)
    assert_in_range(z, y, w+1)
    assert_in_range(x, 0, y+1)
    return()
}

func main{output_ptr: felt*, range_check_ptr}(){
    foo(0,3**18,3**18,2**128)
    return()
}