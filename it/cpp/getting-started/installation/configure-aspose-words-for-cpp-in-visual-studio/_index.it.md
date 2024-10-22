---
title: Configurare il prodotto in Visual Studio
second_title: Aspose.Words per C++
articleTitle: Configurare Aspose.Words per C++ in Visual Studio
linktitle: Configurare Aspose.Words per C++ in Visual Studio
description: "Configurare manualmente Aspose.Words per C++ in Visual Studio."
type: docs
weight: 90
url: /it/cpp/configure-aspose-words-for-cpp-in-visual-studio/
---

Aspose.Words per C++ L'API funziona con Visual Studio 2022 o versioni successive. Per lavorare con Visual Studio, potrebbe essere necessario installare Visual C++ Redistributable disponibile su [Sito ufficiale Microsoft](https://docs.microsoft.com/en-US/cpp/windows/latest-supported-vc-redist?view=msvc-170).

## Configurare con MSBuild.file di destinazione

Segui questi passaggi per configurare il tuo progetto con [MSBuild .file di destinazione](https://docs.microsoft.com/en-us/visualstudio/msbuild/msbuild-dot-targets-files):

**Aggiungi tag di importazione con Aspose.Words per C++ destinazione dei file nel file vcxproj**
1. Apri il file di progetto `*.vcxproj` nell'editor di testo
2. Trova `<ImportGroup Label="ExtensionTargets"></ImportGroup>` alla fine del file
3. Aggiungi i seguenti tag `Import`all'interno di `ImportGroup`:
    {{< highlight xml >}}
    <ImportGroup Label="ExtensionTargets">
        <Import Project="<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets" Condition="Exists('<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets')" />
        <Import Project="<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets" Condition="Exists('<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets')" />
    </ImportGroup>
    </Project>
    {{< /highlight >}}

## Configurare manualmente

Seguire questi passaggi per configurare manualmente Aspose.Words per C++ in Visual Studio:

**Aggiungi le directory di inclusione aggiuntive:**

1. Apri la proprietà del progetto
2. Vai a C / C++ → Generale
3. Aggiungi le seguenti directory aggiuntive Includi:
`Aspose.Words.Cpp\include`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\include`

**Aggiungi le dipendenze aggiuntive:**

1. Apri la proprietà del progetto
2. Selezionare Configurazione → Tutte le configurazioni e Piattaforma → Tutte le piattaforme
2. Vai a Linker → Input
* Per la configurazione del rilascio:
`Aspose.Words.Cpp\lib\x64\Release\Aspose.Words.Cpp_vc14x64.lib`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.lib`
* Per la configurazione di debug:
`Aspose.Words.Cpp\lib\x64\Debug\Aspose.Words.Cpp_vc14x64d.lib`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.lib`

**Aggiungi i comandi:**

1. Apri la proprietà del progetto
2. Vai a Costruire eventi → Post-Costruire evento
3. Aggiungere i seguenti comandi:
* Per la configurazione del rilascio:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.dll" "$(OutDir)"
    {{< /highlight >}}
* Per la configurazione di debug:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64d.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.dll" "$(OutDir)"
    {{< /highlight >}}
