%builtins output

from starkware.cairo.common.serialize import serialize_word

func main{output_ptr : felt*}(){
    #serialize_word('i love you')
    serialize_word(6/3)
    serialize_word(7/3*3)
    serialize_word(1206167596222043737899107594365023368541035738443865566657697352045290673496*3-7)
    return ()
}