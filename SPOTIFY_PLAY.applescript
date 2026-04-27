-- SPOTIFY_PLAY
-- Arranca la reproducción en Spotify sin robar el foco a QLab.
-- Útil para música de sala entre actos o durante el descanso.
-- Spotify debe estar abierto y con la lista/canción deseada ya cargada.
--
-- Requisitos:
--   · Spotify para Mac (spotify.com/download)
--   · La playlist o canción lista antes del show
--   · Permiso de Accesibilidad en
--     Sistema → Privacidad y Seguridad → Accesibilidad
--
-- *** OPCIONAL: edita el volumen de inicio (0–100) ***
property volumenInicio : 80

-- Paso 1: asegurarse de que Spotify está abierto
if not (application "Spotify" is running) then
    tell application "Spotify" to activate
    delay 2
end if

-- Paso 2: ajustar el volumen y arrancar
tell application "Spotify"
    set sound volume to volumenInicio
    play
end tell

-- Paso 3: mantener el foco en QLab
tell application id "com.figure53.QLab.5" to activate
