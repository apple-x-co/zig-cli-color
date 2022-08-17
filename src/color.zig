const std = @import("std");

pub const Color = struct {
    const Self = @This();

    allocator: std.mem.Allocator,
    texts: std.ArrayList([]const u8),

    pub fn init(allocator: std.mem.Allocator) Self {
        return Self{
            .allocator = allocator,
            .texts = std.ArrayList([]const u8).init(allocator),
        };
    }

    pub fn deinit(self: *Self) void {
        for (self.texts.items) |item| {
            self.allocator.free(item);
        }

        self.texts.deinit();
    }

    pub fn fgBlack(self: *Self, text: []const u8) []const u8 {
        return self.format("\u{001b}[30m{s}", text);
    }

    pub fn fgRed(self: *Self, text: []const u8) []const u8 {
        return self.format("\u{001b}[31m{s}", text);
    }

    pub fn fgGreen(self: *Self, text: []const u8) []const u8 {
        return self.format("\u{001b}[32m{s}", text);
    }

    pub fn fgYellow(self: *Self, text: []const u8) []const u8 {
        return self.format("\u{001b}[33m{s}", text);
    }

    pub fn fgBlue(self: *Self, text: []const u8) []const u8 {
        return self.format("\u{001b}[34m{s}", text);
    }

    pub fn fgMagenta(self: *Self, text: []const u8) []const u8 {
        return self.format("\u{001b}[35m{s}", text);
    }

    pub fn fgCyan(self: *Self, text: []const u8) []const u8 {
        return self.format("\u{001b}[36m{s}", text);
    }

    pub fn fgWhite(self: *Self, text: []const u8) []const u8 {
        return self.format("\u{001b}[37m{s}", text);
    }

    pub fn bgBlack(self: *Self, text: []const u8) []const u8 {
        return self.format("\u{001b}[40m{s}", text);
    }

    pub fn bgRed(self: *Self, text: []const u8) []const u8 {
        return self.format("\u{001b}[41m{s}", text);
    }

    pub fn bgGreen(self: *Self, text: []const u8) []const u8 {
        return self.format("\u{001b}[42m{s}", text);
    }

    pub fn bgYellow(self: *Self, text: []const u8) []const u8 {
        return self.format("\u{001b}[43m{s}", text);
    }

    pub fn bgBlue(self: *Self, text: []const u8) []const u8 {
        return self.format("\u{001b}[44m{s}", text);
    }

    pub fn bgMagenta(self: *Self, text: []const u8) []const u8 {
        return self.format("\u{001b}[45m{s}", text);
    }

    pub fn bgCyan(self: *Self, text: []const u8) []const u8 {
        return self.format("\u{001b}[46m{s}", text);
    }

    pub fn bgWhite(self: *Self, text: []const u8) []const u8 {
        return self.format("\u{001b}[47m{s}", text);
    }

    fn format(self: *Self, comptime fmt: []const u8, text: []const u8) []const u8 {
        const s = std.fmt.allocPrint(self.allocator, fmt, .{text}) catch @panic("allocPrint");
        self.texts.append(s) catch unreachable;

        return s;
    }

    pub fn reset(self: *Self) []const u8 {
        _ = self;

        return "\u{001b}[0m";
    }
};

test "Foreground BLACK" {
    var allocator = std.testing.allocator;
    var color = Color.init(allocator);
    defer color.deinit();

    try std.testing.expectEqualSlices(u8, color.fgBlack("BLACK"), "\u{001b}[30mBLACK");
}

test "Background BLACK" {
    var allocator = std.testing.allocator;
    var color = Color.init(allocator);
    defer color.deinit();

    try std.testing.expectEqualSlices(u8, color.bgBlack("BLACK"), "\u{001b}[40mBLACK");
}

test "Reset" {
    var allocator = std.testing.allocator;
    var color = Color.init(allocator);
    defer color.deinit();

    try std.testing.expectEqualSlices(u8, color.reset(), "\u{001b}[0m");
}