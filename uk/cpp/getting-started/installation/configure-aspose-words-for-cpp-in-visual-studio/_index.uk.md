---
title: Налаштуйте продукт у Visual Studio
second_title: Aspose.Words для C++
articleTitle: Налаштуйте Aspose.Words для C++ в Visual Studio
linktitle: Налаштуйте Aspose.Words для C++ в Visual Studio
description: "Вручну налаштуйте Aspose.Words для C++ в Visual Studio."
type: docs
weight: 90
url: /uk/cpp/configure-aspose-words-for-cpp-in-visual-studio/
timestamp: 2024-09-24-14-35-44
---

Aspose.Words для C++ API працює з Visual Studio 2022 або пізнішою версією. Для роботи з Visual Studio Вам може знадобитися встановити Visual C++ Redistributable, доступну на офіційному веб-сайті [Microsoft.](https://docs.microsoft.com/en-US/cpp/windows/latest-supported-vc-redist?view=msvc-170).

## Налаштуйте за допомогою MSBuild .цільові файли

Виконайте наведені нижче дії, щоб налаштувати свій проект за допомогою [MSBuild .цільових файлів .](https://docs.microsoft.com/en-us/visualstudio/msbuild/msbuild-dot-targets-files):

**Додайте теги імпорту з Aspose.Words для C++ цільових файлів у файл vcxproj**
1. Відкрийте файл проекту `*.vcxproj` у текстовому редакторі
2. Знайдіть `<ImportGroup Label="ExtensionTargets"></ImportGroup>` в кінці файлу
3. Додайте наступні теги `Import` всередині `ImportGroup`:
    {{< highlight xml >}}
    <ImportGroup Label="ExtensionTargets">
        <Import Project="<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets" Condition="Exists('<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets')" />
        <Import Project="<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets" Condition="Exists('<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets')" />
    </ImportGroup>
    </Project>
    {{< /highlight >}}

## Налаштування вручну

Виконайте наведені нижче дії, щоб вручну налаштувати Aspose.Words для C++ у Visual Studio:

**Додайте додаткові каталоги Include:**

1. Відкрийте властивість проекту
2. Перейдіть до розділу C / C++ → Загальні
3. Додайте наступні додаткові каталоги Include:
* `Aspose.Words.Cpp\include`
* `CodePorting.Translator.Cs2Cpp.Framework_<version>\include`

**Додайте додаткові залежності:**

1. Відкрийте властивість проекту
2. Виберіть конфігурація → усі конфігурації та платформа → усі платформи
2. Перейдіть до меню компонувальник → введення
* Для налаштування випуску:
  * `Aspose.Words.Cpp\lib\x64\Release\Aspose.Words.Cpp_vc14x64.lib`
  * `CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.lib`
* Для налаштування налагодження:
  * `Aspose.Words.Cpp\lib\x64\Debug\Aspose.Words.Cpp_vc14x64d.lib`
  * `CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.lib`

**Додайте команди:**

1. Відкрийте властивість проекту
2. Перейдіть до подій збірки → подія після збірки
3. Додайте наступні команди:
* Для налаштування випуску:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.dll" "$(OutDir)"
    {{< /highlight >}}
* Для налаштування налагодження:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64d.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.dll" "$(OutDir)"
    {{< /highlight >}}
