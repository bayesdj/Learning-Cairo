%builtins output range_check

from starkware.cairo.common.math import assert_in_range, assert_nn, assert_le
from starkware.cairo.common.serialize import serialize_word

func foo{range_check_ptr}(x) ->(q){
    alloc_locals
    local q
    %{ ids.q = ids.x//3 %}
    // assert_nn(x)
    [range_check_ptr] = x
    assert [range_check_ptr + 1] = 2 ** 128 - 1 - x
    // [range_check_ptr+2] = q
    // assert [range_check_ptr + 3] = 2 ** 128 - 1 - x
    assert x = 3*q
    let range_check_ptr = range_check_ptr + 2
    return(q)
}

func main{output_ptr: felt*, range_check_ptr}(){
    let q = foo(2*128-1)
    return()
}