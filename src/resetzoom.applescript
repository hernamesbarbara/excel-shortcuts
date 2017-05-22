#!/usr/bin/env osascript

on alfred_script(q)
    tell application "Microsoft Excel"
        activate
        set zoom of view of active window to 100
    end tell
end alfred_script
