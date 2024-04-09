---
title: Работа с диапазонами в C#
second_title: Aspose.Words для .NET
articleTitle: Работа с диапазонами
linktitle: Работа с диапазонами
description: "Введение в Range Feature in Aspose.Words для .NET."
type: docs
weight: 130
url: /ru/net/working-with-ranges/
---

{{% alert color="primary" %}}

В Aspose.Words, Диапазон - это "плоское окно" в древовидную модель документа.

{{% /alert %}}

Если вы работали с Microsoft Word Автоматизация, вы, вероятно, знаете, что одним из основных инструментов для изучения и изменения содержания документа является **Range** объект. **Range** Это как "окно" в содержание и форматирование документа.

Aspose.Words также имеет [Range](https://reference.aspose.com/words/net/aspose.words/range/) Класс и он предназначен для того, чтобы выглядеть и действовать аналогично **Range** в Microsoft Word. Хотя **Range** не может охватывать произвольную часть документа и не имеет **Start** и **End**, Вы можете получить доступ к диапазону, охватываемому любым узлом документа, включая [Document](https://reference.aspose.com/words/net/aspose.words/document/) себя. Другими словами, каждый узел имеет свой диапазон. The **Range** Объект позволяет получать доступ и изменять текст, закладки и поля формы в пределах диапазона.

## Восстановление простого текста

Используйте [Text](https://reference.aspose.com/words/net/aspose.words/range/text/) свойство извлекать простой, неформатированный текст диапазона.

Следующий пример кода показывает, как получить простой, неформатированный текст диапазона:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Удалить текст

Диапазон позволяет удалить все символы диапазона, позвонив [Delete](https://reference.aspose.com/words/net/aspose.words/range/delete/).

Следующий пример кода показывает, как удалить все символы диапазона:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}