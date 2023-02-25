%builtins output range_check

from starkware.cairo.common.math import assert_in_range, split_felt
from starkware.cairo.common.serialize import serialize_word


func main{output_ptr: felt*, range_check_ptr}(){
    let (hi, lo) = split_felt(2**0-1)
    assert_in_range(hi, 0, 2**72)
    assert_in_range(lo, 0, 2**128)
    serialize_word(hi)
    serialize_word(lo)
    return()
}