# BouncingWindow.spoon
 Hammerspoon plugin to bounce the current window around your screen

 ![Example](bounce.gif)

## Installation
1. Make sure that you have Hammerspoon installed.

   If it's not installed already, then use the [Getting Started with Hammerspoon](https://www.hammerspoon.org/go/) guide to learn how to install and use Hammerspoon.

2. Install this Spoon

    The easiest way to do this is to [download the ZIP version of this Spoon](https://github.com/catskull/BouncingWindow.spoon/releases/download/1.0/BouncingWindow.spoon.zip), unzip it, then double click the BouncingWindow.spoon folder. Hammerspoon will install it for you.

    If you plan on modifying the Spoon and sending a pull request to this repo, then you should clone this repo into your `~/.hammerspoon/Spoons`

## Usage
In your Hammerspoon config, load this Spoon: `hs.loadSpoon("BouncingWindow")`

Then bind the action to a hotkey:
```lua
spoon.BouncingWindow:bindHotKeys({
  bounce={{"cmd", "alt", "ctrl"}, "M"}
})
```

Change the hotkey as you wish, the example above binds to CMD+ALT+CTRL+M.

Triggering the hotkey will cause the currently focused window start bouncing. If a window is already bouncing, triggering the hotkey will stop it regardless of which window is bouncing. Only one window can be bouncing at a time.

## Acknowledgements
- [Zoom.spoon](https://github.com/jpf/Zoom.spoon) - inspiration, installation instructions (mostly copied verbatim)
- [Hammerspoon Contributors](https://github.com/Hammerspoon/hammerspoon/blob/master/CREDITS.md) - thanks for Hammerspoon!
- [@joshmenden](https://github.com/joshmenden) - encouragement