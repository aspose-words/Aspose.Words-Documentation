---
title: Робота з діапазонами в C#
second_title: Aspose.Words для .NET
articleTitle: Робота з діапазонами
linktitle: Робота з діапазонами
description: "Вступ до функції діапазону в Aspose.Words для .NETй"
type: docs
weight: 130
url: /uk/net/working-with-ranges/
---

{{% alert color="primary" %}}

У Aspose.Words, Асортимент – це "збереження вікна" в іншу деревоподібну модель документа.

{{% /alert %}}

Якщо ви працювали з Microsoft Word Автоматизація, ви, ймовірно, знаєте, що один з основних інструментів для вивчення та зміни вмісту документа є **Range** об'єкт. **Range** – це як "вікно" в зміст документа і форматування.

Aspose.Words також має [Range](https://reference.aspose.com/words/net/aspose.words/range/) клас і він призначений для того, щоб виглядати і діяти аналогічно **Range** в Microsoft Wordй Немовля **Range** не може закривати довільну частину документа і не має **Start** і **End**, Ви можете отримати доступ до діапазону, який охоплює будь-яку вершину документа, включаючи [Document](https://reference.aspose.com/words/net/aspose.words/document/) сам. Іншими словами, кожен вузол має власний діапазон. Про нас **Range** об'єкт дозволяє отримати доступ і змінювати текст, закладки та поля форми в межах діапазону.

## Посилання

Використання [Text](https://reference.aspose.com/words/net/aspose.words/range/text/) майно, щоб отримати звичайний, неформатований текст діапазону.

Приклад коду показує, як отримати звичайний, неформатований текст діапазону:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cs" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл зразок цього прикладу з [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx)й

{{% /alert %}}

## Видалити текст

Діапазон дозволяє видаляти всі символи діапазону за допомогою виклику [Delete](https://reference.aspose.com/words/net/aspose.words/range/delete/)й

Приклад наступного коду показує, як видалити всі символи діапазону:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cs" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл зразок цього прикладу з [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx)й

{{% /alert %}}