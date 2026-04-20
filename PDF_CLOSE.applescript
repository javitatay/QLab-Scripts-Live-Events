-- PDF_CLOSE
-- Sale de pantalla completa y cierra el PDF en Preview.
-- Usar al terminar la presentación del documento.

tell application "System Events"
    tell process "Preview"
        -- Salir de pantalla completa antes de cerrar
        try
            keystroke "f" using {control down, command down}
            delay 0.4
        on error
            -- Si no estaba en pantalla completa, continuar
        end try
    end tell
end tell

tell application "Preview"
    try
        close the front document saving no
    on error
        -- Si ya estaba cerrado, no hacer nada
    end try
end tell
