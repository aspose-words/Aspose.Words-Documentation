---
title: Как найти свойства поля в C#
second_title: Aspose.Words для .NET
articleTitle: Найти свойства поля
linktitle: Найти свойства поля
description: "Как найти некоторые свойства поля, такие как код поля и результат поля в C#."
type: docs
weight: 25
url: /ru/net/find-field-properties/
---

Поле, вставленное с использованием [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/), возвращает объект [Field](https://reference.aspose.com/words/net/aspose.words.fields/field/). Это фасадный класс, предоставляющий полезные методы для быстрого поиска некоторых свойств поля.

В следующем примере кода показано, как найти код поля и результат поля:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldCode.cs" >}}

Обратите внимание: если вы ищете в документе только имена полей слияния, вместо этого вы можете использовать встроенный метод [GetFieldNames](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnames/).

В следующем примере кода показано, как получить имена всех полей слияния в документе:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cs" >}}