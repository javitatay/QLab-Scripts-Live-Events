-- CHROME_SHOW
-- Trae Chrome al frente y activa pantalla completa.
-- El ponente navega con normalidad desde ese momento.
--
-- Requisitos:
--   · Google Chrome abierto en la página deseada
--   · La ventana de Chrome arrastrada al monitor del proyector
--     antes del show (Chrome recuerda la posición)
--   · Permiso de Accesibilidad para Script Editor en
--     Sistema → Privacidad y Seguridad → Accesibilidad
--
-- Si el atajo Cmd+Shift+F no activa el fullscreen en tu versión
-- de Chrome, prueba a sustituirlo por:
--   keystroke "f" using {control down, command down}

tell application "Google Chrome"
    activate
    set index of window 1 to 1
end tell

delay 0.3

tell application "System Events"
    tell process "Google Chrome"
        keystroke "f" using {command down, shift down}
    end tell
end tell
