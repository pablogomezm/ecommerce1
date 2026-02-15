# Temas cubiertos

## Navegación

- **MaterialApp**: widget raíz que provee Navigator, Theme, MediaQuery, Localizations. Existe también CupertinoApp (estilo iOS) y WidgetsApp (mínimo). La gran mayoría usa MaterialApp.
- **Navigator 1.0**: navegación básica con `Navigator.push()` / `Navigator.pop()`. Modelo mental de pila de pantallas. Gotcha: el `context` debe ser hijo de MaterialApp, no del mismo nivel.
- **go_router**: paquete recomendado oficialmente por el equipo de Flutter para navegación. Rutas declarativas con paths (`context.push('/ruta')`). Diferencia entre `context.go` (reemplaza) y `context.push` (apila). Se usa `MaterialApp.router` en vez de `MaterialApp` para delegar la navegación.
- **Rutas con parámetros**: `/product/:id` define un path parameter. Se extrae con `state.pathParameters['id']` en el builder de la ruta. El widget destino recibe el parámetro y busca los datos correspondientes. Alternativa: `extra` para pasar objetos completos (no recomendado en producción porque no funciona con deep links).
- **Estructura de archivos**: router en archivo separado (`router.dart`), cada pantalla en su propio archivo, `main.dart` solo como punto de entrada.

## Widgets y Layout

- **Todo es un widget**: Flutter no usa HTML. Layout, texto, botones, padding, espaciado — todo son widgets que se anidan formando un árbol.
- **Column**: apila sus children verticalmente (equivale a `flex-direction: column`). El nombre describe la dirección de apilamiento interno, no cómo se comporta el widget respecto a sus hermanos.
- **Row**: apila sus children horizontalmente (equivale a `flex-direction: row`).
- **Expanded**: dentro de un Row/Column, ocupa todo el espacio disponible (equivale a `flex: 1`).
- **SizedBox**: caja de tamaño fijo. Se usa como spacer entre widgets (`SizedBox(height: 16)`).
- **Container**: widget multiuso con padding, color, bordes, tamaño. `width: double.infinity` equivale a `width: 100%`.
- **Padding**: envuelve un hijo con padding usando `EdgeInsets` (`.all()`, `.symmetric()`, `.fromLTRB()`, `.only()`).
- **Spacer**: como un `Expanded` vacío, empuja widgets hacia el extremo opuesto.
- **AspectRatio**: fuerza a su hijo a mantener una proporción (ej: `aspectRatio: 1` = cuadrado).
- **Constraints**: el padre le dice al hijo sus límites min/max, el hijo decide su tamaño dentro de esos límites, el padre posiciona. "Constraints bajan, tamaños suben, el padre posiciona."
- **crossAxisAlignment / mainAxisAlignment**: equivalen a `align-items` y `justify-content` en flexbox. Solo tienen efecto visible en hijos que no llenan el eje cruzado.
- **GridView.builder**: grilla scrolleable eficiente (solo renderiza items visibles). `SliverGridDelegateWithFixedCrossAxisCount` define columnas, spacing y aspect ratio de cada celda.
- **Card**: contenedor Material con sombra y bordes redondeados. `clipBehavior` controla si los hijos se recortan en los bordes.
- **InkWell**: detecta taps y muestra efecto ripple de Material Design. Es el `onClick` de Flutter cuando quieres feedback visual. `GestureDetector` es la alternativa sin ripple.
- **Image.asset vs Image.network**: asset para imágenes locales (en `assets/`), network para URLs. Assets se declaran en `pubspec.yaml`.
- **TextDecoration.lineThrough**: texto tachado en `TextStyle`.
- **FilledButton.icon**: botón con relleno e ícono, usa el color primario del theme.
- **SingleChildScrollView**: hace scrolleable un widget que de otro modo no lo sería (a diferencia de `ListView`/`GridView` que ya son scrolleables por defecto).

## Theme

- **ColorScheme.fromSeed**: genera una paleta completa de Material 3 a partir de un color base. Se configura en `MaterialApp` con `theme: ThemeData(colorScheme: ...)`.
- Los widgets de Material (FilledButton, AppBar, etc.) toman automáticamente los colores del theme.

## Assets

- Las imágenes locales van en `assets/images/` en la raíz del proyecto.
- Deben declararse en `pubspec.yaml` bajo `flutter > assets`.
- Cambios en `pubspec.yaml` requieren hot restart (no basta hot reload).

## Dart: constructores y clases

- **Constructores sin cuerpo**: cuando solo asignan parámetros a campos, se cierran con `;` sin `{}`. Dart asigna automáticamente con `this.param`. Si necesitas lógica extra, usas cuerpo con `{}` pero pierdes `const`.
- **Named parameters**: los `{}` en la firma del constructor indican parámetros con nombre. Convención universal en widgets Flutter. Equivale a desestructurar un objeto en JS.
- **`const` constructors**: permiten crear objetos en tiempo de compilación. Requieren que todos los campos sean `final` y que el constructor no tenga cuerpo.

