---
title: Skonfiguruj produkt w Visual Studio
second_title: Aspose.Words dla C++
articleTitle: Skonfiguruj Aspose.Words dla C++ w Visual Studio
linktitle: Skonfiguruj Aspose.Words dla C++ w Visual Studio
description: "Ręcznie skonfiguruj Aspose.Words dla C++ w Visual Studio."
type: docs
weight: 90
url: /pl/cpp/configure-aspose-words-for-cpp-in-visual-studio/
timestamp: 2024-09-24-14-35-44
---

Aspose.Words dla C++ API Działa z Visual Studio 2022 lub nowszym. Aby pracować z Visual Studio, może być konieczne zainstalowanie Visual C++ Redistributable dostępne na [Microsoft Oficjalna strona](https://docs.microsoft.com/en-US/cpp/windows/latest-supported-vc-redist?view=msvc-170).

## Skonfiguruj za pomocą MSBuild .pliki docelowe

Wykonaj następujące kroki, aby skonfigurować projekt za pomocą [MSBuild .pliki docelowe](https://docs.microsoft.com/en-us/visualstudio/msbuild/msbuild-dot-targets-files):

**Dodaj tagi importu z Aspose.Words dla plików docelowych C++ do pliku vcxproj**
1. Otwórz plik projektu `*.vcxproj` w edytorze tekstu
2. Znajdź `<ImportGroup Label="ExtensionTargets"></ImportGroup>` Na końcu pliku
3. Dodaj następujące tagi `Import` Wewnątrz `ImportGroup`:
    {{< highlight xml >}}
    <ImportGroup Label="ExtensionTargets">
        <Import Project="<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets" Condition="Exists('<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets')" />
        <Import Project="<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets" Condition="Exists('<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets')" />
    </ImportGroup>
    </Project>
    {{< /highlight >}}

## Konfiguruj Ręcznie

Wykonaj następujące kroki, aby ręcznie skonfigurować Aspose.Words dla C++ w Visual Studio:

**Dodaj dodatkowe katalogi Include:**

1. Open Project Property
2. Przejdź do C / C++ → ogólne
3. Dodaj następujące dodatkowe katalogi:
* `Aspose.Words.Cpp\include`
* `CodePorting.Translator.Cs2Cpp.Framework_<version>\include`

**Dodaj dodatkowe zależności:**

1. Open Project Property
2. Wybierz Konfiguracja → wszystkie konfiguracje i platforma → wszystkie platformy
2. Przejdź do Linker → wejście
* Do konfiguracji Wydania:
  * `Aspose.Words.Cpp\lib\x64\Release\Aspose.Words.Cpp_vc14x64.lib`
  * `CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.lib`
* Do konfiguracji debugowania:
  * `Aspose.Words.Cpp\lib\x64\Debug\Aspose.Words.Cpp_vc14x64d.lib`
  * `CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.lib`

**Dodaj polecenia:**

1. Open Project Property
2. Go to Build Events → wydarzenie Post-Build
3. Dodaj następujące polecenia:
* Do konfiguracji Wydania:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.dll" "$(OutDir)"
    {{< /highlight >}}
* Do konfiguracji debugowania:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64d.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.dll" "$(OutDir)"
    {{< /highlight >}}
