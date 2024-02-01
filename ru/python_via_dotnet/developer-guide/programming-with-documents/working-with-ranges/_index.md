---
title: Работа с диапазонами в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с диапазонами
linktitle: Работа с диапазонами
description: "Работайте с диапазонами в документе, используя Python."
type: docs
weight: 130
url: /ru/python-net/working-with-ranges/
---

{{% alert color="primary" %}}

В Aspose.Words [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) представляет собой "плоское окно" в древовидную модель документа.

{{% /alert %}}

Если вы работали с Microsoft Word Automation, вы, вероятно, знаете, что одним из основных инструментов для проверки и изменения содержимого документа является объект [Range](https://reference.aspose.com/words/python-net/aspose.words/range/). [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) — это "окно" в содержимое и форматирование документа. Aspose.Words также имеет класс [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) и спроектирован так, чтобы выглядеть и действовать аналогично **Range** в Microsoft Word. Хотя **Range** не может охватывать произвольную часть документа и не имеет классов **Start** и **End**, вы можете получить доступ к диапазону, охватываемому любым узлом документа, включая сам [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Другими словами, каждый узел имеет свой диапазон. Объект [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) позволяет получать доступ и изменять текст, закладки и поля формы в пределах диапазона.

## Получить простой текст

Используйте свойство [text](https://reference.aspose.com/words/python-net/aspose.words/range/text/) для получения простого неформатированного текста диапазона.

В следующем примере кода показано, как получить простой неформатированный текст диапазона:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesGetText.py" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Удаление текста

Диапазон позволяет удалить все символы диапазона, позвонив по номеру [delete](https://reference.aspose.com/words/python-net/aspose.words/range/delete/)

В следующем примере кода показано, как удалить все символы диапазона:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesDeleteText.py" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}