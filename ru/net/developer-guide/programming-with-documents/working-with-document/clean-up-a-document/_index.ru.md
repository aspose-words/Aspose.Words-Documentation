---
title: Очистить документ в C#
second_title: Aspose.Words для .NET
articleTitle: Очистить документ
linktitle: Очистить документ
description: "Удалите неиспользуемую или повторяющуюся информацию, чтобы уменьшить размер вывода и время обработки, используя C#. Удалите неиспользуемые стили, неиспользуемые встроенные стили, повторяющиеся стили или неиспользуемые списки."
type: docs
weight: 30
url: /ru/net/clean-up-a-document/
---

Иногда вам может потребоваться удалить неиспользуемую или повторяющуюся информацию, чтобы уменьшить размер выходного документа и время обработки.

Хотя вы можете найти и удалить неиспользуемые данные, такие как стили или списки, или дублировать информацию вручную, гораздо удобнее будет сделать это, используя функции и возможности, предоставляемые Aspose.Words.

Класс [CleanupOptions](https://reference.aspose.com/words/ru/net/aspose.words/cleanupoptions/) позволяет указать параметры очистки документа. Чтобы удалить из документа повторяющиеся стили или просто неиспользуемые стили или списки, вы можете использовать метод [Cleanup](https://reference.aspose.com/words/ru/net/aspose.words/document/cleanup/).

## Удалить неиспользуемую информацию из документа

Вы можете использовать свойства [UnusedStyles](https://reference.aspose.com/words/ru/net/aspose.words/cleanupoptions/unusedstyles/) и [UnusedBuiltinStyles](https://reference.aspose.com/words/ru/net/aspose.words/cleanupoptions/unusedbuiltinstyles/) для обнаружения и удаления стилей, помеченных как "неиспользуемые".

Свойство [UnusedLists](https://reference.aspose.com/words/ru/net/aspose.words/cleanupoptions/unusedlists/) можно использовать для обнаружения и удаления списков и определений списков, помеченных как "неиспользуемые".

В следующем примере кода показано, как удалить из документа только неиспользуемые стили:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.cs" >}}

## Удалить повторяющуюся информацию из документа

Вы также можете использовать свойство [DuplicateStyle](https://reference.aspose.com/words/ru/net/aspose.words/cleanupoptions/duplicatestyle/), чтобы заменить все повторяющиеся стили исходными и удалить дубликаты из документа.

В следующем примере кода показано, как удалить повторяющиеся стили из документа:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.cs" >}}
