#!/usr/bin/env osascript

on alfred_script(q)
    tell application "Microsoft Excel"
        activate
        set zoom_start to (get zoom of view of active window)
        set zoom_end to zoom_start - 10
        if zoom_end < 30 then
            set zoom of view of active window to 30
        else
            set zoom of view of active window to zoom_end
        end if
    end tell
end alfred_script
