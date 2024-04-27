---
title: Как да намерим свойства на полето
second_title: Aspose.Words вместо Java
articleTitle: Настройки на полето
linktitle: Настройки на полето
description: "Как да намерите някои свойства на полето като код на полето и резултат в Java"
type: docs
weight: 25
url: /bg/java/find-field-properties/
---

Поле, което се вмъква, като се използва [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) връща a [Field](https://reference.aspose.com/words/java/com.aspose.words/field/) Възразявам. Това е фасаден клас, който осигурява полезни методи за бързо намиране на такива свойства на полето.

Следният пример с код показва как да се намери кода на полето и резултата от полето:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-GetFieldCode.java" >}}

Забележка, ако търсите само имената на сливащи се полета в документа, тогава можете да използвате вградения метод [GetFieldNames](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNames).

Следният пример за код показва как да получите имената на всички сливащи се полета в документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-GetFieldNames.java" >}}
