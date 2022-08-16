# zig-cli-color

## Build

```bash
zig build -Drelease-fast
```

## Run

```bash
zig build run
```

![thumbnail](thumb.png)

## Usage

```zig
const std = @import("std");
const color = @import("cli-color.zig");

std.debug.print("{s}{s}\n", .{color.fgBlack("Foreground BLACK"), color.reset()});
```