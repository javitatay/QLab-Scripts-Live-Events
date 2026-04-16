-- PPT_CLOSE
-- Detiene el slideshow y cierra la presentación sin guardar.
-- Usar al terminar la ponencia.

tell application "Microsoft PowerPoint"
    try
        tell (slide show window of active presentation) to stop
        delay 0.3
        close active presentation saving no
    on error
        -- Si ya estaba cerrado, no hacer nada
    end try
end tell
