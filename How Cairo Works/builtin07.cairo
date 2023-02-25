%builtins pedersen
from starkware.cairo.common.cairo_builtins import HashBuiltin
from starkware.cairo.common.hash import hash2

func hash3{hash_ptr: HashBuiltin*}(u, v, w) -> (z){
    let (z1) = hash2(u, v)
    let (z) = hash2(z1, w)
    return (z)
}

func main{pedersen_ptr: HashBuiltin*}(){
    let (z) = hash3{hash_ptr=pedersen_ptr}(u=1, v=2, w=3)
    return()
}