---
title: Работа с VBA Macros в C#
second_title: Aspose.Words для .NET
articleTitle: Работа с VBA Macros
linktitle: Работа с VBA Macros
description: "Работа с документами проектов VBA с использованием C#."
type: docs
weight: 410
url: /ru/net/working-with-vba-macros/
---

Visual Basic Приложения (VBA) для Microsoft Word Это простой, но мощный язык программирования, который можно использовать для расширения функциональности. Aspose.Words API Предоставляет три класса для доступа к исходному коду проекта VBA:

- [VBAProject](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/) Класс обеспечивает доступ к информации о проекте VBA
- [VBAModuleCollection](https://reference.aspose.com/words/net/aspose.words.vba/vbamodulecollection/) Класс возвращает коллекцию модулей проекта VBA
- [VbaModule](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/) Класс обеспечивает доступ к модулю проекта VBA
- [VbaModuleType](https://reference.aspose.com/words/net/aspose.words.vba/vbamoduletype/) Перечисление определяет типы модели в проекте VBA. Модуль может представлять собой процедурный модуль, модуль документа, модуль класса или дизайнерский модуль

## Создание проекта VBA

Aspose.Words API обеспечивает [VbaProject](https://reference.aspose.com/words/net/aspose.words/document/vbaproject/) собственность получить или установить VbaProject в документе.

Следующий пример кода показывает, как создать VBA-проект и VBA-модуль вместе с основными свойствами. Название и тип:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cs" >}}

## Читать Макрос

Aspose.Words Также предоставляет пользователям возможность чтения макросов VBA.

Следующий пример кода показывает, как читать VBA Macros из документа:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cs" >}}

## Написать или изменить Macros

Использовать Aspose.Words, Пользователи могут изменять макросы VBA.

Следующий пример кода показывает, как модифицировать VBA Macros. [SourceCode](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/sourcecode/) имущество:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cs" >}}

## Клон VBA Проект

С Aspose.Words Также возможно клонирование проектов VBA.

Следующий пример кода показывает, как клонировать проект VBA с помощью [Clone](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/clone/) Имущество, которое создает копию существующего проекта:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cs" >}}

## Клон VBA Модуль

При необходимости можно клонировать модули VBA.

Следующий пример кода показывает, как клонировать модуль VBA с помощью [Clone](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/clone/) Имущество, которое создает копию существующего проекта:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cs" >}}

## Работа с рекомендациями проекта VBA

Aspose.Words API обеспечивает [VbaReferenceCollection](https://reference.aspose.com/words/net/aspose.words.vba/vbareferencecollection/) класс для работы с VBA Project References, представляющий коллекцию ссылок на проекты VBA.

Следующий пример кода показывает, как удалить некоторые ссылки из коллекции ссылок из проекта VBA:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-RemoveReferenceFromCollectionOfReferences.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-GetLibIdAndReferencePath.cs" >}}