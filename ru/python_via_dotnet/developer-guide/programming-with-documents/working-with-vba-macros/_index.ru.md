---
title: Работа с макросами VBA в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с макросами VBA
linktitle: Работа с макросами VBA
description: "Создавайте, читайте, записывайте, клонируйте макросы VBA и управляйте ими в документе с помощью Python."
type: docs
weight: 410
url: /ru/python-net/working-with-vba-macros/
---

Visual Basic для приложений (VBA) для Microsoft Word — это простой, но мощный язык программирования, который можно использовать для расширения функциональности. Aspose.Words API предоставляет три класса для получения доступа к исходному коду проекта VBA:

- Класс [VBAProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) обеспечивает доступ к информации о проекте VBA
— Класс [VBAModuleCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodulecollection/) возвращает коллекцию модулей проекта VBA
- Класс [VbaModule](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/) обеспечивает доступ к модулю проекта VBA
— Перечисление [VbaModuleType](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamoduletype/) определяет типы модели в проекте VBA. Модуль может быть процедурным модулем, модулем документа, модулем класса или модулем дизайнера

## Создать проект VBA

Aspose.Words API предоставляет свойство [vba_project](https://reference.aspose.com/words/python-net/aspose.words/document/vba_project/) для получения или установки [VbaProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) в документе.

В следующем примере кода показано, как создать проект VBA и модуль VBA вместе с основными свойствами, например [name](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/name/) и [type](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/type/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CreateVbaProject.py" >}}

## Чтение макросов

Aspose.Words также предоставляет пользователям возможность читать макросы VBA.

В следующем примере кода показано, как читать макросы VBA из документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ReadVbaMacros.py" >}}

## Напишите или измените макросы

Используя Aspose.Words, пользователи могут изменять макросы VBA.

В следующем примере кода показано, как изменить макросы VBA с помощью свойства [source_code](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/source_code/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ModifyVbaMacros.py" >}}

## Клонировать проект VBA

С помощью Aspose.Words также можно клонировать проекты VBA.

В следующем примере кода показано, как клонировать проект VBA с помощью свойства [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/clone/), которое создает копию существующего проекта:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaProject.py" >}}

## Клонировать модуль VBA

При необходимости вы также можете клонировать модули VBA.

В следующем примере кода показано, как клонировать модуль VBA с помощью свойства [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/clone/), которое создает копию существующего проекта:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaModule.py" >}}

## Работа со ссылками на проекты VBA

Aspose.Words API предоставляет класс [VbaReferenceCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbareferencecollection/) для работы со ссылками на проекты VBA, представляющими коллекцию ссылок на проекты VBA.

В следующем примере кода показано, как удалить некоторые ссылки из коллекции ссылок проекта VBA:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-RemoveReferenceFromCollectionOfReferences.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-GetLibIdAndReferencePath.py" >}}