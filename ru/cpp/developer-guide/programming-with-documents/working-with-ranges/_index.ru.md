---
title: Работа с диапазонами в C++
second_title: Aspose.Words для C++
articleTitle: Работа с диапазонами
linktitle: Работа с диапазонами
description: "Введение в функцию диапазона в Aspose.Words для C++."
type: docs
weight: 130
url: /ru/cpp/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

В Aspose.Words диапазон представляет собой "плоское окно" в древовидной модели документа.

{{% /alert %}}

Если вы работали с Microsoft Word Automation, то, вероятно, знаете, что одним из основных инструментов для изучения и изменения содержимого документа является объект **Range**. **Range** - это своего рода "окно" в содержимое и форматирование документа.

Aspose.Words также имеет класс [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) и спроектирован так, чтобы выглядеть и действовать аналогично **Range** в Microsoft Word. Хотя **Range** не может охватывать произвольную часть документа и не содержит **Start** и **End**, вы можете получить доступ к диапазону, охватываемому любым узлом документа, включая сам [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). Другими словами, каждый узел имеет свой собственный диапазон. Объект **Range** позволяет вам получать доступ к тексту, закладкам и полям формы в пределах диапазона и изменять их.

## Извлечение обычного текста

Используйте свойство [Text](https://reference.aspose.com/words/cpp/aspose.words/range/get_text/) для извлечения простого неформатированного текста из диапазона.

В следующем примере кода показано, как получить простой неформатированный текст из диапазона:

{{< gist aspose-words-gists "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cpp" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Удаление текста

Range позволяет удалить все символы из диапазона, вызвав команду [Delete](https://reference.aspose.com/words/cpp/aspose.words/range/delete/).

В следующем примере кода показано, как удалить все символы из диапазона:

{{< gist aspose-words-gists "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cpp" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
