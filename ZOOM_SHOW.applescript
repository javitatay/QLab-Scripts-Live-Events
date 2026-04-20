-- ZOOM_SHOW
-- Mueve la ventana de Zoom al monitor externo y la expande
-- a pantalla completa sin robar el foco a QLab.
--
-- Requisitos:
--   · Zoom abierto y en llamada activa
--   · Permiso de Accesibilidad en
--     Sistema → Privacidad y Seguridad → Accesibilidad
--
-- *** EDITA LAS COORDENADAS DE TU MONITOR EXTERNO ***
-- origen_x: ancho en píxeles del monitor principal
-- origen_y: dejar en 0
-- ancho y alto: resolución del monitor externo
property origen_x : 1920
property origen_y : 0
property ancho : 1920
property alto : 1080

tell application "System Events"
    tell process "zoom.us"
        set position of window 1 to {origen_x, origen_y}
        set size of window 1 to {ancho, alto}
    end tell
end tell
