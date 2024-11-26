---
title: Работа с макросами VBA в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с макросами VBA
linktitle: Работа с макросами VBA
description: "Создавайте, считывайте, записывайте, клонируйте макросы VBA в документе и управляйте ими с помощью Python."
type: docs
weight: 410
url: /ru/python-net/working-with-vba-macros/
timestamp: 2024-01-27-14-07-04
---

Visual Basic для приложений (VBA) для Microsoft Word - это простой, но мощный язык программирования, который можно использовать для расширения функциональности. Aspose.Words API предоставляет три класса для получения доступа к исходному коду проекта VBA:

- Класс [VBAProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) предоставляет доступ к информации о проекте VBA
- Класс [VBAModuleCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodulecollection/) возвращает коллекцию модулей проекта VBA
- Класс [VbaModule](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/) предоставляет доступ к модулю проекта VBA
- Перечисление [VbaModuleType](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamoduletype/) определяет типы модели в проекте VBA. Модуль может быть процедурным модулем, модулем документа, модулем класса или модулем конструктора

## Создайте проект VBA

Aspose.Words API предоставляет свойство [vba_project](https://reference.aspose.com/words/python-net/aspose.words/document/vba_project/) для получения или установки [VbaProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) в документе.

В следующем примере кода показано, как создать проект VBA и модуль VBA вместе с базовыми свойствами, например, [name](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/name/) и [type](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/type/).:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CreateVbaProject.py" >}}

## Чтение макросов

Aspose.Words также предоставляет пользователям возможность читать VBA макросы.

В следующем примере кода показано, как считывать макросы VBA из документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ReadVbaMacros.py" >}}

## Запись или изменение макросов

Используя Aspose.Words, пользователи могут изменять макросы VBA.

В следующем примере кода показано, как изменить макросы VBA, используя свойство [source_code](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/source_code/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ModifyVbaMacros.py" >}}

## Клонировать проект VBA

С помощью Aspose.Words также можно клонировать проекты VBA.

В следующем примере кода показано, как клонировать проект VBA, используя свойство [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/clone/), которое создает копию существующего проекта:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaProject.py" >}}

## Клонировать модуль VBA

При необходимости вы также можете клонировать модули VBA.

В следующем примере кода показано, как клонировать модуль VBA, используя свойство [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/clone/), которое создает копию существующего проекта:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaModule.py" >}}

## Работайте с VBA ссылками на проект

Aspose.Words API предоставляет [VbaReferenceCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbareferencecollection/) класс для работы с VBA ссылками на проекты, представляющими коллекцию VBA ссылок на проекты.

В следующем примере кода показано, как удалить некоторые ссылки из коллекции ссылок из проекта VBA:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-RemoveReferenceFromCollectionOfReferences.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-GetLibIdAndReferencePath.py" >}}
