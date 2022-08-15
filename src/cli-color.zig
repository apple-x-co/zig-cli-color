pub fn reset() []const u8 {
    return "\u{001b}[0m";
}

pub fn fgBlack(text: anytype) []const u8 {
    return "\u{001b}[30m" ++ text;
}

pub fn fgRed(text: anytype) []const u8 {
    return "\u{001b}[31m" ++ text;
}

pub fn fgGreen(text: anytype) []const u8 {
    return "\u{001b}[32m" ++ text;
}

pub fn fgYellow(text: anytype) []const u8 {
    return "\u{001b}[33m" ++ text;
}

pub fn fgBlue(text: anytype) []const u8 {
    return "\u{001b}[34m" ++ text;
}

pub fn fgMagenta(text: anytype) []const u8 {
    return "\u{001b}[35m" ++ text;
}

pub fn fgCyan(text: anytype) []const u8 {
    return "\u{001b}[36m" ++ text;
}

pub fn fgWhite(text: anytype) []const u8 {
    return "\u{001b}[37m" ++ text;
}

pub fn bgBlack(text: anytype) []const u8 {
    return "\u{001b}[40m" ++ text;
}

pub fn bgRed(text: anytype) []const u8 {
    return "\u{001b}[41m" ++ text;
}

pub fn bgGreen(text: anytype) []const u8 {
    return "\u{001b}[42m" ++ text;
}

pub fn bgYellow(text: anytype) []const u8 {
    return "\u{001b}[43m" ++ text;
}

pub fn bgBlue(text: anytype) []const u8 {
    return "\u{001b}[44m" ++ text;
}

pub fn bgMagenta(text: anytype) []const u8 {
    return "\u{001b}[45m" ++ text;
}

pub fn bgCyan(text: anytype) []const u8 {
    return "\u{001b}[46m" ++ text;
}

pub fn bgWhite(text: anytype) []const u8 {
    return "\u{001b}[47m" ++ text;
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
