---
title: Создание OOXML-диаграмм с нуля
second_title: Aspose.Words для C++
articleTitle: Создание OOXML-диаграмм с нуля
linktitle: Создание OOXML-диаграмм с нуля
description: "Как создавать различные диаграммы в вашем документе с помощью C++."
type: docs
weight: 10
url: /ru/cpp/creating-ooxml-charts-from-scratch-using-aspose-words/
timestamp: 2024-01-27-14-07-04
---

## Создание OOXML-диаграмм с нуля с помощью Aspose.Words

Aspose.Words предоставляет метод `InsertChart`, который был добавлен в класс `DocumentBuilder`. Итак, давайте посмотрим, как вставить простую столбчатую диаграмму в документ, используя метод `DocumentBuilder->InsertChart`:

### Как вставить столбчатую диаграмму

В примере кода, приведенном ниже, показано, как вставить столбчатую диаграмму.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-CreateColumnChart-InsertSimpleColumnChart.cpp" >}}

Код выдает следующий результат:

![insert-column-chart-aspose-words-cpp-1](creating-ooxml-charts-using-aspose-words-2.png)

Существует четыре различных перегрузки для метода добавления рядов, которые были применены, чтобы охватить все возможные варианты источников данных для всех типов диаграмм:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-CreateColumnChart-InsertColumnChart.cpp" >}}

Код выдает следующий результат:

![insert-column-chart-aspose-words-cpp-2](creating-ooxml-charts-using-aspose-words-3.png)


### Как вставить диаграмму распределения

В примере кода, приведенном ниже, показано, как вставить точечную диаграмму.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-InsertScatterChart-InsertScatterChart.cpp" >}}

Код выдает следующий результат:

![insert-scatter-chart-aspose-words-cpp-1](creating-ooxml-charts-using-aspose-words-4.png)


### Как вставить областную диаграмму

В примере кода, приведенном ниже, показано, как вставить областную диаграмму.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-InsertAreaChart-InsertAreaChart.cpp" >}}

Код выдает следующий результат:

![insert-area-chart-aspose-words-cpp-1](creating-ooxml-charts-using-aspose-words-5.png)


### Как вставить пузырьковую диаграмму

В примере кода, приведенном ниже, показано, как вставить пузырьковую диаграмму.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-InsertBubbleChart-InsertBubbleChart.cpp" >}}

Код выдает следующий результат:

![insert-bubble-chart-aspose-words-cpp-1](creating-ooxml-charts-from-scratch-using-aspose-words-1.png)




