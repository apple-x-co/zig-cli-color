const std = @import("std");

pub fn reset() []const u8 {
    return "\u{001b}[0m";
}

fn format(comptime fmt: []const u8, text: []const u8) []const u8 {
    var allocator = std.heap.page_allocator;
    const buffer = std.fmt.allocPrint(allocator, fmt, .{text}) catch @panic("allocPrint");
    // defer allocator.free(buffer);

    return buffer;
}

pub fn fgBlack(text: []const u8) []const u8 {
    return format("\u{001b}[30m{s}", text);
}

pub fn fgRed(text: anytype) []const u8 {
    return format("\u{001b}[31m{s}", text);
}

pub fn fgGreen(text: anytype) []const u8 {
    return format("\u{001b}[32m{s}", text);
}

pub fn fgYellow(text: anytype) []const u8 {
    return format("\u{001b}[33m{s}", text);
}

pub fn fgBlue(text: anytype) []const u8 {
    return format("\u{001b}[34m{s}", text);
}

pub fn fgMagenta(text: anytype) []const u8 {
    return format("\u{001b}[35m{s}", text);
}

pub fn fgCyan(text: anytype) []const u8 {
    return format("\u{001b}[36m{s}", text);
}

pub fn fgWhite(text: anytype) []const u8 {
    return format("\u{001b}[37m{s}", text);
}

pub fn bgBlack(text: anytype) []const u8 {
    return format("\u{001b}[40m{s}", text);
}

pub fn bgRed(text: anytype) []const u8 {
    return format("\u{001b}[41m{s}", text);
}

pub fn bgGreen(text: anytype) []const u8 {
    return format("\u{001b}[42m{s}", text);
}

pub fn bgYellow(text: anytype) []const u8 {
    return format("\u{001b}[43m{s}", text);
}

pub fn bgBlue(text: anytype) []const u8 {
    return format("\u{001b}[44m{s}", text);
}

pub fn bgMagenta(text: anytype) []const u8 {
    return format("\u{001b}[45m{s}", text);
}

pub fn bgCyan(text: anytype) []const u8 {
    return format("\u{001b}[46m{s}", text);
}

pub fn bgWhite(text: anytype) []const u8 {
    return format("\u{001b}[47m{s}", text);
}

// pub fn hello() std.mem.Allocator.Error![]u8 {
//     var gpa = std.heap.GeneralPurposeAllocator(.{}){};
//     const allocator = gpa.allocator();
//     defer _ = gpa.deinit();

//     var buf = try std.fmt.allocPrint(allocator, "\u{001b}[31m{s}\u{001b}[0m", .{"bytes"});
//     defer allocator.free(buf);

//     // const stdout = std.io.getStdOut();
//     // _ = try stdout.write(buf);

//     return buf;
// }

// pub fn red(bytes: []const u8) []u8 {
//     //return "\u{001b}[31m" ++ bytes ++ "\u{001b}[0m";

//     var gpa = std.heap.GeneralPurposeAllocator(.{}){};
//     const allocator = gpa.allocator();
//     defer _ = gpa.deinit();

//     const buf = std.fmt.allocPrint(allocator, "\u{001b}[31m{s}\u{001b}[0m", .{bytes}) catch @panic("allocPrint");
//     defer allocator.free(buf);

//     return buf;
// }
