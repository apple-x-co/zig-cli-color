const std = @import("std");
const Color = @import("color.zig").Color;

pub fn main() anyerror!void {
    // var allocator = std.heap.page_allocator;

    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();
    defer _ = gpa.deinit();

    var color = Color.init(allocator);
    defer color.deinit();

    // Foreground color
    std.debug.print("{s}{s}\n", .{ color.fgBlack("Foreground BLACK"), color.reset() });
    std.debug.print("{s}{s}\n", .{ color.fgRed("Foreground RED"), color.reset() });
    std.debug.print("{s}{s}\n", .{ color.fgGreen("Foreground GREEN"), color.reset() });
    std.debug.print("{s}{s}\n", .{ color.fgYellow("Foreground YELLO"), color.reset() });
    std.debug.print("{s}{s}\n", .{ color.fgBlue("Foreground BLUE"), color.reset() });
    std.debug.print("{s}{s}\n", .{ color.fgMagenta("Foreground MAGENTA"), color.reset() });
    std.debug.print("{s}{s}\n", .{ color.fgCyan("Foreground CYAN"), color.reset() });
    std.debug.print("{s}{s}\n", .{ color.fgWhite("Foreground WHITE"), color.reset() });

    // Background color
    std.debug.print("{s}{s}\n", .{ color.bgBlack("Background BLACK"), color.reset() });
    std.debug.print("{s}{s}\n", .{ color.bgRed("Background RED"), color.reset() });
    std.debug.print("{s}{s}\n", .{ color.bgGreen("Background GREEN"), color.reset() });
    std.debug.print("{s}{s}\n", .{ color.bgYellow("Background YELLOW"), color.reset() });
    std.debug.print("{s}{s}\n", .{ color.bgBlue("Background BLUE"), color.reset() });
    std.debug.print("{s}{s}\n", .{ color.bgMagenta("Background MAGENTA"), color.reset() });
    std.debug.print("{s}{s}\n", .{ color.bgCyan("Background CYAN"), color.reset() });
    std.debug.print("{s}{s}\n", .{ color.bgWhite("Background WHITE"), color.reset() });

    // Mix
    std.debug.print("{s}{s}\n", .{ color.bgBlack(color.fgCyan("Background BLACK x Foreground CYAN")), color.reset() });
}
