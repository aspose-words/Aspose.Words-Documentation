---
title: Работа с диапазонами в C#
second_title: Aspose.Words для .NET
articleTitle: Работа с диапазонами
linktitle: Работа с диапазонами
description: "Знакомство с функцией диапазона в Aspose.Words для .NET."
type: docs
weight: 130
url: /ru/net/working-with-ranges/
---

{{% alert color="primary" %}}

В Aspose.Words Range представляет собой "плоское окно" в древовидную модель документа.

{{% /alert %}}

Если вы работали с Microsoft Word Automation, вы, вероятно, знаете, что одним из основных инструментов для проверки и изменения содержимого документа является объект **Range**. **Range** — это "окно" в содержимое и форматирование документа.

Aspose.Words также имеет класс [Range](https://reference.aspose.com/words/ru/net/aspose.words/range/) и спроектирован так, чтобы выглядеть и действовать аналогично **Range** в Microsoft Word. Хотя **Range** не может охватывать произвольную часть документа и не имеет классов **Start** и **End**, вы можете получить доступ к диапазону, охватываемому любым узлом документа, включая сам [Document](https://reference.aspose.com/words/ru/net/aspose.words/document/). Другими словами, каждый узел имеет свой диапазон. Объект **Range** позволяет получать доступ и изменять текст, закладки и поля формы в пределах диапазона.

## Получить простой текст

Используйте свойство [Text](https://reference.aspose.com/words/ru/net/aspose.words/range/text/) для получения простого неформатированного текста диапазона.

В следующем примере кода показано, как получить простой неформатированный текст диапазона:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера по адресу [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Удалить текст

Диапазон позволяет удалить все символы диапазона, позвонив по номеру [Delete](https://reference.aspose.com/words/ru/net/aspose.words/range/delete/).

В следующем примере кода показано, как удалить все символы диапазона:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера по адресу [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}