# Contribuir

Si usas QLab en producción y tienes un script que integra una aplicación externa, este es el sitio para compartirlo.

---

## Qué tipo de scripts tienen sentido aquí

Scripts que resuelven un problema real en shows en vivo: abrir una aplicación, mostrarla en pantalla, cerrarla limpiamente. Sin dependencias externas innecesarias, sin instaladores complejos.

No tienen cabida scripts que requieran software de pago adicional, configuración de red elaborada o conocimientos de programación para poder usarlos.

---

## Cómo añadir un script

1. Haz fork del repositorio
2. Crea una carpeta con el nombre de la aplicación en minúsculas:
   ```
   nombre-aplicacion/
     APPNAME_SHOW.applescript
     APPNAME_CLOSE.applescript
   ```
3. Cada archivo debe tener al principio:
   - Una línea de descripción de qué hace
   - Los requisitos (versión de macOS, aplicación, permisos)
   - Comentarios `-- *** EDITA AQUÍ ***` donde el usuario tiene que cambiar algo
4. Añade una sección al README con la tabla de scripts y el setup necesario
5. Abre un pull request con una descripción breve de qué problema resuelve

---

## Convenciones de nombre

```
APPNAME_SHOW.applescript      → muestra la aplicación en pantalla
APPNAME_HIDE.applescript      → la oculta o sale de pantalla completa
APPNAME_OPEN.applescript      → abre un archivo concreto
APPNAME_CLOSE.applescript     → cierra la aplicación o el archivo
APPNAME_NEXT.applescript      → avanza (diapositiva, página, etc.)
APPNAME_PREV.applescript      → retrocede
```

---

## Antes de enviar el pull request

- Probado en QLab 5 con una licencia activa
- Probado en macOS Ventura o superior
- Sin `display dialog` innecesarios en el flujo normal de show
- El script funciona con "Run in separate process" activado en QLab

---

## Reportar un error

Abre un issue con:
- Versión de QLab
- Versión de macOS
- Versión de la aplicación externa
- El mensaje de error exacto que muestra QLab
