# AlwaysOnTop.exe

AlwaysOnTop is a Windows utility that enables users to pin one or more application windows to stay in the foreground, regardless of other open applications. Built using AutoHotkey, this tool features customizable keyboard shortcuts, sound feedback, and tray notifications. It is ideal for multitasking, keeping reference material visible, or monitoring live windows without interruption.

## Features

- Toggle the "Always on Top" setting for the currently focused window using `Alt + T`
- Manage multiple pinned windows simultaneously
- Tray notifications display the name of each pinned or unpinned window
- Play sound effects for both pin and unpin actions
- Cleanly exits and restores window behavior with `Alt + X`
- No installation required — just run the `.exe` or `.ahk` file

## Pinning Logic and Hierarchy

### Selecting a Window
- When `Alt + T` is pressed, the **currently focused (active)** window is either pinned (if not pinned yet) or unpinned (if it is already pinned).
- Focused window means the window that is currently selected and receiving input from the keyboard or mouse.

### Multiple Pinned Windows
- You can pin **multiple windows at the same time**.
- Each window is pinned **independently** using the Windows `AlwaysOnTop` flag.
- When several pinned windows overlap, **Windows decides the Z-order** (stacking order) based on user interaction (e.g., the last clicked window will appear in front).
- Unpinning a window simply removes the "Always on Top" property for that specific window.

### On Exit
- Pressing `Alt + X` will:
  - Play a sound confirming the shutdown
  - Remove the "Always on Top" property from all pinned windows
  - Exit the utility
- No system settings are left modified after exit.

## Hotkeys

| Action              | Hotkey   |
|---------------------|----------|
| Pin or unpin window | Alt + T  |
| Exit the application| Alt + X  |

## File Structure

The utility consists of the following files:


## Usage Instructions

1. **Download** all project files or clone the repository.
2. **Run `AlwaysOnTop.exe`** (or open `AlwaysOnTop.ahk` if you have AutoHotkey installed).
3. While the app is running:
   - Press **Alt + T** to toggle the "Always on Top" status of the active window.
   - Press **Alt + X** to unpin all windows and exit the script.
4. Make sure `nintendoDSXL.wav` and `exit.wav` are in the **same folder** as the `.exe` or `.ahk`.

## Sound and Icon Notes

- Only `.wav` files are supported. If you wish to use other audio formats like `.mp3`, you must first convert them.
- To customize the icon, replace `myicon.ico` with another `.ico` file and recompile the script using AutoHotkey’s `Ahk2Exe` compiler.

## Compilation Instructions (Optional)

If you'd like to compile the script yourself:

1. Install AutoHotkey from [https://www.autohotkey.com](https://www.autohotkey.com)
2. Right-click the `AlwaysOnTop.ahk` script and choose **"Compile with Options..."**
3. Set the icon (`alwaysontopicon.ico`) and compile to create `AlwaysOnTop.exe`

## License

You are free to use, modify, and distribute this tool as needed.

## Author

Developed by David Murillo. Contributions and suggestions are welcome.
