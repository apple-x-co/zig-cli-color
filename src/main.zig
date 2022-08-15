const std = @import("std");
const color = @import("cli-color.zig");

fn do_something(s: []u8) !void {
    std.debug.print("{s}\n", .{s});
}

pub fn main() anyerror!void {
    const stdout = std.io.getStdOut();

    // Foreground color
    try stdout.writeAll(color.fgBlack("Foreground BLACK") ++ color.reset() ++ "\n");
    try stdout.writeAll(color.fgRed("Foreground RED") ++ color.reset() ++ "\n");
    try stdout.writeAll(color.fgGreen("Foreground GREEN") ++ color.reset() ++ "\n");
    try stdout.writeAll(color.fgYellow("Foreground YELLO") ++ color.reset() ++ "\n");
    try stdout.writeAll(color.fgBlue("Foreground BLUE") ++ color.reset() ++ "\n");
    try stdout.writeAll(color.fgMagenta("Foreground MAGENTA") ++ color.reset() ++ "\n");
    try stdout.writeAll(color.fgCyan("Foreground CYAN") ++ color.reset() ++ "\n");
    try stdout.writeAll(color.fgWhite("Foreground WHITE") ++ color.reset() ++ "\n");

    // Background color
    try stdout.writeAll(color.bgBlack("Background BLACK") ++ color.reset() ++ "\n");
    try stdout.writeAll(color.bgRed("Background RED") ++ color.reset() ++ "\n");
    try stdout.writeAll(color.bgGreen("Background GREEN") ++ color.reset() ++ "\n");
    try stdout.writeAll(color.bgYellow("Background YELLOW") ++ color.reset() ++ "\n");
    try stdout.writeAll(color.bgBlue("Background BLUE") ++ color.reset() ++ "\n");
    try stdout.writeAll(color.bgMagenta("Background MAGENTA") ++ color.reset() ++ "\n");
    try stdout.writeAll(color.bgCyan("Background CYAN") ++ color.reset() ++ "\n");
    try stdout.writeAll(color.bgWhite("Background WHITE") ++ color.reset() ++ "\n");

    // Mix
    try stdout.writeAll(color.bgBlack(color.fgCyan("Background BLACK x Foreground CYAN")) ++ color.reset() ++ "\n");
}
