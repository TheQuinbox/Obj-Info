# ObjInfo.

This is an extremely simple hammerspoon  that allows you to get all the accessibility information about the currently focused UI element with the press of a single hotkey.

## Instillation.

If you have Hammerspoon installed, simply open the .spoon file, and it should automatically go in the right spot.

To actually use the spoon, add the following two lines to your init.lua:

```lua
hs.loadSpoon("ObjInfo")
spoon.ObjInfo:start()
```

## Hotkeys.

* Control+Shift+F1: Show accessibility information about the currently focused UI element in a text field.
