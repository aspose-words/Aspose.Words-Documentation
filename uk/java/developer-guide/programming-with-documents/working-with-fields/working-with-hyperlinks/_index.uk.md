---
title: Робота з гіперпосиланнями в Java
second_title: Aspose.Words для Java
articleTitle: Додавання або модифікувати гіперпосилання
linktitle: Додавання або модифікувати гіперпосилання
description: "Як додати гіперпосилання в документ, використовуючи Javaй"
type: docs
weight: 50
url: /uk/java/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Гіперпосилання в Microsoft Word Документи `HYPERLINK` поле. У Aspose.Words, гіперпосилання реалізуються через [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) клас.

## Вставте гіперпосилання

Використання [InsertHyperlink](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHyperlink-java.lang.String-java.lang.String-boolean) спосіб вставити гіперпосилання в документ. Цей метод приймає три параметри:

1,1 км Текст посилання для відображення у документі
2,2 км Призначення посилання (URL або ім'я закладки всередині документа)
3. У Boolean параметр, який повинен бути true якщо `URL` є ім'ям закладки всередині документа

Про нас **InsertHyperlink** метод завжди додає апотрофії на початку і кінці URL

{{% alert color="primary" %}}

Зауважте, що потрібно вказати форматування шрифтів для відображення гіперпосилання на текстове точне використання `Font` майно.

{{% /alert %}}

Приклад коду показує, як вставити гіперпосилання в документ, використовуючи [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Заміна або модифікувати гіперпосилання

Гіперпосилання в Microsoft Word документи – це поле. Поле в документі Word, як ми говорили раніше, є складною структурою, що складається з декількох вузлів, які включають початок поля, польовий код, польовий сепаратор, польовий результат і поле кінець. Сфери можуть бути непристойними, містити багатий вміст і пропускати кілька абзаців або розділів у документі.

Щоб замінити або змінити гіперпосилання, потрібно знайти гіперпосилання в документі і замінити їх текст, URL або обидва.

Приклад коду показує, як знайти всі гіперпосилання у документі Word та змінити їх `URL` і назву відображення:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.java" >}}
