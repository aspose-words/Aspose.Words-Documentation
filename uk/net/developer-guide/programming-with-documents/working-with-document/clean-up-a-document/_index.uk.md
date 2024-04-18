---
title: Очистити документ у C#
second_title: Aspose.Words для .NET
articleTitle: Очистити документ
linktitle: Очистити документ
description: "Видаліть невикористану або дублікову інформацію, щоб зменшити розмір та час обробки даних C#й Видалити невикористані стилі, невикористані вбудовані стилі, дублікати стилі, або невикористані списки."
type: docs
weight: 30
url: /uk/net/clean-up-a-document/
---

Іноді необхідно видалити невикористану або дублікову інформацію для зменшення розміру вихідного документа і часу обробки.

Хоча ви можете знайти і видалити невикористані дані, такі як стилі або списки, або дублікати інформації вручну, це буде набагато зручніше зробити це за допомогою функцій і можливостей, які надаються за допомогою Aspose.Wordsй

Про нас [CleanupOptions](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/) клас дозволяє вказати параметри для очищення документів. Щоб видалити дублікати стилі або просто невикористані стилі або списки з документа, ви можете використовувати [Cleanup](https://reference.aspose.com/words/net/aspose.words/document/cleanup/) метод.

## Видалити невикористану інформацію з документа

Ви можете використовувати [UnusedStyles](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedstyles/) і [UnusedBuiltinStyles](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedbuiltinstyles/) властивості для виявлення і видалення стилів, які позначені як "невикористані".

Ви можете використовувати [UnusedLists](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedlists/) майно для виявлення та видалення списків та списків, які позначені як "невикористані".

Приклад коду показує, як видалити тільки невикористані стилі з документа:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.cs" >}}

## Видалити дублікати інформацію з документа

Ви також можете використовувати [DuplicateStyle](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/duplicatestyle/) властивість замінювати всі дублікати стилі з оригінальним і видалити дублікати з документа.

Приклад наступного коду показує, як видалити дублікати стилі з документа:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.cs" >}}
