---
title: Konfigurieren Sie das Produkt in Visual Studio
second_title: Aspose.Words für C++
articleTitle: Konfigurieren Aspose.Words für C++ in Visual Studio
linktitle: Konfigurieren Aspose.Words für C++ in Visual Studio
description: "Manuell konfigurieren Aspose.Words für C++ in Visual Studio."
type: docs
weight: 90
url: /de/cpp/configure-aspose-words-for-cpp-in-visual-studio/
timestamp: 2024-09-24-14-35-44
---

Aspose.Words für C++ API funktioniert mit Visual Studio 2022 oder höher. Um mit Visual Studio zu arbeiten, müssen Sie möglicherweise Visual C++ Redistributable installieren, das auf verfügbar ist [Microsoft offizielle Website](https://docs.microsoft.com/en-US/cpp/windows/latest-supported-vc-redist?view=msvc-170).

## Konfigurieren Sie mit MSBuild .zieldateien

Befolgen Sie diese Schritte, um Ihr Projekt mit zu konfigurieren [MSBuild .zieldateien](https://docs.microsoft.com/en-us/visualstudio/msbuild/msbuild-dot-targets-files):

**Fügen Sie Import-Tags hinzu mit Aspose.Words für C++ zielt auf Dateien in Ihre vcxproj-Datei**
1. Öffnen Sie Ihre Projektdatei `*.vcxproj` im Texteditor
2. Suchen Sie `<ImportGroup Label="ExtensionTargets"></ImportGroup>` am Ende der Datei
3. Fügen Sie die folgenden `Import` -Tags in `ImportGroup` ein:
    {{< highlight xml >}}
    <ImportGroup Label="ExtensionTargets">
        <Import Project="<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets" Condition="Exists('<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets')" />
        <Import Project="<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets" Condition="Exists('<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets')" />
    </ImportGroup>
    </Project>
    {{< /highlight >}}

## Manuell konfigurieren

Befolgen Sie diese Schritte, um manuell zu konfigurieren Aspose.Words für C++ in Visual Studio:

**Fügen Sie die zusätzlichen Include-Verzeichnisse hinzu:**

1. Projekteigenschaft öffnen
2. Gehe zu C/C++ → Allgemein
3. Fügen Sie die folgenden zusätzlichen Include-Verzeichnisse hinzu:
`Aspose.Words.Cpp\include`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\include`

**Fügen Sie die zusätzlichen Abhängigkeiten hinzu:**

1. Projekteigenschaft öffnen
2. Wählen Sie Konfiguration → Alle Konfigurationen und Plattform → Alle Plattformen
2. Gehe zu Linker → Eingabe
* Für die Freigabekonfiguration:
`Aspose.Words.Cpp\lib\x64\Release\Aspose.Words.Cpp_vc14x64.lib`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.lib`
* Für die Debug-Konfiguration:
`Aspose.Words.Cpp\lib\x64\Debug\Aspose.Words.Cpp_vc14x64d.lib`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.lib`

**Fügen Sie die Befehle hinzu:**

1. Projekteigenschaft öffnen
2. Gehe zu Build-Ereignisse → Post-Build-Ereignis
3. Fügen Sie die folgenden Befehle hinzu:
* Für die Freigabekonfiguration:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.dll" "$(OutDir)"
    {{< /highlight >}}
* Für die Debug-Konfiguration:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64d.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.dll" "$(OutDir)"
    {{< /highlight >}}
