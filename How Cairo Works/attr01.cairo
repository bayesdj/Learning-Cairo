from starkware.cairo.common.math import assert_not_zero

func inverse(x) -> (res : felt){
    with_attr error_message("x must not be zero. Got x={x}."){
        return (res=1 / x)
    }
}

func assert_not_equal(a, b){
    let diff = a - b
    with_attr error_message("a and b must be distinct."){
        inverse(diff)
    }
    return ()
}

func main(){
    // let ans = exp2(1, 5, 2)
    // ret;
    assert_not_equal(2,2)
    // [ap-1] = 16
    return()
}
