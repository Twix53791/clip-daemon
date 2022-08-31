# clip-daemon

This small script is based on a fork of [clipnotify](https://github.com/cdown/clipnotify/) by [andreblanke](https://github.com/andreblanke/clipnotify). It just add a small script, clip-daemon, which automatically send the primary selection to the clipboard, so you can now copy to clipboard just by selecting a text in any application (firefox, libreoffice, emacs...). Of course, you can customize rules to avoid that behavior on specific applications or in particular cases. By default, press ctrl to avoid the primary_to_clipboard function.

## Keybindings
 - **ctrl** : if pressed before the selection set, disable the script (the primary selection is not sent to clipboard)
 - **alt** : if pressed, remove linebreaks in the text copied
 
## Config

- You can also run _remove_linebreaks automatically when some applications send text directly in the clipboard (for example zathura or emacs pdf-tools). Add the application window class name to the variable `clipboard_notify_apps`. It depends on `wmctrl`
- You can enable notifications with `clip_daemon_notification=1`. It depends on `libnotify`

# Installation

```
git clone https://github.com/Twix53791/clip-daemon/
cd clip-daemon
make install
```
Or you can do it manually cloning the [andreblanke's repo](https://github.com/andreblanke/clipnotify) and copying in a bin directory the clip-daemon script.

## Dependencies

- `xclip` : to manage the X selection entries
- `xorg-xinput` : to use the keybindings
- `wmctrl` : to set application specific rules
- `libnotify` : to get notifications

Or course, you can change all that to adapt it to your environment and customize it to your habits!
