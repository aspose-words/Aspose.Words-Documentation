﻿---
title: Как запустить примеры
second_title: Aspose.Words для C++
articleTitle: Как запустить примеры
linktitle: Как запустить примеры
description: "Скачать Aspose.Words для C++ приведите примеры из нашего репозитория GitHub и узнайте, как их запускать, чтобы лучше ознакомиться с возможностями и функциональными возможностями Aspose.Words."
type: docs
weight: 110
url: /ru/cpp/how-to-run-the-examples/
---

Чтобы лучше ознакомиться с возможностями и функциональностью Aspose.Words, мы приводим примеры, которые можно загрузить из нашего репозитория GitHub, запустить и изучить в деталях.

В этой статье вы можете ознакомиться с системными требованиями, а также с информацией о том, как запускать примеры.

## Windows с пакетом Nuget

### Требования к программному обеспечению и предварительные условия

Пожалуйста, убедитесь, что вы соответствуете следующим требованиям, прежде чем загружать и запускать примеры:

1. Visual Studio Code, Visual Studio 2022.
2. Установил NuGet менеджер пакетов и последнюю версию NuGet API для Visual Studio. (опционально)
3. Выберите параметр **nuget.org** в диалоговом окне "Сервис → Параметры" в разделе "NuGet Менеджер пакетов → Источники пакетов".
4. Активное подключение к Интернету для использования функции автоматического восстановления пакета `NuGet` в проекте Examples. Если у вас нет активного подключения к Интернету на компьютере, на котором должны выполняться примеры, следуйте инструкциям из Windows с пакетом Cmake.

### Загрузите и запустите примеры

Все Aspose.Words для C++ примеры размещены на [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). Вы можете либо клонировать репозиторий, используя свой любимый клиент GitHub, либо загрузить [ZIP-файл](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Получив копию хранилища, вы можете обнаружить, что:

- Все примеры находятся в папке **Examples**.
- Существуют файлы решений Visual Studio для C++, созданные в Visual Studio 2022.

Чтобы запустить примеры, откройте файл решения в Visual Studio и создайте проект:

- В примерах **API Reference** структура основана на именах классов, в примерах **Docs** она в основном основана на [Разработчик обманут](/words/cpp/developer-guide/) раздел документации.
- При первом запуске зависимости будут автоматически загружены через NuGet.
- Папка **Data** в корневой папке **Examples** содержит входные файлы, которые использовались в примерах.
- Все примеры могут быть запущены в виде модульных тестов.

## Windows с пакетом CMake

### Требования к программному обеспечению и предварительные условия

Пожалуйста, убедитесь, что вы соответствуете следующим требованиям, прежде чем загружать и запускать примеры:

1. Visual Studio Code, Visual Studio 2022.
2. [Cmake](https://cmake.org/download/) >= 3.16.0
3. Загрузите последний пакет CMake с https://downloads.aspose.com/words/cpp

### Загрузите и запустите примеры

Все Aspose.Words для C++ примеры размещены на [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). Вы можете либо клонировать репозиторий, используя свой любимый клиент GitHub, либо загрузить [ZIP-файл](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Поместите папки `Aspose.Words.Cpp` и `CodePorting.Native.Cs2Cpp_*` в корень копии репозитория.

Все примеры находятся в папке **Examples**.

Чтобы запустить примеры, выполните следующие команды из корневого каталога копии репозитория:
{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S Examples\DocsExamples\ -B Examples\DocsExamples\build
{{< /highlight >}}

Решение для Visual Studio будет сгенерировано в `Examples\DocsExamples\build`

Чтобы запустить примеры, откройте файл решения в Visual Studio и создайте проект:

- В примерах **API Reference** структура основана на именах классов, в примерах **Docs** она в основном основана на [Разработчик обманут](/words/cpp/developer-guide/) раздел документации.
- Папка **Data** в корневой папке **Examples** содержит входные файлы, которые использовались в примерах.
- Все примеры могут быть запущены в виде модульных тестов.

## Linux

### Требования к программному обеспечению и предварительные условия

Пожалуйста, убедитесь, что вы соответствуете следующим требованиям, прежде чем загружать и запускать примеры:

1. CLang >= 3.9.1
2. [Ninja](https://ninja-build.org/)
3. [Cmake](https://cmake.org/download/) >= 3.16.0
4. Загрузите последний пакет CMake с https://downloads.aspose.com/words/cpp

### Загрузите и запустите примеры

Все Aspose.Words для C++ примеры размещены на [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). Вы можете либо клонировать репозиторий, используя свой любимый клиент GitHub, либо загрузить [ZIP-файл](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Поместите папки `Aspose.Words.Cpp` и `CodePorting.Native.Cs2Cpp_*` в корень копии репозитория.

Все примеры находятся в папке **Examples**.

Чтобы запустить примеры, выполните следующие команды из корневого каталога копии репозитория:
{{< highlight bash >}}
cmake -S Examples/DocsExamples -B Examples/DocsExamples/build -D CMAKE_BUILD_TYPE=Release
cmake --build Examples/DocsExamples/build

cmake -E chdir Examples/DocsExamples/build ctest --verbose
{{< /highlight >}}

- В примерах **API Reference** структура основана на именах классов, в примерах **Docs** она в основном основана на [Разработчик обманут](/words/cpp/developer-guide/) раздел документации.
- Папка **Data** в корневой папке **Examples** содержит входные файлы, которые использовались в примерах.
- Все примеры могут быть запущены в виде модульных тестов.

{{% alert color="primary" %}}

Пожалуйста, не стесняйтесь обращаться к нам, используя наш форум о семействе продуктов [Aspose.Words](https://forum.aspose.com/c/words/8) если у вас возникнут какие-либо проблемы с настройкой или запуском примеров.

{{% /alert %}}

## Внесите свой вклад в улучшение примеров

Если вы хотите добавить или улучшить пример, мы рекомендуем вам внести свой вклад в проект. Все примеры и демонстрационные проекты в этом репозитории имеют открытый исходный код и могут свободно использоваться в ваших приложениях.

Вы можете разветвить репозиторий, отредактировать исходный код и создать запрос на обновление, чтобы внести свой вклад. Мы рассмотрим изменения и добавим их в репозиторий, если сочтем полезными.

## Смотрите также

- [Подробная информация о том, как установить NuGet Менеджер пакетов](https://docs.microsoft.com/nuget/guides/install-nuget)