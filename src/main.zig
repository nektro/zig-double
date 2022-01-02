const std = @import("std");
const testing = std.testing;
const double = @import("double").double;

test "basic double functionality" {
    try testing.expect(double(3) == 6);
}
