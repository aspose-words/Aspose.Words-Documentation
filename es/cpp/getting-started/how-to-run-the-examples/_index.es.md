---
title: Cómo Ejecutar los Ejemplos
second_title: Aspose.Words para C++
articleTitle: Cómo Ejecutar los Ejemplos
linktitle: Cómo Ejecutar los Ejemplos
description: "Descargar Aspose.Words para C++ obtenga ejemplos de nuestro repositorio GitHub y aprenda a ejecutarlos para familiarizarse con las posibilidades y características de Aspose.Words."
type: docs
weight: 110
url: /es/cpp/how-to-run-the-examples/
timestamp: 2024-07-11-16-13-28
---

Para familiarizarse más con las posibilidades y características de Aspose.Words, proporcionamos ejemplos que se pueden descargar de nuestro repositorio GitHub, ejecutar y aprender en detalle.

En este artículo, puede encontrar los requisitos del sistema, así como información sobre cómo ejecutar los ejemplos.

## Windows con paquete Nuget

### Requisitos de Software y Requisitos Previos

Asegúrese de cumplir con los siguientes requisitos antes de descargar y ejecutar los ejemplos:

1. Visual Studio Código, Visual Studio 2022.
2. Se instaló el Administrador de paquetes NuGet y la última versión de la API NuGet para Visual Studio. (opcional)
3. Seleccionó la opción **nuget.org** en el cuadro de diálogo "Herramientas → Opciones" en "Administrador de paquetesNuGet → Fuentes de paquetes".
4. Una conexión a Internet activa para usar la función de Restauración automática de paquetes `NuGet` en el proyecto de ejemplos. Si no tiene una conexión a Internet activa en la máquina donde se ejecutarán los ejemplos, siga las instrucciones del paquete Windows con Cmake.

### Descargue y Ejecute los Ejemplos

Todos Aspose.Words para C++ los ejemplos están alojados en [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). Puede clonar el repositorio usando su cliente GitHub favorito o descargar [el archivo ZIP](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Después de obtener una copia del repositorio, puede encontrar que:

- Todos los ejemplos se encuentran en la carpeta **Examples**.
- Hay Visual Studio archivos de solución para C++ creados en Visual Studio 2022.

Para ejecutar los ejemplos, abra el archivo de la solución en Visual Studio y compile el proyecto:

- Para **API Reference** ejemplos, la estructura se basa en nombres de clase, para **Docs** ejemplos se basa principalmente en el [Desarrollador Guiled](/words/cpp/developer-guide/) sección de documentación.
- En la primera ejecución, las dependencias se descargarán automáticamente a través de NuGet.
- La carpeta **Data** en la carpeta raíz de **Examples** contiene archivos de entrada que se usaron en los ejemplos.
- Todos los ejemplos se pueden ejecutar como pruebas unitarias.

## Windows con el paquete CMake

### Requisitos de Software y Requisitos Previos

Asegúrese de cumplir con los siguientes requisitos antes de descargar y ejecutar los ejemplos:

1. Visual Studio Código, Visual Studio 2022.
2. [Cmake](https://cmake.org/download/) >= 3.16.0
3. Descargue el último paquete CMake de https://downloads.aspose.com/words/cpp

### Descargue y Ejecute los Ejemplos

Todos Aspose.Words para C++ los ejemplos están alojados en [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). Puede clonar el repositorio usando su cliente GitHub favorito o descargar [el archivo ZIP](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Coloque las carpetas `Aspose.Words.Cpp` y `CodePorting.Native.Cs2Cpp_*` en la raíz de una copia del repositorio.

Todos los ejemplos se encuentran en la carpeta **Examples**.

Para ejecutar los ejemplos, ejecute los siguientes comandos desde la raíz de una copia del repositorio:
{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S Examples\DocsExamples\ -B Examples\DocsExamples\build
{{< /highlight >}}

La solución para Visual Studio se generará en el `Examples\DocsExamples\build`

Para ejecutar los ejemplos, abra el archivo de la solución en Visual Studio y compile el proyecto:

- Para **API Reference** ejemplos, la estructura se basa en nombres de clase, para **Docs** ejemplos se basa principalmente en el [Desarrollador Guiled](/words/cpp/developer-guide/) sección de documentación.
- La carpeta **Data** en la carpeta raíz de **Examples** contiene archivos de entrada que se usaron en los ejemplos.
- Todos los ejemplos se pueden ejecutar como pruebas unitarias.

## Linux

### Requisitos de Software y Requisitos Previos

Asegúrese de cumplir con los siguientes requisitos antes de descargar y ejecutar los ejemplos:

1. CLang >= 3.9.1
2. [Ninja](https://ninja-build.org/)
3. [Cmake](https://cmake.org/download/) >= 3.16.0
4. Descargue el último paquete CMake de https://downloads.aspose.com/words/cpp

### Descargue y Ejecute los Ejemplos

Todos Aspose.Words para C++ los ejemplos están alojados en [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). Puede clonar el repositorio usando su cliente GitHub favorito o descargar [el archivo ZIP](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Coloque las carpetas `Aspose.Words.Cpp` y `CodePorting.Native.Cs2Cpp_*` en la raíz de una copia del repositorio.

Todos los ejemplos se encuentran en la carpeta **Examples**.

Para ejecutar los ejemplos, ejecute los siguientes comandos desde la raíz de una copia del repositorio:
{{< highlight bash >}}
cmake -S Examples/DocsExamples -B Examples/DocsExamples/build -D CMAKE_BUILD_TYPE=Release
cmake --build Examples/DocsExamples/build

cmake -E chdir Examples/DocsExamples/build ctest --verbose
{{< /highlight >}}

- Para **API Reference** ejemplos, la estructura se basa en nombres de clase, para **Docs** ejemplos se basa principalmente en el [Desarrollador Guiled](/words/cpp/developer-guide/) sección de documentación.
- La carpeta **Data** en la carpeta raíz de **Examples** contiene archivos de entrada que se usaron en los ejemplos.
- Todos los ejemplos se pueden ejecutar como pruebas unitarias.

{{% alert color="primary" %}}

Por favor, siéntase libre de comunicarse con nuestro [Aspose.Words Foro de la Familia de Productos](https://forum.aspose.com/c/words/8) si tiene algún problema al configurar o ejecutar los ejemplos.

{{% /alert %}}

## Contribuir a Mejorar los Ejemplos

Si desea agregar o mejorar un ejemplo, lo alentamos a contribuir al proyecto. Todos los ejemplos y proyectos de exhibición en este repositorio son de código abierto y se pueden usar libremente en sus aplicaciones.

Puedes bifurcar el repositorio, editar el código fuente y crear una solicitud de extracción para contribuir. Revisaremos los cambios e los incluiremos en el repositorio si nos resultan útiles.

## Véase También

- [Detalles sobre cómo instalar el Administrador de paquetes NuGet ](https://docs.microsoft.com/nuget/guides/install-nuget)
