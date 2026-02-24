# Generador de Proyectos .NET con Minimal API y Pruebas Unitarias

Este proyecto contiene un script (`generador.sh`) que automatiza la creación de una solución .NET con una **Minimal API**, un proyecto de pruebas unitarias y un archivo de configuración para Docker. Está diseñado para facilitar el desarrollo y despliegue de aplicaciones .NET modernas.

## Estructura del Proyecto

La carpeta `Proyecto` contiene los siguientes elementos:

Recopilando información del área de trabajo```markdown
# Generador de Proyectos .NET con Minimal API y Pruebas Unitarias

Este proyecto contiene un script (`generador.sh`) que automatiza la creación de una solución .NET con una **Minimal API**, un proyecto de pruebas unitarias y un archivo de configuración para Docker. Está diseñado para facilitar el desarrollo y despliegue de aplicaciones .NET modernas.

## Estructura del Proyecto

La carpeta `Proyecto` contiene los siguientes elementos:

```
Proyecto/
├── generador.sh                # Script para generar la solución y proyectos asociados
├── ProyectoCopilot/            # Carpeta del proyecto principal (Minimal API)
│   ├── appsettings.json        # Configuración de la aplicación
│   ├── appsettings.Development.json
│   ├── Dockerfile              # Archivo para construir la imagen Docker
│   ├── Program.cs              # Punto de entrada de la aplicación
│   ├── ProyectoCopilot.csproj  # Archivo del proyecto .NET
│   └── Properties/             # Configuración adicional del proyecto
├── ProyectoCopilot.Tests/      # Carpeta del proyecto de pruebas unitarias
│   ├── UnitTest1.cs            # Ejemplo de prueba unitaria
│   ├── ProyectoCopilot.Tests.csproj
├── ProyectoCopilotSolution.slnx # Archivo de solución .NET
```

## Uso del Script

El script `generador.sh` crea automáticamente la estructura del proyecto. Sigue estos pasos para usarlo:

1. **Dar permisos de ejecución al script**:
   ```bash
   chmod +x generador.sh
   ```

2. **Ejecutar el script**:
   ```bash
   ./generador.sh [NOMBRE_DEL_PROYECTO]
   ```
   - Si no se especifica un nombre, el proyecto se llamará `MinimalApiProject` por defecto.

3. **Estructura generada**:
   - Un proyecto principal con una Minimal API.
   - Un proyecto de pruebas unitarias con `xUnit`.
   - Un archivo de solución `.sln` que asocia ambos proyectos.
   - Un archivo `Dockerfile` para construir y desplegar la aplicación.

## Funcionalidades del Script

- **Creación de proyectos**:
  - Genera un proyecto principal con `dotnet new webapi`.
  - Genera un  deproyecto pruebas con `dotnet new xunit`.

- **Asociación de proyectos**:
  - Agrega una referencia del proyecto de pruebas al proyecto principal.

- **Gestión de solución**:
  - Crea un archivo de solución `.sln` y agrega ambos proyectos.

- **Configuración de dependencias**:
  - Agrega paquetes necesarios para pruebas (`Microsoft.AspNetCore.Mvc.Testing`, `MiniValidation`).

- **Preparación para Docker**:
  - Genera un archivo `Dockerfile` para construir y ejecutar la aplicación en contenedores.

## Requisitos

- **Herramientas necesarias**:
  - .NET SDK 8.0 o superior.
  - Bash (para ejecutar el script).
  - Docker (opcional, para construir y ejecutar la imagen).

## Despliegue con Docker

1. **Construir la imagen**:
   ```bash
   docker build -t nombre-imagen ./ProyectoCopilot
   ```

2. **Ejecutar el contenedor**:
   ```bash
   docker run -p 80:80 nombre-imagen
   ```

La aplicación estará disponible en `http://localhost:80`.

## Notas

- El script asume que se ejecuta desde la carpeta Proyecto.
- Puedes personalizar el nombre del proyecto y otros parámetros modificando el script generador.sh.

