---
title: Найдите свойства поля в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Найти свойства поля
linktitle: Найти свойства поля
description: "Как найти некоторые свойства поля, такие как код поля и результат поля в Python."
type: docs
weight: 25
url: /ru/python-net/find-field-properties/
---

Поле, вставленное с использованием [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).[insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/), возвращает объект [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/). Это фасадный класс, предоставляющий полезные методы для быстрого поиска некоторых свойств поля.

В следующем примере кода показано, как найти код поля и результат поля:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldCode.py" >}}

Обратите внимание: если вы ищете в документе только имена полей слияния, вместо этого вы можете использовать встроенный метод [get_field_names](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names/).

В следующем примере кода показано, как получить имена всех полей слияния в документе:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldNames.py" >}}