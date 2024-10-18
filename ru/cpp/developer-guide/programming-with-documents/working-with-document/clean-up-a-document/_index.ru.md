---
title: Очистка документа на C++
second_title: Aspose.Words для C++
articleTitle: Очистка документа
linktitle: Очистка документа
description: "Удалите неиспользуемую или дублирующуюся информацию, чтобы уменьшить размер выходных данных и время обработки с помощью C++. Удалите неиспользуемые стили, неиспользуемые встроенные стили, повторяющиеся стили или неиспользуемые списки."
type: docs
weight: 30
url: /ru/cpp/clean-up-a-document/
---

Иногда вам может потребоваться удалить неиспользуемую или дублирующуюся информацию, чтобы уменьшить размер выходного документа и время обработки.

Хотя вы можете найти и удалить неиспользуемые данные, такие как стили или списки, или дублирующую информацию вручную, гораздо удобнее будет делать это с помощью функций и возможностей, предоставляемых Aspose.Words.

Класс [CleanupOptions](https://reference.aspose.com/words/cpp/class/aspose.words.cleanup_options) позволяет задать параметры очистки документа. Чтобы удалить повторяющиеся стили или просто неиспользуемые стили или списки из документа, вы можете использовать метод [Cleanup](https://reference.aspose.com/words/cpp/aspose.words/document/cleanup/).

## Удаление неиспользуемой информации из документа

Вы можете использовать свойства [UnusedStyles](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedstyles/) и [UnusedBuiltinStyles](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedbuiltinstyles/) для обнаружения и удаления стилей, помеченных как "неиспользуемые".

Свойство [UnusedLists](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedlists/) можно использовать для обнаружения и удаления списков и определений списков, помеченных как "неиспользуемые".

В следующем примере кода показано, как удалить из документа только неиспользуемые стили:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.h" >}}

## Удаление дублирующейся информации из документа

Вы также можете использовать свойство [DuplicateStyle](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_duplicatestyle/), чтобы заменить все повторяющиеся стили оригинальным и удалить дубликаты из документа.

В следующем примере кода показано, как удалить повторяющиеся стили из документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.h" >}}
