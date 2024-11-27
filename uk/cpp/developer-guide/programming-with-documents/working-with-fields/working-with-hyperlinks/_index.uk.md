---
title: Робота з гіперпосиланнями в C++
second_title: Aspose.Words для C++
articleTitle: Додавання або зміна гіперпосилань
linktitle: Додавання або зміна гіперпосилань
description: "Як додати гіперпосилання до свого документа, використовуючи Aspose.Words замість C++."
type: docs
weight: 180
url: /uk/cpp/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Гіперпосиланням в документах Microsoft Word є поле `HYPERLINK`. У документі Aspose.Words гіперпосилання реалізуються за допомогою класу [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/).

## Вставка гіперпосилання

Використовуйте метод [InsertHyperlink](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthyperlink/), щоб вставити гіперпосилання в документ. Цей метод приймає три параметри:

1. Текст посилання, яка буде відображатися в документі
2. Призначення посилання (URL або назва закладки всередині документа)
3. Логічний параметр, який повинен мати значення true, якщо `URL` - це назва закладки всередині документа

Метод **InsertHyperlink** завжди додає апострофи на початку та в кінці URL.

{{% alert color="primary" %}}

Зверніть увагу, що вам потрібно чітко вказати форматування шрифту для відображуваного тексту гіперпосилання, використовуючи властивість `Font`.

{{% /alert %}}

Наступний приклад коду показує, як вставити гіперпосилання в документ за допомогою [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## Замінити або змінити гіперпосилання

Гіперпосилання в документах Microsoft Word - це поле. Поле в документі Word - це складна структура, що складається з безлічі вузлів, які включають початок поля, код поля, роздільник полів, результат поля та кінець поля. Поля можуть бути вкладеними, містити великий вміст і охоплювати кілька абзаців або розділів документа.

Клас `FieldHyperlink` реалізує поле `HYPERLINK`.

Наступний приклад коду показує, як знайти всі гіперпосилання в документі Word та змінити їх `URL` та відображувану назву:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cpp" >}}
