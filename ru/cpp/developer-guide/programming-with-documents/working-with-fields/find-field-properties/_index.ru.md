---
title: Как найти свойства поля
second_title: Aspose.Words для C++
articleTitle: Поиск свойств поля
linktitle: Поиск свойств поля
description: "Как найти некоторые свойства поля, такие как код поля и результат поля, в C++."
type: docs
weight: 25
url: /ru/cpp/find-field-properties/
---

Поле, которое вставляется с помощью [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) возвращает объект [Field](https://reference.aspose.com/words/cpp/aspose.words.fields/field/). Это фасадный класс, который предоставляет полезные методы для быстрого поиска некоторых свойств поля.

В следующем примере кода показано, как найти код поля и результат поиска в поле:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldsCode.cpp" >}}

Примечание. если вы ищете только названия полей слияния в документе, то вместо этого вы можете использовать встроенный метод [GetFieldNames](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getfieldnames/).

В следующем примере кода показано, как получить названия всех полей слияния в документе:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cpp" >}}