# Pearled Open Source Tools Homebrew Tap

Welcome to Pearled's Homebrew Tap for open source tools! This repository will contain various CLI tools developed by Pearled.

## Current Projects

### hexhsl

`hexhsl` converts between HEX, RGB, HSL, HSV/HSB, HWB, and CMYK. It accepts
common CSS colour syntax, preserves alpha values, and can print one format or
all of them at once.

```sh
hexhsl "hsl(210 50% 40%)" --to hex
#336699

hexhsl rebeccapurple --all
```

## How to Add the Tap

To add the tap, run the following command in your terminal:

```sh
brew tap PearledDev/ostools
```

## How to Install a Tool

To install a tool from the tap, run the following command in your terminal:

```sh
brew install <tool_name>
```
