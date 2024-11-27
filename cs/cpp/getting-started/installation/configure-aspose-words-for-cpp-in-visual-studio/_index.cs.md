---
title: Konfigurace produktu v Visual Studio
second_title: Aspose.Words pro C++
articleTitle: Konfigurace Aspose.Words pro C++ v Visual Studio
linktitle: Konfigurace Aspose.Words pro C++ v Visual Studio
description: "Ručně nakonfigurujte Aspose.Words pro C++ v Visual Studio."
type: docs
weight: 90
url: /cs/cpp/configure-aspose-words-for-cpp-in-visual-studio/
timestamp: 2024-09-24-14-35-44
---

Aspose.Words Pro C++ API pracuje s Visual Studio 2022 nebo novějším. Chcete-li pracovat s Visual Studio, možná budete muset nainstalovat Visual C++ Redistributable k dispozici na [Microsoft oficiální stránky](https://docs.microsoft.com/en-US/cpp/windows/latest-supported-vc-redist?view=msvc-170).

## Nakonfigurujte pomocí MSBuild .cílové soubory

Chcete-li svůj projekt nakonfigurovat pomocí [MSBuild .cílové soubory](https://docs.microsoft.com/en-us/visualstudio/msbuild/msbuild-dot-targets-files):

**Přidejte importní značky s Aspose.Words pro C++ cílové soubory do souboru vcxproj**
1. Otevřete soubor projektu `*.vcxproj` v textovém editoru
2. Najděte `<ImportGroup Label="ExtensionTargets"></ImportGroup>` na konci souboru
3. Přidejte do `ImportGroup`následující značky `Import`:
    {{< highlight xml >}}
    <ImportGroup Label="ExtensionTargets">
        <Import Project="<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets" Condition="Exists('<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets')" />
        <Import Project="<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets" Condition="Exists('<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets')" />
    </ImportGroup>
    </Project>
    {{< /highlight >}}

## Konfigurovat Ručně

Postupujte takto a ručně nakonfigurujte Aspose.Words pro C++ v Visual Studio:

**Přidejte další adresáře Include:**

1. Otevřít Vlastnost Projektu
2. Přejít na C / C++ → Obecné
3. Přidejte následující další adresáře:
* `Aspose.Words.Cpp\include`
* `CodePorting.Translator.Cs2Cpp.Framework_<version>\include`

**Přidejte další závislosti:**

1. Otevřít Vlastnost Projektu
2. Vyberte Konfigurace → všechny konfigurace a platforma → všechny platformy
2. Přejít na Linker → vstup
* Pro konfiguraci uvolnění:
  * `Aspose.Words.Cpp\lib\x64\Release\Aspose.Words.Cpp_vc14x64.lib`
  * `CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.lib`
* Pro konfiguraci ladění:
  * `Aspose.Words.Cpp\lib\x64\Debug\Aspose.Words.Cpp_vc14x64d.lib`
  * `CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.lib`

**Přidejte příkazy:**

1. Otevřít Vlastnost Projektu
2. Přejít na Build Events → Post-Build Event
3. Přidejte následující příkazy:
* Pro konfiguraci uvolnění:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.dll" "$(OutDir)"
    {{< /highlight >}}
* Pro konfiguraci ladění:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64d.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.dll" "$(OutDir)"
    {{< /highlight >}}
