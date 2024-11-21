---
title: Найдите свойства поля в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Найти свойства поля
linktitle: Найти свойства поля
description: "Как найти некоторые свойства поля, такие как код поля и результат поля Python."
type: docs
weight: 25
url: /ru/python-net/find-field-properties/
timestamp: 2024-01-27-14-07-04
---

Поле, которое вводится с использованием [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).[insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) возвращает [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/) объект. Это класс фасада, который предоставляет полезные методы для быстрого поиска некоторых свойств поля.

Следующий пример кода показывает, как найти код поля и результат поля:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldCode.py" >}}

Обратите внимание, что если вы ищете только имена полей слияния в документе, то вместо этого вы можете использовать встроенные поля. [get_field_names](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names/) метод.

Следующий пример кода показывает, как получить имена всех полей слияния в документе:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldNames.py" >}}
