const mul = @import("mul").mul;
const two = @import("num").two;

pub fn double(a: i32) i32 {
    return mul(a, two);
}
