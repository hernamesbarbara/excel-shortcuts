#!/usr/bin/env osascript

on alfred_script(q)
    tell application "Microsoft Excel"
        activate
        set screen updating to false
        repeat with nth from 1 to the count of (get areas of selection)
            -- log nth
            set s to item nth of (get areas of selection)
            autofit (get columns of s)
        end repeat
        set screen updating to true
    end tell
end alfred_script
