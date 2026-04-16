-- PPT_SHOW
-- Abre un .pptx en pantalla completa en el monitor de salida.
-- El ponente avanza con su clicker directamente.
--
-- Requisitos:
--   · Microsoft PowerPoint para Mac (Microsoft 365)
--   · En PowerPoint → Presentación → Configurar presentación:
--     selecciona el monitor del proyector antes del show
--
-- *** EDITA LA RUTA AL ARCHIVO AQUÍ ***
property rutaArchivo : "/Users/TU_USUARIO/Desktop/NOMBRE_PRESENTACION.pptx"

tell application "Microsoft PowerPoint"
    activate
    open POSIX file rutaArchivo
    repeat until document window 1 exists
        delay 0.3
    end repeat
    delay 0.5
    -- Modo pantalla completa (1 = speaker / fullscreen)
    set show type of slide show settings of active presentation to 1
    set loop until stopped of slide show settings of active presentation to false
    run slide show slide show settings of active presentation
end tell
