---
title: Работа с макросами VBA в C#
second_title: Aspose.Words для .NET
articleTitle: Работа с макросами VBA
linktitle: Работа с макросами VBA
description: "Работа с проектами документов VBA с использованием C#."
type: docs
weight: 410
url: /ru/net/working-with-vba-macros/
---

Visual Basic для приложений (VBA) для Microsoft Word — это простой, но мощный язык программирования, который можно использовать для расширения функциональности. Aspose.Words API предоставляет три класса для получения доступа к исходному коду проекта VBA:

- Класс [VBAProject](https://reference.aspose.com/words/ru/net/aspose.words.vba/vbaproject/) обеспечивает доступ к информации о проекте VBA
- Класс [VBAModuleCollection](https://reference.aspose.com/words/ru/net/aspose.words.vba/vbamodulecollection/) возвращает коллекцию модулей проекта VBA
- Класс [VbaModule](https://reference.aspose.com/words/ru/net/aspose.words.vba/vbamodule/) обеспечивает доступ к модулю проекта VBA
— Перечисление [VbaModuleType](https://reference.aspose.com/words/ru/net/aspose.words.vba/vbamoduletype/) определяет типы модели в проекте VBA. Модуль может быть процедурным модулем, модулем документа, модулем класса или модулем дизайнера

## Создать проект VBA

Aspose.Words API предоставляет свойство [VbaProject](https://reference.aspose.com/words/ru/net/aspose.words/document/vbaproject/) для получения или установки VbaProject в документе.

В следующем примере кода показано, как создать проект VBA и модуль VBA вместе с основными свойствами, например именем и типом:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cs" >}}

## Чтение макросов

Aspose.Words также предоставляет пользователям возможность читать макросы VBA.

В следующем примере кода показано, как читать макросы VBA из документа:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cs" >}}

## Напишите или измените макросы

Используя Aspose.Words, пользователи могут изменять макросы VBA.

В следующем примере кода показано, как изменить макросы VBA с помощью свойства [SourceCode](https://reference.aspose.com/words/ru/net/aspose.words.vba/vbamodule/sourcecode/):

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cs" >}}

## Клонировать проект VBA

С помощью Aspose.Words также можно клонировать проекты VBA.

В следующем примере кода показано, как клонировать проект VBA с помощью свойства [Clone](https://reference.aspose.com/words/ru/net/aspose.words.vba/vbaproject/clone/), которое создает копию существующего проекта:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cs" >}}

## Клонировать модуль VBA

При необходимости вы также можете клонировать модули VBA.

В следующем примере кода показано, как клонировать модуль VBA с помощью свойства [Clone](https://reference.aspose.com/words/ru/net/aspose.words.vba/vbamodule/clone/), которое создает копию существующего проекта:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cs" >}}

## Работа со ссылками на проекты VBA

Aspose.Words API предоставляет класс [VbaReferenceCollection](https://reference.aspose.com/words/ru/net/aspose.words.vba/vbareferencecollection/) для работы со ссылками на проекты VBA, представляющими коллекцию ссылок на проекты VBA.

В следующем примере кода показано, как удалить некоторые ссылки из коллекции ссылок проекта VBA:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-RemoveReferenceFromCollectionOfReferences.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-GetLibIdAndReferencePath.cs" >}}