---
title: Очистить документ в Java
second_title: Aspose.Words для Java
articleTitle: Очистить документ
linktitle: Очистить документ
description: "Удалите неиспользуемую или дублирующую информацию, чтобы уменьшить размер вывода и время обработки. Удалите неиспользованные стили, неиспользованные встроенные стили, дубликаты стилей или неиспользованные списки с помощью Java."
type: docs
weight: 30
url: /ru/java/clean-up-a-document/
---

Иногда вам может потребоваться удалить неиспользованную или дублированную информацию, чтобы уменьшить размер выходного документа и время обработки.

Хотя вы можете найти и удалить неиспользуемые данные, такие как стили или списки, или дублировать информацию вручную, это будет гораздо удобнее сделать с помощью функций и возможностей, предоставляемых с помощью этих инструментов. Aspose.Words.

The [CleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/) Класс позволяет указать варианты очистки документов. Чтобы удалить из документа дубликаты стилей или просто неиспользованные стили или списки, вы можете использовать [Cleanup](https://reference.aspose.com/words/java/com.aspose.words/document/#cleanup) метод.

## Удалить неиспользованную информацию из документа

Вы можете использовать [UnusedStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedStyles) и [UnusedBuiltinStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedBuiltinStyles) Свойства для обнаружения и удаления стилей, которые помечены как "неиспользованные".

Вы можете использовать [UnusedLists](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedLists) свойство обнаруживать и удалять списки и определения списков, помеченные как "неиспользуемые".

Следующий пример кода показывает, как удалить из документа только неиспользованные стили:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleansUnusedStylesandLists.java" >}}

## Удалить дублированную информацию из документа

Вы также можете использовать [DuplicateStyle](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getDuplicateStyle) свойство заменять все дубликаты оригинальными и удалять дубликаты из документа.

Следующий пример кода показывает, как удалить дубликаты стилей из документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleanupDuplicateStyle.java" >}}
