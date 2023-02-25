
func main(){
    from starkware.cairo.common.registers import get_ap
    from starkware.cairo.common.registers import get_fp_and_pc

    alloc_locals;
    let get_ap_res = get_ap();
    tempvar my_ap = get_ap_res.ap_val;

    let fp_and_pc = get_fp_and_pc();
    tempvar my_fp = fp_and_pc.fp_val;
    tempvar my_pc = fp_and_pc.pc_val;

    local __fp__ : felt* = fp_and_pc.fp_val;  // A.
    tempvar x = fp;  // B.
    tempvar y = [fp];  // C.
    ret;
}