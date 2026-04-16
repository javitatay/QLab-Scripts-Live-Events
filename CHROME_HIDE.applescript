-- CHROME_HIDE
-- Sale de pantalla completa en Chrome.
-- No cierra el navegador ni la pestaña.

tell application "Google Chrome"
    activate
end tell

delay 0.2

tell application "System Events"
    tell process "Google Chrome"
        keystroke "f" using {command down, shift down}
    end tell
end tell