¡Disfruta desarrollando con este generador automatizado!
```
## Uso del Script

El script `generador.sh` crea automáticamente la estructura del proyecto. Sigue estos pasos para usarlo:

1. **Dar permisos de ejecución al script**:
   ```bash
   chmod +x generador.sh./generador.sh [NOMBRE_DEL_PROYECTO]


   Recopilando información del área de trabajo```markdown
# Generador de Proyectos .NET con Minimal API y Pruebas Unitarias

Este proyecto contiene un script (`generador.sh`) que automatiza la creación de una solución .NET con una **Minimal API**, un proyecto de pruebas unitarias y un archivo de configuración para Docker. Está diseñado para facilitar el desarrollo y despliegue de aplicaciones .NET modernas.

## Estructura del Proyecto

La carpeta `Proyecto` contiene los siguientes elementos:

```
Proyecto/
├── generador.sh                # Script para generar la solución y proyectos asociados
├── ProyectoCopilot/            # Carpeta del proyecto principal (Minimal API)
│   ├── appsettings.json        # Configuración de la aplicación
│   ├── appsettings.Development.json
│   ├── Dockerfile              # Archivo para construir la imagen Docker
│   ├── Program.cs              # Punto de entrada de la aplicación
│   ├── ProyectoCopilot.csproj  # Archivo del proyecto .NET
│   └── Properties/             # Configuración adicional del proyecto
├── ProyectoCopilot.Tests/      # Carpeta del proyecto de pruebas unitarias
│   ├── UnitTest1.cs            # Ejemplo de prueba unitaria
│   ├── ProyectoCopilot.Tests.csproj
├── ProyectoCopilotSolution.slnx # Archivo de solución .NET
```

## Uso del Script

El script `generador.sh` crea automáticamente la estructura del proyecto. Sigue estos pasos para usarlo:

1. **Dar permisos de ejecución al script**:
   ```bash
   chmod +x generador.sh
   ```

2. **Ejecutar el script**:
   ```bash
   ./generador.sh [NOMBRE_DEL_PROYECTO]
   ```
   - Si no se especifica un nombre, el proyecto se llamará `MinimalApiProject` por defecto.

3. **Estructura generada**:
   - Un proyecto principal con una Minimal API.
   - Un proyecto de pruebas unitarias con `xUnit`.
   - Un archivo de solución `.sln` que asocia ambos proyectos.
   - Un archivo `Dockerfile` para construir y desplegar la aplicación.

## Funcionalidades del Script

- **Creación de proyectos**:
  - Genera un proyecto principal con `dotnet new webapi`.
  - Genera un  deproyecto pruebas con `dotnet new xunit`.

- **Asociación de proyectos**:
  - Agrega una referencia del proyecto de pruebas al proyecto principal.

- **Gestión de solución**:
  - Crea un archivo de solución `.sln` y agrega ambos proyectos.

- **Configuración de dependencias**:
  - Agrega paquetes necesarios para pruebas (`Microsoft.AspNetCore.Mvc.Testing`, `MiniValidation`).

- **Preparación para Docker**:
  - Genera un archivo `Dockerfile` para construir y ejecutar la aplicación en contenedores.

## Requisitos

- **Herramientas necesarias**:
  - .NET SDK 8.0 o superior.
  - Bash (para ejecutar el script).
  - Docker (opcional, para construir y ejecutar la imagen).

## Despliegue con Docker

1. **Construir la imagen**:
   ```bash
   docker build -t nombre-imagen ./ProyectoCopilot
   ```

2. **Ejecutar el contenedor**:
   ```bash
   docker run -p 80:80 nombre-imagen
   ```

La aplicación estará disponible en `http://localhost:80`.

## Notas

- El script asume que se ejecuta desde la carpeta Proyecto.
- Puedes personalizar el nombre del proyecto y otros parámetros modificando el script generador.sh.

¡Disfruta desarrollando con este generador automatizado!
```
Despliegue con Docker
Construir la imagen:

docker build -t nombre-imagen ./ProyectoCopilot


Ejecutar el contenedor:
docker run -p 80:80 nombre-imagen

La aplicación estará disponible en http://localhost:80.

Notas
El script asume que se ejecuta desde la carpeta Proyecto.
Puedes personalizar el nombre del proyecto y otros parámetros modificando el script generador.sh.
¡Disfruta desarrollando con este generador automatizado! ```
