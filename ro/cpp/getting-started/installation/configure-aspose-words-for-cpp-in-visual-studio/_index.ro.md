---
title: Configurați produsul în Visual Studio
second_title: Aspose.Words pentru C++
articleTitle: Configurează Aspose.Words pentru C++ în Visual Studio
linktitle: Configurează Aspose.Words pentru C++ în Visual Studio
description: "Configurați manual Aspose.Words pentru C++ în Visual Studio."
type: docs
weight: 90
url: /ro/cpp/configure-aspose-words-for-cpp-in-visual-studio/
---

Aspose.Words pentru C++ API funcționează cu Visual Studio 2022 sau mai târziu. Pentru a lucra cu Visual Studio, poate fi necesar să instalați Visual C++ Redistributable disponibil pe [Site-ul oficial Microsoft](https://docs.microsoft.com/en-US/cpp/windows/latest-supported-vc-redist?view=msvc-170).

## Configurați cu MSBuild .fișiere țintă

Urmați acești pași pentru a configura proiectul cu [MSBuild .fișiere țintă](https://docs.microsoft.com/en-us/visualstudio/msbuild/msbuild-dot-targets-files):

**Adăugați etichete de Import cu Aspose.Words pentru C++ vizează fișierele în fișierul vcxproj**
1. Deschideți fișierul project `*.vcxproj` în editorul de text
2. Găsiți `<ImportGroup Label="ExtensionTargets"></ImportGroup>` la sfârșitul fișierului
3. Adăugați următoarele etichete `Import` în interiorul `ImportGroup`:
    {{< highlight xml >}}
    <ImportGroup Label="ExtensionTargets">
        <Import Project="<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets" Condition="Exists('<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets')" />
        <Import Project="<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets" Condition="Exists('<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets')" />
    </ImportGroup>
    </Project>
    {{< /highlight >}}

## Configurați Manual

Urmați acești pași pentru a configura manual Aspose.Words pentru C++ în Visual Studio:

**Adăugați directoarele suplimentare includ:**

1. Proprietatea Proiectului Deschis
2. Du-te la C/C++ CP General
3. Adăugați următoarele directoare suplimentare includ:
`Aspose.Words.Cpp\include`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\include`

**Adăugați dependențele suplimentare:**

1. Proprietatea Proiectului Deschis
2. Selectati configuratia pentru toate configuratiile si platforma pentru toate platformele
2. Du-te la intrare Linker
* Pentru configurarea lansării:
`Aspose.Words.Cpp\lib\x64\Release\Aspose.Words.Cpp_vc14x64.lib`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.lib`
* Pentru configurarea depanării:
`Aspose.Words.Cpp\lib\x64\Debug\Aspose.Words.Cpp_vc14x64d.lib`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.lib`

**Adăugați comenzile:**

1. Proprietatea Proiectului Deschis
2. Mergi la evenimente Build eveniment post-Build
3. Adăugați următoarele comenzi:
* Pentru configurarea lansării:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.dll" "$(OutDir)"
    {{< /highlight >}}
* Pentru configurarea depanării:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64d.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.dll" "$(OutDir)"
    {{< /highlight >}}
