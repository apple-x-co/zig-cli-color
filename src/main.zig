const std = @import("std");

fn do_something(s: []u8) !void {
    std.debug.print("{s}\n", .{s});
}

pub fn main() anyerror!void {
    const stdout = std.io.getStdOut();

    // Foreground color
    try stdout.writeAll(fgBlack("Foreground BLACK") ++ reset() ++ "\n");
    try stdout.writeAll(fgRed("Foreground RED") ++ reset() ++ "\n");
    try stdout.writeAll(fgGreen("Foreground GREEN") ++ reset() ++ "\n");
    try stdout.writeAll(fgYellow("Foreground YELLO") ++ reset() ++ "\n");
    try stdout.writeAll(fgBlue("Foreground BLUE") ++ reset() ++ "\n");
    try stdout.writeAll(fgMagenta("Foreground MAGENTA") ++ reset() ++ "\n");
    try stdout.writeAll(fgCyan("Foreground CYAN") ++ reset() ++ "\n");
    try stdout.writeAll(fgWhite("Foreground WHITE") ++ reset() ++ "\n");

    // Background color
    try stdout.writeAll(bgBlack("Background BLACK") ++ reset() ++ "\n");
    try stdout.writeAll(bgRed("Background RED") ++ reset() ++ "\n");
    try stdout.writeAll(bgGreen("Background GREEN") ++ reset() ++ "\n");
    try stdout.writeAll(bgYellow("Background YELLOW") ++ reset() ++ "\n");
    try stdout.writeAll(bgBlue("Background BLUE") ++ reset() ++ "\n");
    try stdout.writeAll(bgMagenta("Background MAGENTA") ++ reset() ++ "\n");
    try stdout.writeAll(bgCyan("Background CYAN") ++ reset() ++ "\n");
    try stdout.writeAll(bgWhite("Background WHITE") ++ reset() ++ "\n");

    // Mix
    try stdout.writeAll(bgBlack(fgCyan("Background BLACK x Foreground CYAN")) ++ reset() ++ "\n");
}

fn reset() []const u8 {
    return "\u{001b}[0m";
}

fn fgBlack(text: anytype) []const u8 {
    return "\u{001b}[30m" ++ text;
}

fn fgRed(text: anytype) []const u8 {
    return "\u{001b}[31m" ++ text;
}

fn fgGreen(text: anytype) []const u8 {
    return "\u{001b}[32m" ++ text;
}

fn fgYellow(text: anytype) []const u8 {
    return "\u{001b}[33m" ++ text;
}

fn fgBlue(text: anytype) []const u8 {
    return "\u{001b}[34m" ++ text;
}

fn fgMagenta(text: anytype) []const u8 {
    return "\u{001b}[35m" ++ text;
}

fn fgCyan(text: anytype) []const u8 {
    return "\u{001b}[36m" ++ text;
}

fn fgWhite(text: anytype) []const u8 {
    return "\u{001b}[37m" ++ text;
}

fn bgBlack(text: anytype) []const u8 {
    return "\u{001b}[40m" ++ text;
}

fn bgRed(text: anytype) []const u8 {
    return "\u{001b}[41m" ++ text;
}

fn bgGreen(text: anytype) []const u8 {
    return "\u{001b}[42m" ++ text;
}

fn bgYellow(text: anytype) []const u8 {
    return "\u{001b}[43m" ++ text;
}

fn bgBlue(text: anytype) []const u8 {
    return "\u{001b}[44m" ++ text;
}

fn bgMagenta(text: anytype) []const u8 {
    return "\u{001b}[45m" ++ text;
}

fn bgCyan(text: anytype) []const u8 {
    return "\u{001b}[46m" ++ text;
}

fn bgWhite(text: anytype) []const u8 {
    return "\u{001b}[47m" ++ text;
}
