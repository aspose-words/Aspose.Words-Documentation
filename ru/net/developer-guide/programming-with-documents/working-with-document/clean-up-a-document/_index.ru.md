---
title: Очистить документ в C#
second_title: Aspose.Words для .NET
articleTitle: Очистить документ
linktitle: Очистить документ
description: "Удалить неиспользуемую или дублированную информацию, чтобы уменьшить размер вывода и время обработки. C#. Удалите неиспользованные стили, неиспользованные встроенные стили, дублирующие стили или неиспользованные списки."
type: docs
weight: 30
url: /ru/net/clean-up-a-document/
---

Иногда вам может потребоваться удалить неиспользованную или дублированную информацию, чтобы уменьшить размер выходного документа и время обработки.

Хотя вы можете найти и удалить неиспользуемые данные, такие как стили или списки, или дублировать информацию вручную, это будет гораздо удобнее делать с помощью функций и возможностей, предоставляемых с помощью этих инструментов. Aspose.Words.

The [CleanupOptions](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/) Класс позволяет указать варианты очистки документов. Чтобы удалить из документа дубликаты стилей или просто неиспользованные стили или списки, вы можете использовать [Cleanup](https://reference.aspose.com/words/net/aspose.words/document/cleanup/) метод.

## Удалить неиспользованную информацию из документа

Вы можете использовать [UnusedStyles](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedstyles/) и [UnusedBuiltinStyles](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedbuiltinstyles/) Свойства для обнаружения и удаления стилей, которые помечены как "неиспользованные".

Вы можете использовать [UnusedLists](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedlists/) свойство обнаруживать и удалять списки и определения списков, помеченные как "неиспользуемые".

Следующий пример кода показывает, как удалить из документа только неиспользованные стили:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.cs" >}}

## Удалить дублированную информацию из документа

Вы также можете использовать [DuplicateStyle](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/duplicatestyle/) свойство заменять все дублирующие стили оригинальными и удалять дубликаты из документа.

Следующий пример кода показывает, как удалить дубликаты стилей из документа:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.cs" >}}
