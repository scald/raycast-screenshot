# raycast-screenshot

One hotkey that copies a screenshot to the clipboard and saves it to disk at the same time, with no wait for the macOS floating thumbnail.

## 1. Turn off the floating thumbnail

macOS doesn't write a screenshot to disk until the floating thumbnail goes away. Turn the thumbnail off so files save straight away:

```bash
defaults write com.apple.screencapture show-thumbnail -bool false
```

If the thumbnail still appears, run `killall SystemUIServer`.

## 2. Install the script command

```bash
mkdir -p ~/Raycast/Scripts
curl -fsSL https://raw.githubusercontent.com/scald/raycast-screenshot/main/screenshot-clipboard-save.sh -o ~/Raycast/Scripts/screenshot-clipboard-save.sh
chmod +x ~/Raycast/Scripts/screenshot-clipboard-save.sh
```

## 3. Register it in Raycast

1. In Raycast, search **Script Commands** and add `~/Raycast/Scripts` as a script directory.
2. Search **Screenshot to Clipboard + Save**, press ⌘K, choose **Configure Command**, and set a hotkey.
3. To use ⌘⇧4 as the hotkey, first turn off the system shortcut under **System Settings → Keyboard → Keyboard Shortcuts → Screenshots**.

## What it does

- Opens the crosshair selection used by ⌘⇧4. Press space to capture a whole window, or Esc to cancel.
- Saves the capture to `~/Pictures/Screenshots/Screenshot YYYY-MM-DD at HH.MM.SS.png`.
- Copies the image to the clipboard as a PNG.
