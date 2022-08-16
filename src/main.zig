const std = @import("std");
const color = @import("cli-color.zig");

// FIXME: 引数の text を anytype から []const u8 にすると、以下エラーが出る
// ./src/cli-color.zig:6:30: error: unable to evaluate constant expression
// return "\u{001b}[30m" ++ text;

pub fn main() anyerror!void {
    // Foreground color
    std.debug.print("{s}{s}\n", .{color.fgBlack("Foreground BLACK"), color.reset()});
    std.debug.print("{s}{s}\n", .{color.fgRed("Foreground RED"), color.reset()});
    std.debug.print("{s}{s}\n", .{color.fgGreen("Foreground GREEN"), color.reset()});
    std.debug.print("{s}{s}\n", .{color.fgYellow("Foreground YELLO"), color.reset()});
    std.debug.print("{s}{s}\n", .{color.fgBlue("Foreground BLUE"), color.reset()});
    std.debug.print("{s}{s}\n", .{color.fgMagenta("Foreground MAGENTA"), color.reset()});
    std.debug.print("{s}{s}\n", .{color.fgCyan("Foreground CYAN"), color.reset()});
    std.debug.print("{s}{s}\n", .{color.fgWhite("Foreground WHITE"), color.reset()});

    // // Background color
    std.debug.print("{s}{s}\n", .{color.bgBlack("Background BLACK"), color.reset()});
    std.debug.print("{s}{s}\n", .{color.bgRed("Background RED"), color.reset()});
    std.debug.print("{s}{s}\n", .{color.bgGreen("Background GREEN"), color.reset()});
    std.debug.print("{s}{s}\n", .{color.bgYellow("Background YELLOW"), color.reset()});
    std.debug.print("{s}{s}\n", .{color.bgBlue("Background BLUE"), color.reset()});
    std.debug.print("{s}{s}\n", .{color.bgMagenta("Background MAGENTA"), color.reset()});
    std.debug.print("{s}{s}\n", .{color.bgCyan("Background CYAN"), color.reset()});
    std.debug.print("{s}{s}\n", .{color.bgWhite("Background WHITE"), color.reset()});

    // Mix
    std.debug.print("{s}{s}\n", .{color.bgBlack(color.fgCyan("Background BLACK x Foreground CYAN")), color.reset()});
}
