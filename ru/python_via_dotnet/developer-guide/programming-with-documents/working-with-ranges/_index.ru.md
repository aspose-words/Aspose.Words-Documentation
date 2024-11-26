---
title: Работа с диапазонами в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с диапазонами
linktitle: Работа с диапазонами
description: "Работайте с диапазонами в документе, используя Python."
type: docs
weight: 130
url: /ru/python-net/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

В Aspose.Words [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) - это "плоское окно" в древовидной модели документа.

{{% /alert %}}

Если вы работали с системой автоматизации Microsoft Word, то, вероятно, знаете, что одним из основных инструментов для изучения и изменения содержимого документа является объект [Range](https://reference.aspose.com/words/python-net/aspose.words/range/). [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) - это своего рода "окно" в содержимое и форматирование документа. Aspose.Words также имеет класс [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) и спроектирован так, чтобы выглядеть и действовать аналогично **Range** в Microsoft Word. Хотя **Range** не может охватывать произвольную часть документа и не содержит **Start** и **End**, вы можете получить доступ к диапазону, охватываемому любым узлом документа, включая сам [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Другими словами, каждый узел имеет свой собственный диапазон. Объект [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) позволяет вам получать доступ к тексту, закладкам и полям формы в пределах диапазона и изменять их.

## Извлечение обычного текста

Используйте свойство [text](https://reference.aspose.com/words/python-net/aspose.words/range/text/) для извлечения простого неформатированного текста из диапазона.

В следующем примере кода показано, как получить простой неформатированный текст из диапазона:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesGetText.py" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Удаление текста

Range позволяет удалить все символы из диапазона, вызвав команду [delete](https://reference.aspose.com/words/python-net/aspose.words/range/delete/).

В следующем примере кода показано, как удалить все символы из диапазона:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesDeleteText.py" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
