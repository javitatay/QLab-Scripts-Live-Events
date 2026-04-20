# QLab Live Scripts

AppleScript cues para controlar PowerPoint, Chrome y Zoom desde QLab 5, sin salir del show.

🌐 **[javitatay.github.io/QLab-Scripts-Live-Events](https://javitatay.github.io/QLab-Scripts-Live-Events/)**

El problema es concreto: llega un ponente con un PowerPoint, el show necesita mostrar una web, o hay una videollamada de Zoom activa que tienes que gestionar desde la cuelist. QLab no hace eso solo. Estos scripts sí.

Todos funcionan igual: el script hace su trabajo y devuelve el foco a QLab. Ninguno roba el control de tu Mac en medio del show.

---

## Scripts

### PowerPoint

| Archivo | Qué hace |
|---|---|
| `PPT_SHOW.applescript` | Abre el `.pptx` en el monitor externo y lanza el slideshow. El ponente avanza con su clicker. QLab sigue activo en el principal. |
| `PPT_CLOSE.applescript` | Para el slideshow y cierra el archivo sin guardar. |

### Chrome

| Archivo | Qué hace |
|---|---|
| `CHROME_SHOW.applescript` | Lleva la ventana de Chrome al monitor externo a pantalla completa. QLab no pierde el foco. |
| `CHROME_HIDE.applescript` | Devuelve Chrome al monitor principal sin cerrar el navegador. La página sigue cargada. |

### Zoom

| Archivo | Qué hace |
|---|---|
| `ZOOM_SHOW.applescript` | Lleva la ventana de Zoom al monitor externo a pantalla completa. QLab no pierde el foco. |
| `ZOOM_HIDE.applescript` | Devuelve Zoom al monitor principal sin cerrar la llamada. |

---

## Requisitos

- QLab 5 con cualquier licencia activa
- macOS Ventura 13 o superior (probado en Sonoma 14)
- Microsoft PowerPoint para Mac (Microsoft 365)
- Google Chrome 124 o superior
- Monitores en modo **extendido** — no duplicado
- Permiso de Accesibilidad para QLab en *Sistema → Privacidad y Seguridad → Accesibilidad*

---

## Cómo añadir un script a QLab

El proceso es el mismo para todos los scripts.

**1. Crea el Script Cue**

En la cuelist de QLab, pulsa `Cmd+2` o ve a *Cue → New Script Cue*.

**2. Abre la pestaña Script**

Con el cue seleccionado, haz clic en la pestaña **Script** del panel inferior.

**3. Copia y pega el código**

Abre el `.applescript` en GitHub, copia el contenido y pégalo en QLab con `Cmd+V`. También puedes copiar directamente desde [la web del proyecto](https://javiertatay.github.io/QLab-Scripts-Live-Events/) con el botón que aparece en cada script.

**4. Edita lo que necesites**

Busca las líneas marcadas con `*** EDITA` — son las únicas que tienes que tocar. En `PPT_SHOW`, la ruta al archivo:

```applescript
property rutaArchivo : "/Users/TU_USUARIO/Desktop/NOMBRE_PRESENTACION.pptx"
```

Para saber la ruta exacta: arrastra el archivo desde el Finder a una ventana de Terminal. O clic derecho sobre el archivo, mantén `Option` y elige *Copiar como nombre de ruta*.

**5. Compila**

Pulsa **Compile Script**. Si no aparece ningún error en rojo, está listo.

**6. Ponle nombre al cue**

En la pestaña **Basics** del inspector, dale un nombre descriptivo: `PPT_SHOW`, `CHROME_SHOW`, etc.

**7. Pruébalo**

Selecciona el cue y pulsa `Space`. La primera vez que QLab intenta controlar otra aplicación, macOS pedirá permiso de Accesibilidad — actívalo en *Sistema → Privacidad y Seguridad → Accesibilidad*.

---

## Setup de PowerPoint antes del show

1. Abre el `.pptx` en PowerPoint
2. Ve a *Presentación → Configurar presentación*
3. En **Monitor**, selecciona el monitor externo
4. Guarda — PowerPoint recuerda esa configuración entre sesiones
5. Edita `rutaArchivo` en `PPT_SHOW.applescript` con la ruta completa al `.pptx`

Durante el show:

```
[Script Cue]  PPT_SHOW   →  presentación en el monitor externo
                             (ponente avanza con su clicker)
[Script Cue]  PPT_CLOSE  →  cierra al terminar
```

Si la presentación tarda en cargar, sube el `delay 3` a `4` o `5`.

---

## Setup de Chrome antes del show

1. Abre Chrome y navega a la URL que quieres mostrar
2. Edita las propiedades de `CHROME_SHOW.applescript` con las coordenadas de tu monitor externo:

```applescript
property origen_x : 1920  -- ancho del monitor principal en píxeles
property origen_y : 0
property ancho    : 1920  -- resolución del monitor externo
property alto     : 1080
```

Para saber el ancho de tu monitor principal: *Ajustes del Sistema → Pantallas*.

Durante el show:

```
[Script Cue]  CHROME_SHOW  →  Chrome ocupa el monitor externo
[Script Cue]  CHROME_HIDE  →  Chrome vuelve al principal
```

---

## Setup de Zoom antes del show

`ZOOM_SHOW` y `ZOOM_HIDE` funcionan igual que los de Chrome. Edita las mismas propiedades de coordenadas en `ZOOM_SHOW.applescript`. Zoom tiene que estar en llamada activa antes de ejecutar el script.

---

## Lo que estos scripts no hacen

No hacen mirroring de la pantalla de otro Mac. Si el ponente trae su propio ordenador, necesitas NDI, Syphon o una solución similar. Estos scripts funcionan cuando PowerPoint, Chrome y Zoom corren en el mismo Mac que QLab.

---

## Sesión de QLab

En la sección [Releases](../../releases) encontrarás `QLab-Scripts-Live-Events.qlab5` con los cuatro scripts ya integrados, nombrados y ordenados en la cuelist. Descarga, abre, edita las rutas y listo.

---

## Estructura del repositorio

```
QLab-Scripts-Live-Events/
│
├── README.md
├── LICENSE
├── CONTRIBUTING.md
│
├── PPT_SHOW.applescript
├── PPT_CLOSE.applescript
├── CHROME_SHOW.applescript
├── CHROME_HIDE.applescript
├── ZOOM_SHOW.applescript
└── ZOOM_HIDE.applescript
```

---

## Contribuir

Si tienes un script que integra otra aplicación con QLab, las instrucciones están en [`CONTRIBUTING.md`](CONTRIBUTING.md).

---

## Licencia

MIT — libre para uso en producción comercial y no comercial.

---

*Javier Tatay Rubio · macOS Sonoma 14 · QLab 5 · Microsoft 365 · Chrome 124+*
