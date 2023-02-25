%builtins output range_check

from starkware.cairo.common.math import assert_in_range, assert_nn, assert_le
from starkware.cairo.common.serialize import serialize_word

func div{range_check_ptr}(x, y) -> (q : felt, r : felt){
    alloc_locals
    local q
    local r
    %{ ids.q, ids.r = ids.x // ids.y, ids.x % ids.y %}

    // Check that 0 <= x < 2**64.
    [range_check_ptr] = x
    assert [range_check_ptr + 1] = 2 ** 64 - 1 - x

    // Check that 0 <= y < 2**64.
    [range_check_ptr + 2] = y
    assert [range_check_ptr + 3] = 2 ** 64 - 1 - y

    // Check that 0 <= q < 2**64.
    [range_check_ptr + 4] = q
    assert [range_check_ptr + 5] = 2 ** 64 - 1 - q

    // Check that 0 <= r < y.
    [range_check_ptr + 6] = r
    assert [range_check_ptr + 7] = y - 1 - r

    // Verify that x = q * y + r.
    assert x = q * y + r

    let range_check_ptr = range_check_ptr + 8
    return (q=q, r=r)
}

func main{output_ptr: felt*, range_check_ptr}(){
    let (q,r) = div(2**64-1, 0)
    serialize_word(q)
    serialize_word(r)
    return()
}