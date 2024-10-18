---
title: Работа с макросами VBA в C++
second_title: Aspose.Words для C++
articleTitle: Работа с макросами VBA
linktitle: Работа с макросами VBA
description: "Работа с проектами document VBA с использованием C++."
type: docs
weight: 410
url: /ru/cpp/working-with-vba-macros/
---

Visual Basic for Applications (VBA) для Microsoft Word - это простой, но мощный язык программирования, который можно использовать для расширения функциональности. Aspose.Words API предоставляет три класса для получения доступа к исходному коду проекта VBA:

- Класс [VBAProject](https://reference.aspose.com/words/cpp/aspose.words.vba/vbaproject/) предоставляет доступ к информации о проекте VBA
- Класс [VBAModulesCollection](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodulecollection/) возвращает коллекцию модулей проекта VBA
- Класс [VbaModule](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/) предоставляет доступ к модулю проекта VBA

## Создайте проект VBA

Aspose.Words API предоставляет свойство `Document.VbaProject` для получения или установки VbaProject в документе.

В следующем примере кода показано, как создать проект VBA и модуль VBA вместе с основными свойствами, например, именем и типом:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cpp" >}}

## Чтение макросов

Aspose.Words также предоставляет пользователям возможность читать макросы VBA.

В следующем примере кода показано, как считывать макросы VBA из документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cpp" >}}

## Запись или изменение макросов

Используя Aspose.Words, пользователи могут изменять макросы VBA.

В следующем примере кода показано, как изменять макросы VBA, используя свойство [SourceCode](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/get_sourcecode/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cpp" >}}

## Клонировать проект VBA

С помощью Aspose.Words также можно клонировать проекты VBA.

В следующем примере кода показано, как клонировать проект VBA, используя свойство [Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/), которое создает копию существующего проекта:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cpp" >}}

## Клонировать модуль VBA

Вы также можете клонировать модули VBA, если это необходимо.

В следующем примере кода показано, как клонировать модуль VBA, используя свойство [Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/), которое создает копию существующего проекта:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cpp" >}}
