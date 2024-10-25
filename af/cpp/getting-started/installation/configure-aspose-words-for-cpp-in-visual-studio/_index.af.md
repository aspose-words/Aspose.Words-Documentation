---
title: Konfigureer die produk in Visual Studio
second_title: Aspose.Words vir C++
articleTitle: Konfigureer Aspose.Words vir C++ in Visual Studio
linktitle: Konfigureer Aspose.Words vir C++ in Visual Studio
description: "Hand konfigureer Aspose.Words vir C++ in Visual Studio."
type: docs
weight: 90
url: /af/cpp/configure-aspose-words-for-cpp-in-visual-studio/
---

Aspose.Words vir C++ API werk met Visual Studio 2022 of later. Om met Visual Studio te werk, moet u moontlik Visual C++ Redistributable beskikbaar installeer op [Microsoft amptelike webwerf](https://docs.microsoft.com/en-US/cpp/windows/latest-supported-vc-redist?view=msvc-170).

## Konfigureer met MSBuild .teiken Lêers

Volg hierdie stappe om jou projek te konfigureer met [MSBuild .teiken lêers](https://docs.microsoft.com/en-us/visualstudio/msbuild/msbuild-dot-targets-files):

**Voeg Invoer etikette met Aspose.Words vir C++ teiken lêers in jou vcxproj lêer**
1. Open u projek `*.vcxproj` lêer in die teksredigeerder
2. Vind `<ImportGroup Label="ExtensionTargets"></ImportGroup>` aan die einde van die lêer
3. Voeg die volgende `Import` tags binne `ImportGroup`:
    {{< highlight xml >}}
    <ImportGroup Label="ExtensionTargets">
        <Import Project="<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets" Condition="Exists('<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets')" />
        <Import Project="<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets" Condition="Exists('<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets')" />
    </ImportGroup>
    </Project>
    {{< /highlight >}}

## Konfigureer Handmatig

Volg hierdie stappe om handmatig te konfigureer Aspose.Words vir C++ in Visual Studio:

**Voeg Die Bykomende Sluit Gidse:**

1. Oop Projek Eiendom
2. Gaan Na C / C++ Algemene
3. Voeg Die Volgende Bykomende Sluit Gidse:
`Aspose.Words.Cpp\include`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\include`

**Voeg Die Bykomende Afhanklikhede by:**

1. Oop Projek Eiendom
2. Kies Opset-Al Die Konfigurasies En Platform-Al Die Platforms
2. Gaan Na Linker
* Vir Vrystellingskonfigurasie:
`Aspose.Words.Cpp\lib\x64\Release\Aspose.Words.Cpp_vc14x64.lib`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.lib`
* Vir Ontfoutopstelling:
`Aspose.Words.Cpp\lib\x64\Debug\Aspose.Words.Cpp_vc14x64d.lib`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.lib`

**Voeg Die Opdragte by:**

1. Oop Projek Eiendom
2. Gaan Om Gebeure Te Bou
3. Voeg die Volgende Opdragte by:
* Vir Vrystellingskonfigurasie:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.dll" "$(OutDir)"
    {{< /highlight >}}
* Vir Ontfoutopstelling:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64d.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.dll" "$(OutDir)"
    {{< /highlight >}}
