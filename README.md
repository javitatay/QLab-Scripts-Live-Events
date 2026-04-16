# QLab Live Scripts

Scripts de AppleScript para integrar aplicaciones externas en shows en vivo desde QLab 5.

El problema que resuelven es concreto: llega un ponente con un PowerPoint, o el show necesita mostrar una web en tiempo real, y QLab tiene que gestionar eso igual que gestiona el audio y el vídeo. Estos scripts hacen exactamente eso — nada más.

---

## Scripts disponibles

### PowerPoint

| Archivo | Función |
|---|---|
| `powerpoint/PPT_SHOW.applescript` | Abre un `.pptx` en pantalla completa. El ponente avanza con su clicker. |
| `powerpoint/PPT_CLOSE.applescript` | Cierra la presentación al terminar. |

### Chrome

| Archivo | Función |
|---|---|
| `chrome/CHROME_SHOW.applescript` | Trae Chrome al frente y activa pantalla completa. |
| `chrome/CHROME_HIDE.applescript` | Sale de pantalla completa. |

---

## Requisitos

- QLab 5 con cualquier licencia activa
- macOS Ventura 13 o superior
- Microsoft PowerPoint para Mac (Microsoft 365)
- Google Chrome
- Permiso de Accesibilidad para Script Editor: *Sistema → Privacidad y Seguridad → Accesibilidad*

---

## Cómo crear un Script Cue en QLab

Si nunca has usado un Script Cue en QLab, sigue estos pasos. Son el mismo proceso para todos los scripts de este repositorio.

### 1. Crea el Script Cue

En la cuelista de QLab, pulsa `Cmd+2` o ve al menú *Cue → New Script Cue*. Aparece un nuevo cue con el icono de script (una `S` entre corchetes).

### 2. Abre el inspector

Con el cue seleccionado, mira el panel inferior de QLab. Verás varias pestañas. Haz clic en la que pone **Script**.

### 3. Copia el script desde GitHub

Abre el archivo `.applescript` que quieres usar. En GitHub hay un botón de copia en la esquina superior derecha del bloque de código. Pulsa para copiar todo el contenido.

### 4. Pega el script en QLab

Haz clic dentro del campo de texto de la pestaña Script y pega con `Cmd+V`.

### 5. Edita lo que necesites

Busca las líneas que contienen `*** EDITA` — son las únicas que tienes que tocar. Por ejemplo, en `PPT_SHOW` hay que cambiar la ruta del archivo:

```applescript
-- Cambia esta línea con la ruta real de tu archivo:
property rutaArchivo : "/Users/TU_USUARIO/Desktop/NOMBRE_PRESENTACION.pptx"
```

Para saber la ruta exacta de un archivo en Mac: arrástralo desde el Finder hasta una ventana de Terminal y la ruta aparece escrita. También puedes hacer clic derecho sobre el archivo, mantener `Option` y elegir *Copiar como nombre de ruta*.

### 6. Compila el script

Pulsa el botón **Compile Script** que aparece encima del campo de texto. Si todo está bien, no pasa nada visible — eso es buena señal. Si hay algún error, QLab lo muestra en rojo junto al botón con una descripción del problema.

### 7. Ponle nombre al cue

En la pestaña **Basics** del inspector puedes darle un nombre descriptivo al cue (`PPT_SHOW`, `CHROME_SHOW`, etc.) para reconocerlo fácilmente en la cuelista.

### 8. Pruébalo

Selecciona el cue y pulsa `Space` para ejecutarlo. Si es la primera vez que QLab o Script Editor controlan otra aplicación en este Mac, macOS puede pedir permiso de Accesibilidad. Ve a *Sistema → Privacidad y Seguridad → Accesibilidad* y actívalo para QLab.

---

## PowerPoint — setup antes del show

1. Abre PowerPoint y ve a *Presentación → Configurar presentación*
2. En **Monitor**, selecciona el monitor del proyector
3. PowerPoint guarda esa configuración dentro del archivo

Durante el show:
```
[Script Cue]  PPT_SHOW     → presentación en pantalla completa
              (ponente avanza con su clicker)
[Script Cue]  PPT_CLOSE    → cierra al terminar
```

Edita `rutaArchivo` en `PPT_SHOW` con la ruta completa al `.pptx`.

---

## Chrome — setup antes del show

1. Abre Chrome y navega a la URL deseada
2. Arrastra la ventana de Chrome al monitor del proyector
3. Chrome recuerda la posición entre ejecuciones

Durante el show:
```
[Script Cue]  CHROME_SHOW  → Chrome a pantalla completa
              (ponente navega con normalidad)
[Script Cue]  CHROME_HIDE  → sale de pantalla completa
```

---

## Lo que estos scripts no hacen

No hacen mirroring en tiempo real de la pantalla de otro Mac. Si el ponente trae su propio ordenador, necesitas una solución de red como NDI o Syphon. Estos scripts funcionan cuando PowerPoint y Chrome corren en el mismo Mac que QLab.

---

## Estructura del repositorio

```
qlab-live-scripts/
│
├── README.md
├── LICENSE
├── CONTRIBUTING.md
│
├── powerpoint/
│   ├── PPT_SHOW.applescript
│   └── PPT_CLOSE.applescript
│
└── chrome/
    ├── CHROME_SHOW.applescript
    └── CHROME_HIDE.applescript
```

---

## Sesión de QLab lista para usar

Próximamente estará disponible en este repositorio una sesión `.qlab` con todos los scripts ya integrados y listos para disparar. Solo habrá que abrirla, editar las rutas y empezar a trabajar — sin necesidad de crear cues ni pegar código manualmente.

---

## Contribuir

Si tienes un script que integra otra aplicación con QLab, las instrucciones están en `CONTRIBUTING.md`.

---

## Licencia

MIT — libre para uso en producción comercial y no comercial.

---

## Autor

Javier Tatay Rubio
*Probado en macOS Sonoma 14 · QLab 5 · Microsoft 365 · Google Chrome 124+*
