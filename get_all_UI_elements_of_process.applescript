on run argv
    set targetProcess to item 1 of argv
    -- set targetKeywords to item 2 of argv

    tell application "System Events"
        tell process targetProcess
            set uiElements to entire contents
            get uiElements
            -- repeat with i from 1 to count of uiElements
            --     -- set uiElement to item i of uiElements
            --     -- log name of uiElement as string
            --     set uiElement to item i of uiElements
            --     -- log "1 - " & uiElement
            --     get uiElement
            --     -- log "2 - " & uiElement as string

            --     -- if targetKeywords contains name of uiElement then
            --     -- -- if uiElement contains targetKeywords then
            --     --     log uiElement
            --     -- end if
            -- end repeat
        end tell
    end tell
end run

-- ???? Google Chrome?? ???? ???, process ???? general??!
-- ??? ??? targetText, ??? ??? ????? (|, & ? ??, ??????? ????)