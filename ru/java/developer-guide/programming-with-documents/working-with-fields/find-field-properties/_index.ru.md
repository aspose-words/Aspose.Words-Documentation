---
title: Как найти свойства поля
second_title: Aspose.Words для Java
articleTitle: Найти свойства поля
linktitle: Найти свойства поля
description: "Как найти некоторые свойства поля, такие как код поля и результат поля Java"
type: docs
weight: 25
url: /ru/java/find-field-properties/
timestamp: 2024-01-27-14-07-04
---

Поле, которое вводится с использованием [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) возвращает [Field](https://reference.aspose.com/words/java/com.aspose.words/field/) объект. Это класс фасадов, который предоставляет полезные методы быстрого поиска таких свойств поля.

Следующий пример кода показывает, как найти код поля и результат поля:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-GetFieldCode.java" >}}

Обратите внимание, что если вы ищете только имена полей слияния в документе, вы можете вместо этого использовать встроенный метод. [GetFieldNames](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNames).

Следующий пример кода показывает, как получить имена всех полей слияния в документе.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-GetFieldNames.java" >}}
