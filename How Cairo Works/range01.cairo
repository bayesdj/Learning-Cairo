%builtins range_check

from starkware.cairo.common.math import assert_in_range

func foo{range_check_ptr}(x){
    let a = assert_in_range(x, 0, 2**200)
    return()
}

func main{range_check_ptr}(){
    foo(44)
    ret;
}