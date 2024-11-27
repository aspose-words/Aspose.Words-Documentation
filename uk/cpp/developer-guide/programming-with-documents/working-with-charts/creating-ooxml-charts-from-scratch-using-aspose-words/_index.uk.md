---
title: Створення OOXML діаграм з нуля
second_title: Aspose.Words для C++
articleTitle: Створення OOXML діаграм з нуля
linktitle: Створення OOXML діаграм з нуля
description: "Як створити різні діаграми у вашому документі за допомогою C++."
type: docs
weight: 10
url: /uk/cpp/creating-ooxml-charts-from-scratch-using-aspose-words/
timestamp: 2024-01-27-14-07-04
---

## Створення OOXML діаграм з нуля за допомогою Aspose.Words

Aspose.Words надає метод `InsertChart`, який був доданий до класу `DocumentBuilder`. Отже, давайте подивимося, як вставити просту діаграму стовпців у документ, використовуючи метод `DocumentBuilder->InsertChart`:

### Як вставити стовпчасту діаграму

У прикладі коду, наведеному нижче, показано, як вставити стовпчасту діаграму.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-CreateColumnChart-InsertSimpleColumnChart.cpp" >}}

Код видає наступний результат:

![insert-column-chart-aspose-words-cpp-1](creating-ooxml-charts-using-aspose-words-2.png)

Існує чотири різних перевантаження для методу додавання рядів, які були застосовані, щоб охопити всі можливі варіанти джерел даних для всіх типів діаграм:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-CreateColumnChart-InsertColumnChart.cpp" >}}

Код видає наступний результат:

![insert-column-chart-aspose-words-cpp-2](creating-ooxml-charts-using-aspose-words-3.png)


### Як InsertScatterChart

У прикладі коду, наведеному нижче, показано, як вставити точкову діаграму.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-InsertScatterChart-InsertScatterChart.cpp" >}}

Код видає наступний результат:

![insert-scatter-chart-aspose-words-cpp-1](creating-ooxml-charts-using-aspose-words-4.png)


### Як вставити обласну діаграму

У прикладі коду, наведеному нижче, показано, як вставити обласну діаграму.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-InsertAreaChart-InsertAreaChart.cpp" >}}

Код видає наступний результат:

![insert-area-chart-aspose-words-cpp-1](creating-ooxml-charts-using-aspose-words-5.png)


### Як вставити бульбашкову діаграму

У прикладі коду, наведеному нижче, показано, як вставити бульбашкову діаграму.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-InsertBubbleChart-InsertBubbleChart.cpp" >}}

Код видає наступний результат:

![insert-bubble-chart-aspose-words-cpp-1](creating-ooxml-charts-from-scratch-using-aspose-words-1.png)




