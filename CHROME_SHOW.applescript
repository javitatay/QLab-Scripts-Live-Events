-- CHROME_SHOW
-- Mueve la ventana de Chrome al monitor externo y la expande
-- a pantalla completa sin robar el foco a QLab.
--
-- Requisitos:
--   · Google Chrome abierto en la página deseada
--   · Permiso de Accesibilidad en
--     Sistema → Privacidad y Seguridad → Accesibilidad
--
-- *** EDITA LAS COORDENADAS DE TU MONITOR EXTERNO ***
-- origen_x: ancho en píxeles del monitor principal
--           (normalmente 1920 en Full HD, 2560 en QHD, 3024 en MacBook Pro 14")
-- origen_y: dejar en 0
-- ancho y alto: resolución del monitor externo
property origen_x : 1920
property origen_y : 0
property ancho : 1920
property alto : 1080

tell application "System Events"
    tell process "Google Chrome"
        set position of window 1 to {origen_x, origen_y}
        set size of window 1 to {ancho, alto}
    end tell
end tell
