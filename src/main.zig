const std = @import("std");
const testing = std.testing;
const mul = @import("mul").mul;
const two = @import("num").two;

pub export fn double(a: i32) i32 {
    return mul(a, two);
}

test "basic double functionality" {
    testing.expect(double(3) == 6);
}
