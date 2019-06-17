# osx-vim-app

A short amount of AppleScript code that produces an app that launches vim. You can add this app to the Dock, etc. so that you don't need to launch vim from the terminal.

To produce this, open Automator in OS X then:
 - New > Application...
 - In the long list of actions given, drag the item "Run AppleScript" into the workflow window.
 - Paste this code into the AppleScript window (overwrite the initial template given)
 - Save the application as whatever you like
 
You should now have an app in /Applications which behaves exactly like TextEdit, etc. except that it launches vim in a Terminal window (if Terminal is already open, it will open a new window).
