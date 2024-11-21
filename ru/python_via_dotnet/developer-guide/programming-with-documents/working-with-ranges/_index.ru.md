---
title: Работа с диапазонами в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с диапазонами
linktitle: Работа с диапазонами
description: "Работа с диапазонами в документе с использованием Python."
type: docs
weight: 130
url: /ru/python-net/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

В Aspose.Words, а [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) Это "плоское окно" в древовидную модель документа.

{{% /alert %}}

Если вы работали с Microsoft Word Автоматизация, вы, вероятно, знаете, что одним из основных инструментов для изучения и изменения содержания документа является [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) объект. [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) Это как "окно" в содержание и форматирование документа. Aspose.Words также имеет [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) Класс и он предназначен для того, чтобы выглядеть и действовать аналогично **Range** в Microsoft Word. Хотя **Range** не может охватывать произвольную часть документа и не имеет **Start** и **End**, Вы можете получить доступ к диапазону, охватываемому любым узлом документа, включая [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) себя. Другими словами, каждый узел имеет свой диапазон. The [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) Объект позволяет получать доступ и изменять текст, закладки и поля формы в пределах диапазона.

## Восстановление простого текста

Используйте [text](https://reference.aspose.com/words/python-net/aspose.words/range/text/) свойство извлекать простой, неформатированный текст диапазона.

Следующий пример кода показывает, как получить простой, неформатированный текст диапазона:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesGetText.py" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Удаление текста

Диапазон позволяет удалить все символы диапазона, позвонив [delete](https://reference.aspose.com/words/python-net/aspose.words/range/delete/)

Следующий пример кода показывает, как удалить все символы диапазона:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesDeleteText.py" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
