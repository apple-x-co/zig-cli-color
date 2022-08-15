const std = @import("std");
const color = @import("cli-color.zig");

// FIXME: "color.reset()" などを連結しないで出力すると、以下エラーが出る
// ./src/cli-color.zig:6:30: error: unable to evaluate constant expression
// return "\u{001b}[30m" ++ text;

// FIXME: 引数の text を anytype から []const u8 にすると、以下エラーが出る
// ./src/cli-color.zig:6:30: error: unable to evaluate constant expression
// return "\u{001b}[30m" ++ text;

pub fn main() anyerror!void {
    // Foreground color
    const stdout = std.io.getStdOut();
    try stdout.writeAll(color.fgBlack("Foreground BLACK") ++ color.reset() ++ "\n");
    try stdout.writeAll(color.fgRed("Foreground RED") ++ color.reset() ++ "\n");
    try stdout.writeAll(color.fgGreen("Foreground GREEN") ++ color.reset() ++ "\n");
    try stdout.writeAll(color.fgYellow("Foreground YELLO") ++ color.reset() ++ "\n");
    try stdout.writeAll(color.fgBlue("Foreground BLUE") ++ color.reset() ++ "\n");
    try stdout.writeAll(color.fgMagenta("Foreground MAGENTA") ++ color.reset() ++ "\n");
    try stdout.writeAll(color.fgCyan("Foreground CYAN") ++ color.reset() ++ "\n");
    try stdout.writeAll(color.fgWhite("Foreground WHITE") ++ color.reset() ++ "\n");

    // Background color
    std.debug.print("{s}\n", .{color.bgBlack("Background BLACK") ++ color.reset()});
    std.debug.print("{s}\n", .{color.bgRed("Background RED") ++ color.reset()});
    std.debug.print("{s}\n", .{color.bgGreen("Background GREEN") ++ color.reset()});
    std.debug.print("{s}\n", .{color.bgYellow("Background YELLOW") ++ color.reset()});
    std.debug.print("{s}\n", .{color.bgBlue("Background BLUE") ++ color.reset()});
    std.debug.print("{s}\n", .{color.bgMagenta("Background MAGENTA") ++ color.reset()});
    std.debug.print("{s}\n", .{color.bgCyan("Background CYAN") ++ color.reset()});
    std.debug.print("{s}\n", .{color.bgWhite("Background WHITE") ++ color.reset()});

    // Mix
    try stdout.writeAll(color.bgBlack(color.fgCyan("Background BLACK x Foreground CYAN")) ++ color.reset() ++ "\n");
}
