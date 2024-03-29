const Builder = @import("std").build.Builder;
const deps = @import("./deps.zig");

pub fn build(b: *Builder) void {
    const mode = b.standardReleaseOptions();
    const lib = b.addStaticLibrary("zig-double", "src/main.zig");
    lib.setBuildMode(mode);
    deps.addAllTo(lib);
    lib.install();

    var main_tests = b.addTest("src/main.zig");
    deps.addAllTo(main_tests);
    main_tests.setBuildMode(mode);

    const test_step = b.step("test", "Run library tests");
    test_step.dependOn(&main_tests.step);
}
