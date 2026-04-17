-- PPT_SHOW
-- Abre un .pptx en modo presentación en el monitor externo.
-- QLab permanece operativo en el monitor principal.
-- El ponente avanza con su clicker directamente.
--
-- Requisitos:
--   · Microsoft PowerPoint para Mac (Microsoft 365)
--   · En PowerPoint → Presentación → Configurar presentación:
--     selecciona el monitor externo antes del show y guarda el archivo
--   · Permiso de Accesibilidad en
--     Sistema → Privacidad y Seguridad → Accesibilidad
--
-- *** EDITA LA RUTA AL ARCHIVO AQUÍ ***
property rutaArchivo : "/Users/TU_USUARIO/Desktop/NOMBRE_PRESENTACION.pptx"

-- Paso 1: abrir el archivo sin robar el foco a QLab
do shell script "open -g -a 'Microsoft PowerPoint' " & quoted form of rutaArchivo

-- Paso 2: esperar a que el archivo cargue completamente
-- Si la presentación es pesada, aumenta este valor
delay 3

-- Paso 3: activar PowerPoint brevemente para enviar el atajo
tell application "Microsoft PowerPoint" to activate
delay 0.5

-- Paso 4: Shift+Cmd+Return lanza el slideshow siguiendo
-- la configuración de Presenter View y el monitor asignado
tell application "System Events"
    tell process "Microsoft PowerPoint"
        keystroke return using {shift down, command down}
    end tell
end tell

-- Paso 5: devolver el foco a QLab
delay 0.5
tell application id "com.figure53.QLab.5" to activate
