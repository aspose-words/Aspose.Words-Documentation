---
title: Очистіть документ за C++
second_title: Aspose.Words для C++
articleTitle: Очищення документа
linktitle: Очищення документа
description: "Видаліть невикористану або дубльовану інформацію, щоб зменшити розмір виводу та час обробки, використовуючи C++. Видаліть невикористані стилі, невикористані вбудовані стилі, повторювані стилі або невикористані списки."
type: docs
weight: 30
url: /uk/cpp/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

Іноді вам може знадобитися видалити невикористану або дублікат інформації, щоб зменшити розмір вихідного документа та час обробки.

Хоча ви можете знайти та видалити невикористані дані, такі як стилі чи списки, або дублікат інформації вручну, набагато зручніше це робити за допомогою функцій та функцій, наданих Aspose.Words.

Клас [CleanupOptions](https://reference.aspose.com/words/cpp/class/aspose.words.cleanup_options) дозволяє задати параметри очищення документа. Щоб видалити повторювані стилі або просто невикористані стилі чи списки з документа, ви можете скористатися методом [Cleanup](https://reference.aspose.com/words/cpp/aspose.words/document/cleanup/).

## Видалення невикористаної інформації з документа

Ви можете використовувати властивості [UnusedStyles](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedstyles/) та [UnusedBuiltinStyles](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedbuiltinstyles/) для виявлення та видалення стилів, позначених як "невикористані".

Властивість [UnusedLists](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedlists/) можна використовувати для виявлення та видалення списків та визначень списків, позначених як "невикористані".

Наступний приклад коду показує, як видалити з документа лише невикористані стилі:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.h" >}}

## Видалення дублюючої інформації з документа

Ви також можете використовувати властивість [DuplicateStyle](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_duplicatestyle/), щоб замінити всі повторювані стилі оригінальними та видалити дублікати з документа.

Наступний приклад коду показує, як видалити повторювані стилі з документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.h" >}}
