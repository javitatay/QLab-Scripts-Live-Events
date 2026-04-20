-- ZOOM_HIDE
-- Retira Zoom del monitor externo sin cerrar la llamada.
-- La ventana queda aparcada en el monitor principal detrás de QLab.
-- Al volver a ejecutar ZOOM_SHOW regresa al monitor externo.

tell application "System Events"
    tell process "zoom.us"
        set position of window 1 to {0, 0}
        set size of window 1 to {800, 600}
    end tell
end tell

tell application id "com.figure53.QLab.5" to activate
