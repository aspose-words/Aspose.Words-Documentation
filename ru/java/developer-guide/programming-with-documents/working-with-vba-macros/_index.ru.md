---
title: Работа с макросами VBA в Java
second_title: Aspose.Words для Java
articleTitle: Работа с макросами VBA
linktitle: Работа с макросами VBA
description: "Работа с проектами документа VBA с использованием Java."
type: docs
weight: 410
url: /ru/java/working-with-vba-macros/
timestamp: 2024-01-27-14-07-04
---

Visual Basic для приложений (VBA) для Microsoft Word - это простой, но мощный язык программирования, который можно использовать для расширения функциональности. Aspose.Words API предоставляет три класса для получения доступа к исходному коду проекта VBA:

- Класс [VBAProject](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/) предоставляет доступ к информации о проекте VBA
- Класс [VBAModulesCollection](https://reference.aspose.com/words/java/com.aspose.words/vbamodulecollection/) возвращает коллекцию модулей проекта VBA
- Класс [VbaModule](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/) предоставляет доступ к модулю проекта VBA

## Создайте проект VBA

Aspose.Words API предоставляет свойство [VbaProject](https://reference.aspose.com/words/java/com.aspose.words/document/#getVbaProject) для получения или установки VbaProject в документе.

В следующем примере кода показано, как создать проект VBA и модуль VBA вместе с основными свойствами, например, именем и типом:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CreateVbaProject.java" >}}

## Чтение макросов

Aspose.Words также предоставляет пользователям возможность читать VBA макросы.

В следующем примере кода показано, как считывать макросы VBA из документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ReadVbaMacros.java" >}}

## Изменять макросы

Используя Aspose.Words, пользователи могут изменять макросы VBA.

В следующем примере кода показано, как изменить макросы VBA, используя свойство [SourceCode](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/#getSourceCode):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ModifyVbaMacros.java" >}}

## Клонировать проект VBA

С помощью Aspose.Words также можно клонировать проекты VBA.

В следующем примере кода показано, как клонировать проект VBA, используя свойство [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone), которое создает копию существующего проекта:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaProject.java" >}}

## Клонировать модуль VBA

При необходимости вы также можете клонировать модули VBA.

В следующем примере кода показано, как клонировать модуль VBA, используя свойство [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone), которое создает копию существующего проекта.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaModule.java" >}}
