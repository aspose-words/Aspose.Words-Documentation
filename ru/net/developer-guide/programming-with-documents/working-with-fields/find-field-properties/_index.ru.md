---
title: Как найти свойства поля в C#
second_title: Aspose.Words для .NET
articleTitle: Найти свойства поля
linktitle: Найти свойства поля
description: "Как найти некоторые свойства поля, такие как код поля и результат поля C#."
type: docs
weight: 25
url: /ru/net/find-field-properties/
timestamp: 2024-01-27-14-07-04
---

Поле, которое вводится с использованием [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) возвращает [Field](https://reference.aspose.com/words/net/aspose.words.fields/field/) объект. Это класс фасада, который предоставляет полезные методы для быстрого поиска некоторых свойств поля.

Следующий пример кода показывает, как найти код поля и результат поля:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldCode.cs" >}}

Обратите внимание, что если вы ищете только имена полей слияния в документе, то вместо этого вы можете использовать встроенные поля. [GetFieldNames](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnames/) метод.

Следующий пример кода показывает, как получить имена всех полей слияния в документе:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cs" >}}
