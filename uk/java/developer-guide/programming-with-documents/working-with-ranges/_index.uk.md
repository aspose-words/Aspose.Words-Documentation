---
title: Робота з діапазонами в Java
second_title: Aspose.Words для Java
articleTitle: Робота з діапазонами
linktitle: Робота з діапазонами
description: "Вступ до функції діапазону в Aspose.Words для Javaй"
type: docs
weight: 130
url: /uk/java/working-with-ranges/
---

{{% alert color="primary" %}}

У Aspose.Words, Асортимент – це "збереження вікна" в іншу деревоподібну модель документа.

{{% /alert %}}

Якщо ви працювали з Microsoft Word Автоматизація, ви, ймовірно, знаєте, що один з основних інструментів для вивчення та зміни вмісту документа є `Range` об'єкт. Діапазон - це як "вікно" в зміст документа і форматування.

Aspose.Words також має [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) клас і він призначений для того, щоб виглядати і діяти аналогічно **Range** в Microsoft Wordй Немовля **Range** не може закривати довільну частину документа і не має **Start** і **End**, Ви можете отримати доступ до діапазону, який охоплює будь-яку вершину документа, включаючи [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) сам. Іншими словами, кожен вузол має власний діапазон. Про нас **Range** об'єкт дозволяє отримати доступ і змінювати текстові, закладки та поля форми в межах діапазону.

## Відновлення тексту

Використання [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#getText) майно, щоб отримати звичайний, неформатований текст діапазону.

Приклад коду показує, як отримати звичайний, неформатований текст діапазону:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesGetText-RangesGetText.java" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл зразок цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)й

{{% /alert %}}

## Видалити текст

Про нас `Range` клас дозволяє видаляти всі символи діапазону за допомогою виклику [delete](https://reference.aspose.com/words/java/com.aspose.words/range/#delete)й

Приклад коду показує, як видалити всі символи діапазону:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesDeleteText-RangesDeleteText.java" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл зразок цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)й

{{% /alert %}}

## 