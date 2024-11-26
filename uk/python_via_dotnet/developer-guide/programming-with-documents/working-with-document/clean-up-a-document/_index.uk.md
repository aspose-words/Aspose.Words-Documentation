---
title: Очистити документ у Python
second_title: Aspose.Words для Python via .NET
articleTitle: Очистити документ
linktitle: Очистити документ
description: "Видаліть невикористану або дублікову інформацію, щоб зменшити розмір та час обробки даних Pythonй Видалити невикористані стилі, невикористані вбудовані стилі, дублікати стилі, або невикористані списки."
type: docs
weight: 30
url: /uk/python-net/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

Іноді необхідно видалити невикористану або дублікову інформацію для зменшення розміру вихідного документа і часу обробки.

Хоча ви можете знайти і видалити невикористані дані, такі як стилі або списки, або дублікати інформації вручну, це буде набагато зручніше зробити це за допомогою функцій і можливостей, які надаються за допомогою Aspose.Wordsй

Про нас [CleanupOptions](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/) клас дозволяє вказати параметри для очищення документів. Щоб видалити дублікати стилі або просто невикористані стилі або списки з документа, ви можете використовувати [cleanup](https://reference.aspose.com/words/python-net/aspose.words/document/cleanup/) метод.

## Видалити невикористану інформацію з документа

Ви можете використовувати [unused_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_styles/) і [unused_builtin_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_builtin_styles/) властивості для виявлення і видалення стилів, які позначені як "невикористані".

Ви можете використовувати [unused_lists](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_lists/) майно для виявлення та видалення списків та списків, які позначені як "невикористані".

Приклад коду показує, як видалити тільки невикористані стилі з документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupUnusedStylesandLists.py" >}}

## Видалити дублікати інформацію з документа

Ви також можете використовувати [duplicate_style](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/duplicate_style/) властивість замінювати всі дублікати стилі з оригінальним і видалити дублікати з документа.

Приклад наступного коду показує, як видалити дублікати стилі з документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupDuplicateStyle.py" >}}
