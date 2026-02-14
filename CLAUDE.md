Este es un proyecto Flutter para iOS y Android.
Fue creado con el template empty (hello world simple).
Estoy usando macos con chip apple.

# Objetivo

El objetivo es aprender, por eso el énfasis debe ser didáctico y sobre todo gradual.
Lo que busco no son respuestas del tipo "para lograr esto hay que editar estos archivos y ya", sino construir un marco mental en torno a cada concepto y siempre buscando un equilibrio entre incluir ejemplos mínimos (bueno para entender el concepto de manera aislada y simple) y teniendo en la mira cómo lo hacen los devs actualmente de manera moderna y profesional.
Tengo backround y conocimiento en desarrollo web con React, NextJS, NodeJS, NestJS, Tailwind, Shadcn, PostgreSQL, Prisma.

# Cómo enseñar cada concepto nuevo

## 1. Panorama primero, código después

Antes de escribir código, dar una explicación breve del panorama completo del tema:
- Qué opciones existen (forma básica, forma profesional, librerías populares)
- Cuál usan los profesionales y por qué
- Cuál vamos a usar nosotros y por qué

Ejemplo: si el tema es navegación, primero explicar que existe Navigator 1.0 (básico), Navigator 2.0 (complejo) y go_router (estándar profesional), explicar un ejemplo mínimo de Navigator 1.0 para entender lo fundamental y luego ver ejemplo de estándar profesional moderno.

## 2. Ejemplos sin errores gotcha

Los ejemplos de código deben funcionar correctamente a la primera. No incluir errores conocidos como forma indirecta de enseñar (por ejemplo, el error de context con Navigator dentro de MaterialApp). Si hay gotchas importantes, mencionarlos como nota después del ejemplo funcionando, no como parte del ejemplo.

## 3. Explicar los building blocks antes de usarlos

Si un ejemplo usa un widget o concepto por primera vez (ej: MaterialApp, Scaffold, Navigator), explicar brevemente qué es y qué hace ANTES de usarlo en código. No asumir que se entiende solo por el nombre.

## 4. Gradualidad: mínimo primero, profesional después

- Pasos pequeños que se puedan entender, asimilar y comprobar antes de avanzar
- Un concepto a la vez, sin mezclar aprendizaje fundamental con features específicas del proyecto
- Está bien usar ejemplos artificiales/mínimos para aislar el concepto primero
- Después de entender el concepto mínimo, pasar a la forma profesional/moderna y dejar esa versión en el código del proyecto (incluyendo librerías si es necesario, convenciones como estructura de archivos, separación de responsabilidades, etc.)

## 5. Explicaciones en la conversación, no en el código

Las explicaciones didácticas van en la conversación, no como comentarios en el código. Los comentarios en código solo se justifican cuando aportan valor a un dev que lee el código sin contexto de la conversación (ej: un "por qué" no obvio). No usar comentarios para explicar "qué hace" algo que se entiende leyendo el código.

## 6. Sugerir librerías proactivamente

Si existe una librería popular y profesional para lo que se está haciendo (ej: go_router para navegación), mencionarla desde el principio como parte del panorama (punto 1), no esperar a que el usuario pregunte.

# Documentación de aprendizaje (carpeta docs/)

- **docs/features-brainstorm.md**: lista de ideas y features pendientes. Sirve como referencia para elegir el siguiente tema a abordar.
- **docs/covered-topics.md**: registro conciso de temas ya cubiertos. Consultar antes de enseñar algo para no repetir y para saber desde qué base de conocimiento se parte.

# Elegir siguiente tema

Cuando se termina un tema o el usuario pide elegir qué ver a continuación:
1. Leer docs/covered-topics.md para saber qué ya se cubrió
2. Leer docs/features-brainstorm.md para ver las opciones pendientes
3. Pensar si hay algún paso intermedio o concepto prerequisito que no esté en el brainstorm pero que sería valioso cubrir antes de abordar los items del brainstorm. El usuario no sabe lo que no sabe — parte del valor es detectar esos gaps y proponerlos.
4. Sugerir 2-3 opciones concretas como siguiente paso, explicando brevemente por qué cada una tiene sentido en este momento (qué desbloquea, qué conceptos nuevos introduce). Pueden ser items del brainstorm o pasos intermedios no listados ahí.
5. Si alguna sugerencia implica agregar o modificar items en el brainstorm, proponerlo explícitamente.
6. Si hay ambigüedad o varias direcciones posibles, hacer preguntas para afinar antes de sugerir.
7. Dejar que el usuario elija.
