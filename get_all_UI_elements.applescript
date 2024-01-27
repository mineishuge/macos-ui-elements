tell application "System Events"
    set allProcesses to name of every process
    set allUIElements to {}
    repeat with proc in allProcesses
        tell process proc
            try
                set end of allUIElements to entire contents
            on error errMsg
                -- ?? ??
            end try
        end tell
    end repeat
    return allUIElements
end tell
