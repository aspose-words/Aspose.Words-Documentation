---
title: Робота з гіперпосиланнями в C#
second_title: Aspose.Words для .NET
articleTitle: Додавання або Змінення гіперпосилання
linktitle: Додавання або Змінення гіперпосилання
description: "Як додати гіперпосилання в ваш документ у C# використання Aspose.Words для .NETй"
type: docs
weight: 50
url: /uk/net/working-with-hyperlinks/
---

Гіперпосилання в Microsoft Word Документи `HYPERLINK` поле. У Aspose.Words, гіперпосилання реалізуються через [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) клас.

## Вставте гіперпосилання

Використання [InsertHyperlink](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthyperlink/) спосіб вставити гіперпосилання в документ. Цей метод приймає три параметри:

1,1 км Текст посилання для відображення у документі
2,2 км Призначення посилання (URL або ім'я закладки всередині документа)
3. У Boolean параметр, який повинен бути true якщо `URL` є ім'ям закладки всередині документа

Про нас **InsertHyperlink** метод завжди додає апотрофії на початку і кінці URL

{{% alert color="primary" %}}

Зауважте, що потрібно вказати форматування шрифтів для відображення гіперпосилання на текстове точне використання `Font` майно.

{{% /alert %}}

Приклад наступного коду показує, як вставити гіперпосилання в документ, використовуючи [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cs" >}}

## Заміна або модифікувати гіперпосилання

Гіперпосилання в Microsoft Word документи – це поле. Поле в документі Word, як ми говорили раніше, є складною структурою, що складається з декількох вузлів, які включають початок поля, польовий код, польовий сепаратор, польовий результат і поле кінець. Сфери можуть бути непристойними, містити багатий вміст і пропускати кілька абзаців або розділів у документі.

Щоб замінити або змінити гіперпосилання, потрібно знайти гіперпосилання в документі і замінити їх текст, URL або обидва.

Приклад коду показує, як знайти всі гіперпосилання у документі Word та змінити їх `URL` і ім'я дисплея:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cs" >}}
