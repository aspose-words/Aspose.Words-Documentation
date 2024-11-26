---
title: Конфигуриране на продукта в Visual Studio
second_title: Aspose.Words за C++
articleTitle: Настройване Aspose.Words за C++ в Visual Studio
linktitle: Настройване Aspose.Words за C++ в Visual Studio
description: "Ръчно конфигуриране на Aspose.Words за C++ в Visual Studio."
type: docs
weight: 90
url: /bg/cpp/configure-aspose-words-for-cpp-in-visual-studio/
timestamp: 2024-09-24-14-35-44
---

Aspose.Words за C++ API работи с Visual Studio 2022 или по-късно. За да работите с Visual Studio, може да се наложи да инсталирате Visual C++ Redistributable [Microsoft официален уебсайт](https://docs.microsoft.com/en-US/cpp/windows/latest-supported-vc-redist?view=msvc-170).

## Настройване с MSBuild .цели файлове

Следвайте тези стъпки, за да конфигурирате Вашия проект с [MSBuild .цели файлове](https://docs.microsoft.com/en-us/visualstudio/msbuild/msbuild-dot-targets-files):

**Добави етикети за импортиране с Aspose.Words за C++ целеви файлове във вашия файл**
1. Отворете файла `*.vcxproj` в текстовия редактор
2. Намери `<ImportGroup Label="ExtensionTargets"></ImportGroup>` в края на файла
3. Добави следните `Import` тагове вътре `ImportGroup`:
    {{< highlight xml >}}
    <ImportGroup Label="ExtensionTargets">
        <Import Project="<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets" Condition="Exists('<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets')" />
        <Import Project="<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets" Condition="Exists('<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets')" />
    </ImportGroup>
    </Project>
    {{< /highlight >}}

## Настройване Ръчно

Следвайте тези стъпки, за да конфигурирате ръчно Aspose.Words за C++ в Visual Studio:

**Добавяне на допълнителни включват директории:**

1. Отворен Проект Имот
2. Отиди в с / C++ → Общ
3. Добавете следните допълнителни включват директории:
* `Aspose.Words.Cpp\include`
* `CodePorting.Translator.Cs2Cpp.Framework_<version>\include`

**Добавете допълнителни зависимости:**

1. Отворен Проект Имот
2. Изберете конфигурация → всички конфигурации и платформа → всички платформи
2. Отидете на Линкер → вход
* За конфигурация на освобождаване:
  * `Aspose.Words.Cpp\lib\x64\Release\Aspose.Words.Cpp_vc14x64.lib`
  * `CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.lib`
* За конфигурация за отстраняване на грешки:
  * `Aspose.Words.Cpp\lib\x64\Debug\Aspose.Words.Cpp_vc14x64d.lib`
  * `CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.lib`

**Добавяне на команди:**

1. Отворен Проект Имот
2. Отидете на изграждане на събития → събитие след изграждане
3. Добавете следните команди:
* За конфигурация на освобождаване:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.dll" "$(OutDir)"
    {{< /highlight >}}
* За конфигурация за отстраняване на грешки:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64d.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.dll" "$(OutDir)"
    {{< /highlight >}}
