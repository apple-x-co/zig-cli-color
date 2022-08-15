const std = @import("std");

pub fn main() anyerror!void {
    const stdout = std.io.getStdOut();

    // Foreground color
    try stdout.writeAll("\u{001b}[30mBLACK\u{001b}[0m\n");
    try stdout.writeAll("\u{001b}[31mRED\u{001b}[0m\n");
    try stdout.writeAll("\u{001b}[32mGREEN\u{001b}[0m\n");
    try stdout.writeAll("\u{001b}[33mYELLO\u{001b}[0m\n");
    try stdout.writeAll("\u{001b}[34mBLUE\u{001b}[0m\n");
    try stdout.writeAll("\u{001b}[35mMAGENTA\u{001b}[0m\n");
    try stdout.writeAll("\u{001b}[36mCYAN\u{001b}[0m\n");
    try stdout.writeAll("\u{001b}[37mWHITE\u{001b}[0m\n");

    // Background color
    try stdout.writeAll("\u{001b}[40mBLACK\u{001b}[0m\n");
    try stdout.writeAll("\u{001b}[41mRED\u{001b}[0m\n");
    try stdout.writeAll("\u{001b}[42mGREEN\u{001b}[0m\n");
    try stdout.writeAll("\u{001b}[43mYELLO\u{001b}[0m\n");
    try stdout.writeAll("\u{001b}[44mBLUE\u{001b}[0m\n");
    try stdout.writeAll("\u{001b}[45mMAGENTA\u{001b}[0m\n");
    try stdout.writeAll("\u{001b}[46mCYAN\u{001b}[0m\n");
    try stdout.writeAll("\u{001b}[47mWHITE\u{001b}[0m\n");

    // Mix
    try stdout.writeAll("\u{001b}[42m\u{001b}[31mBG-GREEN x FG-RED\u{001b}[0m\n");
}
