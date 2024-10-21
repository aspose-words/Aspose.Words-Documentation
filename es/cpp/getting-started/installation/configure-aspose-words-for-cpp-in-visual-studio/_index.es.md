---
title: Configurar el producto en Visual Studio
second_title: Aspose.Words para C++
articleTitle: Configurar Aspose.Words para C++ en Visual Studio
linktitle: Configurar Aspose.Words para C++ en Visual Studio
description: "Configurar manualmente Aspose.Words para C++ en Visual Studio."
type: docs
weight: 90
url: /es/cpp/configure-aspose-words-for-cpp-in-visual-studio/
---

Aspose.Words para C++ La API funciona con Visual Studio 2022 o posterior. Para trabajar con Visual Studio, es posible que deba instalar Visual C ++ Redistributable disponible en [Sitio web oficial de Microsoft](https://docs.microsoft.com/en-US/cpp/windows/latest-supported-vc-redist?view=msvc-170).

## Configure con MSBuild .archivos de destino

Siga estos pasos para configurar su proyecto con [MSBuild .archivos de destino](https://docs.microsoft.com/en-us/visualstudio/msbuild/msbuild-dot-targets-files):

**Agregue etiquetas de importación con Aspose.Words para C++ dirige los archivos a su archivo vcxproj**
1. Abra el archivo `*.vcxproj` del proyecto en el editor de texto
2. Busque `<ImportGroup Label="ExtensionTargets"></ImportGroup>` al final del archivo
3. Agregue las siguientes etiquetas `Import` dentro de `ImportGroup`:
    {{< highlight xml >}}
    <ImportGroup Label="ExtensionTargets">
        <Import Project="<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets" Condition="Exists('<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets')" />
        <Import Project="<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets" Condition="Exists('<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets')" />
    </ImportGroup>
    </Project>
    {{< /highlight >}}

## Configurar manualmente

Siga estos pasos para configurar manualmente Aspose.Words para C++ en Visual Studio:

**Agregue los Directorios de Inclusión Adicionales:**

1. Propiedad de Proyecto Abierto
2. Vaya a C / C++ → General
3. Agregue los siguientes Directorios de Inclusión adicionales:
`Aspose.Words.Cpp\include`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\include`

**Agregue las Dependencias Adicionales:**

1. Propiedad de Proyecto Abierto
2. Seleccione Configuración → Todas las configuraciones y Plataforma → Todas las plataformas
2. Ir a Enlazador → Entrada
* Para la configuración de la versión:
`Aspose.Words.Cpp\lib\x64\Release\Aspose.Words.Cpp_vc14x64.lib`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.lib`
* Para la configuración de depuración:
`Aspose.Words.Cpp\lib\x64\Debug\Aspose.Words.Cpp_vc14x64d.lib`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.lib`

**Agregue los Comandos:**

1. Propiedad de Proyecto Abierto
2. Vaya a Eventos de Compilación → Evento Posterior a la Compilación
3. Agregue los siguientes comandos:
* Para la configuración de la versión:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.dll" "$(OutDir)"
    {{< /highlight >}}
* Para la configuración de depuración:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64d.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.dll" "$(OutDir)"
    {{< /highlight >}}
