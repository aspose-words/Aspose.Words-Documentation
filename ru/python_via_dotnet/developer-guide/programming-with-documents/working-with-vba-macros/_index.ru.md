---
title: Работа с VBA Macros в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с VBA Macros
linktitle: Работа с VBA Macros
description: "Создавать, читать, писать, клонировать и управлять макросами VBA в документе с помощью Python."
type: docs
weight: 410
url: /ru/python-net/working-with-vba-macros/
---

Visual Basic Приложения (VBA) для Microsoft Word Это простой, но мощный язык программирования, который можно использовать для расширения функциональности. Aspose.Words API Предоставляет три класса для доступа к исходному коду проекта VBA:

- [VBAProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) Класс обеспечивает доступ к информации о проекте VBA
- [VBAModuleCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodulecollection/) Класс возвращает коллекцию модулей проекта VBA
- [VbaModule](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/) Класс обеспечивает доступ к модулю проекта VBA
- [VbaModuleType](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamoduletype/) Перечисление определяет типы модели в проекте VBA. Модуль может представлять собой процедурный модуль, модуль документа, модуль класса или дизайнерский модуль

## Создание проекта VBA

Aspose.Words API обеспечивает [vba_project](https://reference.aspose.com/words/python-net/aspose.words/document/vba_project/) собственность получить или установить [VbaProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) в документе.

Следующий пример кода показывает, как создать VBA-проект и VBA-модуль вместе с основными свойствами. [name](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/name/) и [type](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/type/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CreateVbaProject.py" >}}

## Читать Макрос

Aspose.Words Также предоставляет пользователям возможность чтения макросов VBA.

Следующий пример кода показывает, как читать VBA Macros из документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ReadVbaMacros.py" >}}

## Написать или изменить Macros

Использовать Aspose.Words, Пользователи могут изменять макросы VBA.

Следующий пример кода показывает, как модифицировать VBA Macros. [source_code](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/source_code/) имущество:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ModifyVbaMacros.py" >}}

## Клон VBA Проект

С Aspose.Words Также возможно клонирование проектов VBA.

Следующий пример кода показывает, как клонировать проект VBA с помощью [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/clone/) Имущество, которое создает копию существующего проекта:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaProject.py" >}}

## Клон VBA Модуль

При необходимости можно клонировать модули VBA.

Следующий пример кода показывает, как клонировать модуль VBA с помощью [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/clone/) Имущество, которое создает копию существующего проекта:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaModule.py" >}}

## Работа с рекомендациями проекта VBA

Aspose.Words API обеспечивает [VbaReferenceCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbareferencecollection/) класс для работы с VBA Project References, представляющий коллекцию ссылок на проекты VBA.

Следующий пример кода показывает, как удалить некоторые ссылки из коллекции ссылок из проекта VBA:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-RemoveReferenceFromCollectionOfReferences.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-GetLibIdAndReferencePath.py" >}}