-- PDF_SHOW
-- Abre un PDF en Preview en el monitor externo a pantalla completa.
-- QLab permanece operativo en el monitor principal.
--
-- Requisitos:
--   · Preview (preinstalado en macOS)
--   · Monitores en modo extendido — no duplicado
--   · Permiso de Accesibilidad en
--     Sistema → Privacidad y Seguridad → Accesibilidad
--
-- *** EDITA ESTAS LÍNEAS ***
property rutaArchivo : "/Users/TU_USUARIO/Desktop/NOMBRE_DOCUMENTO.pdf"

-- *** EDITA LAS COORDENADAS DE TU MONITOR EXTERNO ***
-- origen_x: ancho en píxeles del monitor principal
-- origen_y: dejar en 0
-- ancho y alto: resolución del monitor externo
property origen_x : 1920
property origen_y : 0
property ancho : 1920
property alto : 1080

-- Paso 1: abrir el archivo sin robar el foco a QLab
do shell script "open -g -a 'Preview' " & quoted form of rutaArchivo

-- Paso 2: esperar a que Preview cargue el documento
delay 2

-- Paso 3: mover la ventana al monitor externo
tell application "System Events"
    tell process "Preview"
        set position of window 1 to {origen_x, origen_y}
        set size of window 1 to {ancho, alto}
    end tell
end tell

-- Paso 4: activar Preview brevemente para entrar en pantalla completa
-- Ctrl+Cmd+F es el atajo estándar de macOS para pantalla completa
tell application "Preview" to activate
delay 0.3
tell application "System Events"
    tell process "Preview"
        keystroke "f" using {control down, command down}
    end tell
end tell

-- Paso 5: devolver el foco a QLab
delay 0.5
tell application id "com.figure53.QLab.5" to activate
