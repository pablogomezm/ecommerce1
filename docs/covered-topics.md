# Temas cubiertos

## Navegación

- **MaterialApp**: widget raíz que provee Navigator, Theme, MediaQuery, Localizations. Existe también CupertinoApp (estilo iOS) y WidgetsApp (mínimo). La gran mayoría usa MaterialApp.
- **Navigator 1.0**: navegación básica con `Navigator.push()` / `Navigator.pop()`. Modelo mental de pila de pantallas. Gotcha: el `context` debe ser hijo de MaterialApp, no del mismo nivel.
- **go_router**: paquete recomendado oficialmente por el equipo de Flutter para navegación. Rutas declarativas con paths (`context.push('/ruta')`). Diferencia entre `context.go` (reemplaza) y `context.push` (apila). Se usa `MaterialApp.router` en vez de `MaterialApp` para delegar la navegación.
- **Estructura de archivos**: router en archivo separado (`router.dart`), cada pantalla en su propio archivo, `main.dart` solo como punto de entrada.
