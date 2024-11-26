---
title: Het product configureren in Visual Studio
second_title: Aspose.Words voor C++
articleTitle: Aspose.Words configureren voor C++ in Visual Studio
linktitle: Aspose.Words configureren voor C++ in Visual Studio
description: "Configureer Aspose.Words Handmatig voor C++ in Visual Studio."
type: docs
weight: 90
url: /nl/cpp/configure-aspose-words-for-cpp-in-visual-studio/
timestamp: 2024-09-24-14-35-44
---

Aspose.Words voor C++ API werkt met Visual Studio 2022 of hoger. Om met Visual Studio te werken, moet u mogelijk Visual C++ Redistributable installeren beschikbaar op [Microsoft officiële website](https://docs.microsoft.com/en-US/cpp/windows/latest-supported-vc-redist?view=msvc-170).

## Configureren met MSBuild .targets bestanden

Volg deze stappen om uw project te configureren met [MSBuild .targets bestanden](https://docs.microsoft.com/en-us/visualstudio/msbuild/msbuild-dot-targets-files):

**Voeg import tags toe met Aspose.Words voor C++ targets bestanden in uw vcxproj bestand**
1. Open uw project `*.vcxproj` bestand in de teksteditor
2. Zoek `<ImportGroup Label="ExtensionTargets"></ImportGroup>` aan het einde van het bestand
3. Voeg de volgende `Import` tags toe binnen `ImportGroup`:
    {{< highlight xml >}}
    <ImportGroup Label="ExtensionTargets">
        <Import Project="<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets" Condition="Exists('<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets')" />
        <Import Project="<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets" Condition="Exists('<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets')" />
    </ImportGroup>
    </Project>
    {{< /highlight >}}

## Handmatig Configureren

Volg deze stappen om Aspose.Words handmatig te configureren voor C++ in Visual Studio:

**Voeg de extra include Directories toe:**

1. Projecteigendom Openen
2. Ga naar C / C++ → Algemeen
3. Voeg de volgende extra include Directories toe:
* `Aspose.Words.Cpp\include`
* `CodePorting.Translator.Cs2Cpp.Framework_<version>\include`

**Voeg de extra afhankelijkheden toe:**

1. Projecteigendom Openen
2. Selecteer Configuratie → alle configuraties en Platform → alle Platforms
2. Ga naar Linker → Input
* Voor Release configuratie:
  * `Aspose.Words.Cpp\lib\x64\Release\Aspose.Words.Cpp_vc14x64.lib`
  * `CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.lib`
* Voor Debug configuratie:
  * `Aspose.Words.Cpp\lib\x64\Debug\Aspose.Words.Cpp_vc14x64d.lib`
  * `CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.lib`

**Voeg de commando ' s toe:**

1. Projecteigendom Openen
2. Ga naar Build Events → post-Build Event
3. Voeg de volgende commando ' s toe:
* Voor Release configuratie:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.dll" "$(OutDir)"
    {{< /highlight >}}
* Voor Debug configuratie:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64d.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.dll" "$(OutDir)"
    {{< /highlight >}}
