---
title: Очистити документ у Java
second_title: Aspose.Words для Java
articleTitle: Очистити документ
linktitle: Очистити документ
description: "Видаліть невикористану або дублікову інформацію, щоб зменшити розмір та час обробки даних. Видалити невикористані стилі, невикористані вбудовані стилі, дублікати стилі, або невикористані списки за допомогою Javaй"
type: docs
weight: 30
url: /uk/java/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

Іноді необхідно видалити невикористану або дублікову інформацію для зменшення розміру вихідного документа і часу обробки.

Хоча ви можете знайти і видалити невикористані дані, такі як стилі або списки, або дублікати інформації вручну, це буде набагато зручніше зробити це за допомогою функцій і можливостей, що надаються за допомогою Aspose.Wordsй

Про нас [CleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/) клас дозволяє вказати параметри для очищення документів. Щоб видалити дублікати стилі або просто невикористані стилі або списки з документа, ви можете використовувати [Cleanup](https://reference.aspose.com/words/java/com.aspose.words/document/#cleanup) метод.

## Видалити невикористану інформацію з документа

Ви можете використовувати [UnusedStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedStyles) і [UnusedBuiltinStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedBuiltinStyles) властивості для виявлення і видалення стилів, які позначені як "невикористані".

Ви можете використовувати [UnusedLists](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedLists) майно для виявлення та видалення списків та списків, які позначені як "невикористані".

Приклад коду показує, як видалити тільки невикористані стилі з документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleansUnusedStylesandLists.java" >}}

## Видалити дублікати інформацію з документа

Ви також можете використовувати [DuplicateStyle](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getDuplicateStyle) властивість замінювати всі дублікати стилі з оригінальним і видалити дублікати з документа.

Приклад коду показує, як видалити дублікати стилі з документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleanupDuplicateStyle.java" >}}
