- aprender a hacer stateful widgets, en que caso es necesario usar stateful en vez de stateless, ojala aprender stateful widgets al mismo tiempo que se aplica a alguna feature que sea relevante para el proyecto

- diferencia entre return Row() y return const Row()

- que version de Material Design usa este proyecto? es la mas reciente?

- aprender a usar profile mode para inspeccionar la app mientras esta corriendo en el emulador, ver el arbol de widgets, ver el render tree, ver el performance, etc

- Encontre este gotcha:
Scaffold( body: GridView funciona bien
pero wrappear GridView en un Column da error
solucion es wrappear GridView con Expanded
o sea Scaffold( body: Column( children: [ Expanded( child: GridView


- veo que en flutter sidebar hay una seccion flutter property editor, me pregunto se sera buena practica y popular usar los botones de esa interfaz para insertar/wrap widget, padding, container, column, row, etc o si lo mas popular es escribir el codigo a mano

- me pregunto como lo haran los devs profesionales de flutter para inspeccionar los componentes mientras ven la app en emulador, como ven el espacio y boxes de cada componente, spacing, padding, margin, etc

- no se como se manejar estado en flutter, existe manejo de estado sin base de datos? cuando es necesario tener una base de datos local?. state management con Riverpod, Bloc, o Provider.

- me pregunto como lo haran los devs profesionales de flutter para abordar el tema de diferentes tamaños de pantalla, quizas prueban en 2 tamaños, ya que tipicamente estan los telefonos pequeños estilo iphone no max y los grandes estilo iphone pro max, quizas usan alguna herramienta para poder ver en paralelo como se ve el tamaño normal y el tamaño max y con eso esta todo cubierto, o quizas desarrollan para un solo tamaño tipo iphone no max y asumen que en tamaño max se ve bien por escalado automatico

- que la primera vista que se vea sea una vista de catalogo, el catalogo seria un grid de 2 items por fila, cada producto es una card con una imagen, titulo, precio final descontado, precio original previo a descuentos (tachado), precio por litro, boton "-" "+" para quitar y agregar cantidad, cantidad que por defecto es 1, boton agregar con icono de carrito, click en la card lleva a pantalla de detalle de producto

- tener un topbar con hamburguesa a la izquierda (muestra lista con 2 items: "catalogo", "mi perfil"), logo png mi Coca Cola .cl (lo descargare de la web de coca cola), icono de lupa para buscar, icono de carrito para ir al carrito

- pantalla de detalle de producto: link para volver al catalogo, titulo producto, carrusel de imagenes que se puede scrollear a los costados para cambiar de imagen, ademas abajo del carrusel la lista de imagenes en pequeño, es decir, para navegar a una imagen de producto se puede hacer swipe en el carrusel varias veces hasta llegar a esa o clickear la miniatura de abajo para ir directo, precio original tachado, precio final, precio x litro, cantidad que parte por defecto en 1, boton "-" "+", boton "agregar" con icono de carrito, descripcion, probe agregar al carrito en la web de coca cola desde iphone y abre una especie de vista con animacion que aparece desde el costado derecho, ocupa toda la altura, ocupa como un 90% del ancho, queda por encima de la vista de detalle de producto en la que estoy, la vista de fondo esta oscurecida para que se vea que la vista de carrito queda asomada y como por encima, esta vista de carrito tiene arriba una X para cerrarse y el titulo "Artículos en el carrito", luego un item por cada producto indicando imagen, titulo, precio tachado, precio total, cantidades, boton de tacho de basura para eliminar el item, pegado a la parte de abajo veo descuentos, total, boton "ir al pago". esta vista de carrito asomado encima es la misma que se activa al clickear el icono de carrito en topbar a la derecha. quizas sea muy complicado y custom hacerlo en flutter? quizas sea mejor elegir otra forma popular y correcta de hacer algo al clickear agregar al carrito y que sea mas facil, o quizas esa vista asomada si sea la mejor opcion y no sea demasiado dificil/complicada

- vista de carrito con boton continuar, eso lleva a una pantalla para rellenar datos y hacer una compra sin necesidad de loguear, eso me lleva a pensar que tengo que decidir entre obligar a estar logueado para hacer compra, o siempre hacer compra como invitado o pensar en ambos, es decir tener un flujo de usuario logueado y otro de invitado y que ambos funcionen

- tengo la intuicion de que para el tema visual flutter usa "material" que es una especie de estandar, quizas deberia desarrollar toda la app con eso no mas, pero tambien eventualmente quiero aprender a personalizar la apariencia de la app para que tenga personalidad y no se vea como un material tipico, ahi no se si usar una libreria, no se como lo haran los devs profesionales de flutter, si se bajaran themes, si hacen los componentes y apariencia a mano, yo vengo del mundo web nextjs donde se puede usar tailwind con shadcn y personalizar los componentes con clases para darle mas personalidad, tambien he escuchado que existen herramientas "google stitch" y "pencil" pero nunca las he usado y no se si aplican solo a web o tambien a flutter, necesitaria un marco mental con buenas practicas modernas de como abordar el tema de estilos en flutter

- vi por ahi "jetpack compose" pero parece que es exclusivo de android

- no se si ir construyendo y diseñando sobre la marcha o hacer primero un diseño de referencia en figma, stitch, pencil o algun otro, no se que es lo mas popular y recomendado y moderno, probablemente sea importante que esa referencia pueda estar en el proyecto como archivo para que claude code pueda verlo como referencia

- como estructurar carpetas y archivos, como organizar el codigo de forma profesional, esto me imagino que no se completa de inmediato al inicio del proyecto sino que va evolucionando y se va definiendo a medida que se agreguen archivos, funciones y features

- aprender a usar bitrise para hacer deploy automatico a emulador cada vez que hago un commit, quizas tambien hacer deploy a una app de prueba en la play store para ir viendo como se ve en un telefono real y no solo en emulador. aprender las mejores practicas de deploy, CI/CD, ambientes diferentes, etc

- aprender a exportar y probar la app en un telefono real, iphone y android. ver por separado en iphone y android cuales son las formas de hacerlo y cual es la mas usada correcta y profesional

- me pregunto si hay librerias modernas y populares para diversos aspectos de flutter, porque me podria pasar que desarrolle ciertas features a mano y despues me doy cuenta de que hay librerias que lo hacen de forma mas facil, rapida, profesional y con mejores resultados, seria bueno que claude code me vaya sugiriendo librerias modernas y populares para cada cosa que vaya necesitando, quizas incluso antes de que yo empiece a desarrollar esa feature. que detecte automaticamente cuando es bueno que me de una sugerencia en vez de llegar y desarrollar "a mano"

- agregar login con google, aqui no se si se necesita un backend o si se puede hacer solo con flutter, o usar una plataforma tipo firebase para no tener que usar un backend propio

- agregar login con apple

- agregar login con email y contraseña ademas de tener el login de google

- construir un backend nestjs que sirva de API para este proyecto flutter

- agregar db postgres

- elegir como hostear backend y db en GCP

- ver tema autenticacion con backend nestjs, quizas usar jwt o session, hacer a mano o usar una libreria y plataforma externa?

- hacer un frontend dashboard web con angular para administrar el catalogo de productos, ver ordenes, etc

- ver como hostear el frontend angular en GCP

- probar agregar un producto en dashboard y que aparezca en la app flutter
