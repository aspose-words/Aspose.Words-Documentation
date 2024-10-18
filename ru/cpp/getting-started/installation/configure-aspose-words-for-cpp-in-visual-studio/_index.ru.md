---
title: Настройте продукт в Visual Studio
second_title: Aspose.Words для C++
articleTitle: Конфигурировать Aspose.Words для C++ в Visual Studio
linktitle: Конфигурировать Aspose.Words для C++ в Visual Studio
description: "Вручную сконфигурируйте Aspose.Words для C++ в Visual Studio."
type: docs
weight: 90
url: /ru/cpp/configure-aspose-words-for-cpp-in-visual-studio/
---

Aspose.Words для C++ API работает с Visual Studio 2022 или более поздней версии. Для работы с Visual Studio, вам, возможно, потребуется установить Visual C++ по-доступен на [Официальный сайт Microsoft ](https://docs.microsoft.com/en-US/cpp/windows/latest-supported-vc-redist?view=msvc-170).

## Сконфигурируйте с помощью MSBuild .целевые файлы

Выполните следующие действия, чтобы настроить свой проект с помощью [MSBuild .целевых файлов .](https://docs.microsoft.com/en-us/visualstudio/msbuild/msbuild-dot-targets-files):

**Добавьте теги импорта с помощью Aspose.Words для C++ для целевых файлов в ваш файл vcxproj**
1. Откройте файл вашего проекта `*.vcxproj` в текстовом редакторе
2. Найдите `<ImportGroup Label="ExtensionTargets"></ImportGroup>` в конце файла
3. Добавьте следующие теги `Import` внутрь `ImportGroup`:
    {{< highlight xml >}}
    <ImportGroup Label="ExtensionTargets">
        <Import Project="<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets" Condition="Exists('<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets')" />
        <Import Project="<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets" Condition="Exists('<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets')" />
    </ImportGroup>
    </Project>
    {{< /highlight >}}

## Настройка вручную

Выполните следующие действия, чтобы вручную настроить Aspose.Words для C++ в Visual Studio:

**Добавьте дополнительные каталоги Include:**

1. Откройте свойство проекта
2. Перейдите в раздел C/C++ → Общие
3. Добавьте следующие дополнительные каталоги Include:
`Aspose.Words.Cpp\include`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\include`

**Добавьте дополнительные зависимости:**

1. Откройте свойство проекта
2. Выберите Конфигурация → Все конфигурации и платформа → Все платформы
2. Перейдите в меню Компоновщик → Ввод
* Для настройки выпуска:
`Aspose.Words.Cpp\lib\x64\Release\Aspose.Words.Cpp_vc14x64.lib`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.lib`
* Для настройки отладки:
`Aspose.Words.Cpp\lib\x64\Debug\Aspose.Words.Cpp_vc14x64d.lib`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.lib`

**Добавьте команды:**

1. Откройте свойство проекта
2. Перейдите к Событиям сборки → Событие после сборки
3. Добавьте следующие команды:
* Для настройки выпуска:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.dll" "$(OutDir)"
    {{< /highlight >}}
* Для настройки отладки:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64d.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.dll" "$(OutDir)"
    {{< /highlight >}}
