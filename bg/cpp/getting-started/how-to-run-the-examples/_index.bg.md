﻿---
title: Как да управляваме примерите
second_title: Aspose.Words за C++
articleTitle: Как да управляваме примерите
linktitle: Как да управляваме примерите
description: "Изтеглете Aspose.Words за C++ примери от нашето GitHub хранилище и научете как да ги изпълнявате, за да се запознаете по-добре с Aspose.Words възможностите и функциите."
type: docs
weight: 110
url: /bg/cpp/how-to-run-the-examples/
timestamp: 2024-07-11-16-13-28
---

За да се запознаете по-добре с Aspose.Words възможностите и функциите, ние предоставяме примери, които могат да бъдат изтеглени от нашето GitHub хранилище, да се изпълняват и да се научат подробно.

В тази статия можете да намерите системните изисквания, както и информация за това как да изпълните примерите.

## Windows с Nuget опаковка

### Софтуерни изисквания и предпоставки

Моля, уверете се, че отговаряте на следните изисквания, преди да изтеглите и изпълните примерите:

1. Visual Studio код, Visual Studio 2022.
2. Инсталиран NuGet Мениджър на пакети и най-новата NuGet API версия за Visual Studio. (незадължително)
3. Избран **nuget.org** опция в диалоговия прозорец "Инструменти → Опции" под "NuGet пакет мениджър → пакетни източници".
4. Активна интернет връзка, за да използвате функцията `NuGet` Автоматично възстановяване на пакета в проекта примери. Ако нямате активна интернет връзка на машината, където ще се изпълняват примерите, следвайте указанията от Windows с Cmake пакет.

### Изтеглете и изпълнете примерите

Всички Aspose.Words за C++ примери се хостват на [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). Можете да клонирате хранилището, като използвате любимия си GitHub клиент или да изтеглите [файл ZIP ](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

След като получите копие от хранилището, може да откриете, че:

- Всички примери се намират в папката **Examples**.
- Има Visual Studio файлове с решение за C++, създадени във Visual Studio 2022.

За да изпълните примерите, отворете файла с решението в Visual Studio и създайте проекта:

- За **API Reference** примери структурата се основава на имената на класовете, за **Docs** примери се основава най-вече на имената на класовете. [Разработчик Виновен](/words/cpp/developer-guide/) раздел документация.
- При първото изпълнение зависимостите ще бъдат автоматично изтеглени чрез NuGet.
- Папката **Data** в главната папка на **Examples** съдържа входни файлове, използвани в примерите.
- Всички примери могат да се изпълняват като единични тестове.

## Windows с CMake опаковка

### Софтуерни изисквания и предпоставки

Моля, уверете се, че отговаряте на следните изисквания, преди да изтеглите и изпълните примерите:

1. Visual Studio код, Visual Studio 2022.
2. [Cmake](https://cmake.org/download/) >= 3.16.0
3. Изтегли ластест CMake пакет от https://downloads.aspose.com/words/cpp

### Изтеглете и изпълнете примерите

Всички Aspose.Words за C++ примери се хостват на [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). Можете да клонирате хранилището, като използвате любимия си GitHub клиент или да изтеглите [файл ZIP ](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Поставете папки `Aspose.Words.Cpp` и `CodePorting.Native.Cs2Cpp_*` в корена на копие на хранилището.

Всички примери се намират в папката **Examples**.

За да изпълните примерите изпълнете следните команди от корена на копие на хранилището:
{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S Examples\DocsExamples\ -B Examples\DocsExamples\build
{{< /highlight >}}

Решението за Visual Studio ще бъде генерирано в `Examples\DocsExamples\build`

За да изпълните примерите, отворете файла с решението в Visual Studio и създайте проекта:

- За **API Reference** примери структурата се основава на имената на класовете, за **Docs** примери се основава най-вече на имената на класовете. [Разработчик Виновен](/words/cpp/developer-guide/) раздел документация.
- Папката **Data** в главната папка на **Examples** съдържа входни файлове, използвани в примерите.
- Всички примери могат да се изпълняват като единични тестове.

## Linux

### Софтуерни изисквания и предпоставки

Моля, уверете се, че отговаряте на следните изисквания, преди да изтеглите и изпълните примерите:

1. CLang >= 3.9.1
2. [Ninja](https://ninja-build.org/)
3. [Cmake](https://cmake.org/download/) >= 3.16.0
4. Изтегли ластест CMake пакет от https://downloads.aspose.com/words/cpp

### Изтеглете и изпълнете примерите

Всички Aspose.Words за C++ примери се хостват на [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). Можете да клонирате хранилището, като използвате любимия си GitHub клиент или да изтеглите [файл ZIP ](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Поставете папки `Aspose.Words.Cpp` и `CodePorting.Native.Cs2Cpp_*` в корена на копие на хранилището.

Всички примери се намират в папката **Examples**.

За да изпълните примерите изпълнете следните команди от корена на копие на хранилището:
{{< highlight bash >}}
cmake -S Examples/DocsExamples -B Examples/DocsExamples/build -D CMAKE_BUILD_TYPE=Release
cmake --build Examples/DocsExamples/build

cmake -E chdir Examples/DocsExamples/build ctest --verbose
{{< /highlight >}}

- За **API Reference** примери структурата се основава на имената на класовете, за **Docs** примери се основава най-вече на имената на класовете. [Разработчик Виновен](/words/cpp/developer-guide/) раздел документация.
- Папката **Data** в главната папка на **Examples** съдържа входни файлове, използвани в примерите.
- Всички примери могат да се изпълняват като единични тестове.

{{% alert color="primary" %}}

Чувствайте се свободни да използвате нашите [Aspose.Words Продуктов Семеен Форум](https://forum.aspose.com/c/words/8) ако имате някакви проблеми с настройването или изпълнението на примерите.

{{% /alert %}}

## Принос за подобряване на примерите

Ако искате да добавите или подобрите пример, ви насърчаваме да допринесете за проекта. Всички примери и проекти за представяне в това хранилище са с отворен код и могат свободно да се използват във вашите приложения.

Можете да разбиете хранилището, да редактирате изходния код и да създадете заявка за изтегляне, за да допринесете. Ще прегледаме промените и ще ги включим в хранилището, ако сметнем за полезни.

## Вижте Също

- [Подробности за това как да инсталирате NuGet Мениджър на пакети](https://docs.microsoft.com/nuget/guides/install-nuget)