---
title: Очистите документ за Python
second_title: Aspose.Words для Python via .NET
articleTitle: Очистка документа
linktitle: Очистка документа
description: "Удалите неиспользуемую или дублирующуюся информацию, чтобы уменьшить размер выходных данных и время обработки, используя Python. Удалите неиспользуемые стили, неиспользуемые встроенные стили, повторяющиеся стили или неиспользуемые списки."
type: docs
weight: 30
url: /ru/python-net/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

Иногда вам может потребоваться удалить неиспользуемую или дублирующуюся информацию, чтобы уменьшить размер выходного документа и время обработки.

Хотя вы можете найти и удалить неиспользуемые данные, такие как стили или списки, или дублирующую информацию вручную, гораздо удобнее будет делать это с помощью функций и возможностей, предоставляемых Aspose.Words.

Класс [CleanupOptions](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/) позволяет задать параметры очистки документа. Чтобы удалить повторяющиеся стили или просто неиспользуемые стили или списки из документа, вы можете использовать метод [cleanup](https://reference.aspose.com/words/python-net/aspose.words/document/cleanup/).

## Удаление неиспользуемой информации из документа

Вы можете использовать свойства [unused_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_styles/) и [unused_builtin_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_builtin_styles/) для обнаружения и удаления стилей, помеченных как "неиспользуемые".

Свойство [unused_lists](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_lists/) можно использовать для обнаружения и удаления списков и определений списков, помеченных как "неиспользуемые".

В следующем примере кода показано, как удалить из документа только неиспользуемые стили:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupUnusedStylesandLists.py" >}}

## Удаление дублирующейся информации из документа

Вы также можете использовать свойство [duplicate_style](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/duplicate_style/), чтобы заменить все повторяющиеся стили оригинальным и удалить дубликаты из документа.

В следующем примере кода показано, как удалить повторяющиеся стили из документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupDuplicateStyle.py" >}}
