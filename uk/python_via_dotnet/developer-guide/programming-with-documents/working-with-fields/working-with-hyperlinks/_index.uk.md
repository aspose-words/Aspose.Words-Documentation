---
title: Робота з гіперпосиланнями
second_title: Aspose.Words для Python via .NET
articleTitle: Додавання або Змінення гіперпосилання
linktitle: Додавання або Змінення гіперпосилання
description: "Додати, замінити або змінити гіперпосилання в документ, використовуючи Pythonй"
type: docs
weight: 50
url: /uk/python-net/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Гіперпосилання в Microsoft Word Документи `HYPERLINK` поле. У Aspose.Words, гіперпосилання реалізуються через [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) клас.

## Вставка гіперпосилання

Використання [insert_hyperlink](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_hyperlink/) спосіб вставити гіперпосилання в документ. Цей метод приймає три параметри:

1,1 км Текст посилання для відображення у документі
2,2 км Призначення посилання (URL або ім'я закладки всередині документа)
3. У Boolean параметр, який повинен бути true якщо `URL` є ім'ям закладки всередині документа

Про нас **InsertHyperlink** метод завжди додає апотрофії на початку і кінці URL.

{{% alert color="primary" %}}

Зауважте, що потрібно вказати форматування шрифтів для відображення гіперпосилання на текстове точне використання `Font` майно.

{{% /alert %}}

Приклад наступного коду показує, як вставити гіперпосилання в документ, використовуючи [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHyperlink.py" >}}

## Заміна або модифікувати гіперпосилання

Гіперпосилання в Microsoft Word документи – це поле. поле в документі Word є складною структурою, що складається з декількох вузлів, які включають в себе початок поля, польовий сепаратор, результат поля та кінець поля. Сфери можуть бути непристойними, містити багатий вміст і пропускати кілька абзаців або розділів у документі

Щоб замінити або змінити гіперпосилання, потрібно знайти гіперпосилання в документі і замінити їх текст, URL або обидва.

Приклад коду показує, як знайти всі гіперпосилання у документі Word та змінити їх `URL` і ім'я дисплея:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ReplaceHyperlinks.py" >}}
