---
title: Робота з діапазонами в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Робота з діапазонами
linktitle: Робота з діапазонами
description: "Робота з діапазонами в документі Pythonй"
type: docs
weight: 130
url: /uk/python-net/working-with-ranges/
---

{{% alert color="primary" %}}

У Aspose.Words, з [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) – це "збереження вікна" в іншу деревоподібну модель документа.

{{% /alert %}}

Якщо ви працювали з Microsoft Word Автоматизація, ви, ймовірно, знаєте, що один з основних інструментів для вивчення та зміни вмісту документа є [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) об'єкт. [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) – це як "вікно" в зміст документа і форматування. Aspose.Words також має [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) клас і він призначений для того, щоб виглядати і діяти аналогічно **Range** в Microsoft Wordй Немовля **Range** не може закривати довільну частину документа і не має **Start** і **End**, Ви можете отримати доступ до діапазону, який охоплює будь-яку вершину документа, включаючи [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) сам. Іншими словами, кожен вузол має власний діапазон. Про нас [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) об'єкт дозволяє отримати доступ і змінювати текст, закладки та поля форми в межах діапазону.

## Посилання

Використання [text](https://reference.aspose.com/words/python-net/aspose.words/range/text/) майно, щоб отримати звичайний, неформатований текст діапазону.

Приклад коду показує, як отримати звичайний, неформатований текст діапазону:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesGetText.py" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл зразок цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)й

{{% /alert %}}

## Видалення тексту

Діапазон дозволяє видаляти всі символи діапазону за допомогою виклику [delete](https://reference.aspose.com/words/python-net/aspose.words/range/delete/)й

Приклад наступного коду показує, як видалити всі символи діапазону:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesDeleteText.py" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл зразок цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)й

{{% /alert %}}