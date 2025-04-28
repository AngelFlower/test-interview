# Proyecto Flutter

Este es un proyecto Flutter funcional diseñado para una prueba técnica, siguiendo una estructura basada en principios de **Clean Architecture**.
Nota: visualizar rama "final" para ver los últimos avances ya que main es un corte del avance hasta el término de la entrevista

## Herramientas Utilizadas

- **Flutter SDK**: `^3.7.2`
- **go_router**: Navegación declarativa y manejo de rutas (`^15.1.1`)
- **bloc** y **flutter_bloc**: Gestión de estado basada en BLoC (`^9.0.0` / `^9.1.0`)
- **shared_preferences**: Persistencia local de datos sencillos (`^2.5.3`)
- **intl**: Internacionalización y formateo de fechas y números (`^0.20.2`)
- **logger**: Registro y seguimiento de eventos (`^2.5.0`)
- **cupertino_icons**: Íconos de estilo iOS (`^1.0.8`)

## Estructura General

```plaintext
lib/
├── core/                  # Clases y utilidades comunes a toda la app (helpers, themes, constants, etc.)
├── features/              # Cada funcionalidad principal de la app separada modularmente
│   └── feature_name/      # Nombre de la feature
│       ├── data/          # Implementaciones concretas (APIs, modelos, repositorios)
│       ├── domain/        # Entidades, repositorios abstractos, casos de uso
│       └── presentation/  # Widgets, pantallas, blocs, estados, eventos
├── main.dart              # Configuración principal de la app (rutas, providers, inicialización)
```

**Notas:**

- Cada `feature/` es autocontenida, facilitando la escalabilidad y el mantenimiento.
- La carpeta `core/` sirve para mantener el código reutilizable y genérico entre diferentes features.

## Consideraciones Técnicas

- **Gestión de Estado**:  
  Se utiliza el patrón **BLoC (Business Logic Component)** para separar claramente la lógica de negocio de la UI. Cada feature maneja su propio bloc para modularidad.

- **Persistencia**:  
  Para persistencia local de información sencilla (como tokens, configuraciones o flags) se utiliza `shared_preferences`.

- **Navegación**:  
  `go_router` facilita la navegación declarativa basada en rutas nombradas, integrando fácil manejo de estados de navegación y redirecciones.

- **Internacionalización**:  
  `intl` permite adaptar fácilmente la app a diferentes formatos regionales de fecha, número, y texto.

- **Logging**:  
  `logger` facilita el seguimiento de errores y eventos importantes en el flujo de la aplicación.

## Ejecución del Proyecto

Para correr el proyecto en tu dispositivo o emulador:

```bash
flutter pub get
flutter run
```
