# osx-vim-app

A short amount of AppleScript code that produces an OS X app that launches vim.

To produce this, open Automator in OS X then:
 - New > Application...
 - In the long list of actions given, drag the item "Run AppleScript" into the workflow window.
 - Paste the code in `vim-app.scpt` into the AppleScript window (overwrite the initial template given)
 - Save the application as whatever you like
 
You should now have an app in /Applications which behaves exactly like TextEdit, etc. except that it launches vim in a Terminal window (if Terminal is already open, it will open a new window). You can add this app to the Dock, etc. so that you don't need to launch vim from wthin Terminal. You can also drag-and-drop files onto the app to open the file with vim.

You can change the default Automator app icon by selecting the app in /Applications -> Ctrl–I using the instructions at https://apple.stackexchange.com/questions/369/can-i-change-the-application-icon-of-an-automator-script. I personally like this icon: https://www.reddit.com/r/vim/comments/2bishy/flat_vim_icon_with_solarized_colours/ although note that with png files you must copy the contents of the file rather than the file itself, viz. https://superuser.com/questions/605830/mac-get-info-always-showing-png-icon-instead-of-the-icon.

Script modified from https://www.dustinmartin.net/create-a-vim-app-for-mac-os-x/ and https://apple.stackexchange.com/questions/224925/script-opens-two-terminal-windows.
