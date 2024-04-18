---
title: Очистить документ в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Очистить документ
linktitle: Очистить документ
description: "Удалить неиспользуемую или дублированную информацию, чтобы уменьшить размер вывода и время обработки. Python. Удалите неиспользованные стили, неиспользованные встроенные стили, дублирующие стили или неиспользованные списки."
type: docs
weight: 30
url: /ru/python-net/clean-up-a-document/
---

Иногда вам может потребоваться удалить неиспользованную или дублированную информацию, чтобы уменьшить размер выходного документа и время обработки.

Хотя вы можете найти и удалить неиспользуемые данные, такие как стили или списки, или дублировать информацию вручную, это будет гораздо удобнее делать с помощью функций и возможностей, предоставляемых с помощью этих инструментов. Aspose.Words.

The [CleanupOptions](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/) Класс позволяет указать варианты очистки документов. Чтобы удалить из документа дубликаты стилей или просто неиспользованные стили или списки, вы можете использовать [cleanup](https://reference.aspose.com/words/python-net/aspose.words/document/cleanup/) метод.

## Удалить неиспользованную информацию из документа

Вы можете использовать [unused_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_styles/) и [unused_builtin_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_builtin_styles/) Свойства для обнаружения и удаления стилей, которые помечены как "неиспользованные".

Вы можете использовать [unused_lists](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_lists/) свойство обнаруживать и удалять списки и определения списков, помеченные как "неиспользуемые".

Следующий пример кода показывает, как удалить из документа только неиспользованные стили:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupUnusedStylesandLists.py" >}}

## Удалить дублированную информацию из документа

Вы также можете использовать [duplicate_style](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/duplicate_style/) свойство заменять все дублирующие стили оригинальными и удалять дубликаты из документа.

Следующий пример кода показывает, как удалить дубликаты стилей из документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupDuplicateStyle.py" >}}