-- SPOTIFY_STOP
-- Para la reproducción de Spotify sin cerrar la aplicación.
-- Usar al terminar el descanso o cuando el show retoma.
--
-- Opcional: SPOTIFY_FADE (ver comentario al final) hace un fade out
-- progresivo antes de parar — más elegante en sala con público.

tell application "Spotify"
    try
        pause
    on error
        -- Si ya estaba parado, no hacer nada
    end try
end tell

-- Mantener el foco en QLab
tell application id "com.figure53.QLab.5" to activate


-- *** ALTERNATIVA CON FADE OUT ***
-- Sustituye el bloque "tell application Spotify" de arriba por esto
-- si quieres un descenso gradual de volumen antes de parar:
--
-- tell application "Spotify"
--     set volumenActual to sound volume
--     repeat while volumenActual > 0
--         set volumenActual to volumenActual - 5
--         if volumenActual < 0 then set volumenActual to 0
--         set sound volume to volumenActual
--         delay 0.1
--     end repeat
--     pause
--     set sound volume to 80  -- restaurar volumen para el siguiente cue
-- end tell
