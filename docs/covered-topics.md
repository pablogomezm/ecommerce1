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
- **Constructor vacío implícito**: si una clase no recibe parámetros ni hace nada en el constructor, Dart genera uno vacío automáticamente. No es necesario declararlo.
- **Guion bajo `_` = privado**: en Dart, el prefijo `_` hace que una clase, variable o método sea privado (solo visible dentro del archivo).

## StatefulWidget

- **Cuándo usar StatefulWidget vs StatelessWidget**: si el widget necesita "recordar" algo que cambia y re-dibujarse cuando cambia → StatefulWidget. Si solo muestra datos que le llegan por constructor → StatelessWidget. Equivale a un componente React con `useState` vs uno sin estado.
- **Anatomía**: se compone de dos clases. La clase del widget (`extends StatefulWidget`) es inmutable y solo crea el State. La clase del estado (`extends State<MiWidget>`) contiene las variables mutables y el método `build`. Dos clases porque Flutter puede destruir/recrear el widget durante rebuilds, pero el State persiste.
- **`setState`**: es obligatorio para notificar a Flutter que el estado cambió y debe re-llamar `build`. Sin `setState`, la variable cambia pero la UI no se actualiza. Equivale a `setState` de React (o el setter de `useState`).
- **`widget.xxx`**: desde el State, se accede a las propiedades del StatefulWidget padre a través de `widget`. Es como acceder a props desde dentro del estado.
- **`super.key`**: en widgets públicos se incluye para que consumidores externos puedan pasar un key. En widgets privados (`_MiWidget`) que nunca reciben key, el linter pide omitirlo.
- **StatefulWidget es para estado local**. Para estado compartido entre widgets no relacionados (ej: carrito de compras) se usan soluciones de state management (Riverpod, Bloc, Provider) — tema por cubrir.

## Gotchas de layout

- **Widgets scrolleables dentro de Column**: `GridView`/`ListView` dentro de un `Column` necesitan `Expanded` para recibir altura finita. Sin eso, ambos intentan ser infinitamente altos y Flutter crashea. `Column` da altura ilimitada a sus hijos, y los scrolleables intentan expandirse infinito.

## DevTools y debugging visual

- **Flutter DevTools**: herramienta de inspección equivalente (parcial) al inspector web de Chrome. Se abre desde VSCode con Cmd+Shift+P → "Flutter: Open DevTools" o "Dart: Open DevTools". La app debe estar corriendo en debug mode.
- **Widget Inspector / Select Widget Mode**: permite tocar un elemento en el simulador para ver qué widget es, en qué archivo está, y su árbol de padres/hijos.
- **Show Implementation Widgets**: por defecto el inspector solo muestra tus widgets. Activando esta opción se revelan los widgets internos del framework (Padding, ConstrainedBox, etc. generados por widgets de Material). Equivale a ver el Shadow DOM en web.
- **Flex Explorer**: panel que aparece solo al seleccionar un Row/Column/Flex en el widget tree. Muestra visualmente cómo se distribuye el espacio entre hijos. No aparece para otros tipos de widget.
- **Show Guidelines** (botón en DevTools): dibuja líneas guía sutiles entre widgets para verificar alineación. Más limpio que Debug Paint.
- **Approach práctico para debugging de spacing**: (1) conocer defaults de Material (IconButton = 48x48 min con padding 8, ListTile = padding horizontal 16, etc.), (2) Flex Explorer sin implementation widgets para distribución en Row/Column, (3) Debug Paint para vista rápida, (4) `Container(color: Colors.red, child: ...)` temporal para ver espacio real de un widget (equivale a `border: 1px solid red` en CSS).
