---
title: Създаване на OOXML диаграми от нулата
second_title: Aspose.Words за C++
articleTitle: Създаване на OOXML диаграми от нулата
linktitle: Създаване на OOXML диаграми от нулата
description: "Как да създавате различни диаграми във вашия документ, като използвате C++."
type: docs
weight: 10
url: /bg/cpp/creating-ooxml-charts-from-scratch-using-aspose-words/
timestamp: 2024-01-27-14-07-04
---

## Създаване на OOXML диаграми от нулата, използвайки Aspose.Words

Aspose.Words осигурява `InsertChart` метода, който е добавен в `DocumentBuilder` класа. Така че, нека да видим как да вмъкнете проста колонна диаграма в документа, като използвате метода `DocumentBuilder->InsertChart`:

### Как да вмъкнете колонна диаграма

Примерът с код, даден по-долу, показва как да вмъкнете колонна диаграма.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-CreateColumnChart-InsertSimpleColumnChart.cpp" >}}

Кодът дава следния резултат:

![insert-column-chart-aspose-words-cpp-1](creating-ooxml-charts-using-aspose-words-2.png)

Има четири различни претоварвания за метода за добавяне на серии, който е изложен, за да покрие всички възможни варианти на източници на данни за всички типове диаграми:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-CreateColumnChart-InsertColumnChart.cpp" >}}

Кодът дава следния резултат:

![insert-column-chart-aspose-words-cpp-2](creating-ooxml-charts-using-aspose-words-3.png)


### Как да InsertScatterChart

Примерът с код, даден по-долу, показва как да вмъкнете точкова диаграма.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-InsertScatterChart-InsertScatterChart.cpp" >}}

Кодът дава следния резултат:

![insert-scatter-chart-aspose-words-cpp-1](creating-ooxml-charts-using-aspose-words-4.png)


### Как да вмъкнете Областна диаграма

Примерът с код, даден по-долу, показва как да вмъкнете диаграма с области.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-InsertAreaChart-InsertAreaChart.cpp" >}}

Кодът дава следния резултат:

![insert-area-chart-aspose-words-cpp-1](creating-ooxml-charts-using-aspose-words-5.png)


### Как да вмъкнете диаграма с мехурчета

Примерът с код, даден по-долу, показва как да вмъкнете мехурчеста диаграма.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-InsertBubbleChart-InsertBubbleChart.cpp" >}}

Кодът дава следния резултат:

![insert-bubble-chart-aspose-words-cpp-1](creating-ooxml-charts-from-scratch-using-aspose-words-1.png)




