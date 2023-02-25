%builtins pedersen
from starkware.cairo.common.cairo_builtins import HashBuiltin

func hash2{hash_ptr: HashBuiltin*}(u, v) -> (z: felt){
    let hash = hash_ptr
    hash.x = u
    hash.y = v
    let hash_ptr = hash_ptr + HashBuiltin.SIZE
    return (z=hash.result)
}

// not working 
// func hash4{hash_ptr: HashBuiltin*}(u, v, w) -> (z){
//     let hash = hash_ptr
//     hash.x = u
//     hash.y = v
//     let z1 = hash.result
//     let hash_ptr = hash_ptr + 3
//     let hash = hash_ptr
//     hash.x = z1
//     hash.y = w
//     let hash_ptr = hash_ptr + 3
//     return (z = hash.result)
// }

func hash3{hash_ptr: HashBuiltin*}(u, v, w) -> (z){
    let (z1) = hash2(u, v)
//     let (z) = hash2(z1, w)
//     return (z)
    return hash2(z1, w)
}

func main{pedersen_ptr: HashBuiltin*}(){
    let (z) = hash3{hash_ptr=pedersen_ptr}(u=1, v=2, w=3)
    return()
}