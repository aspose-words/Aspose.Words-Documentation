---
title: Tworzenie wykresów OOXML od podstaw
second_title: Aspose.Words dla C++
articleTitle: Tworzenie wykresów OOXML od podstaw
linktitle: Tworzenie wykresów OOXML od podstaw
description: "Jak tworzyć różne wykresy w dokumencie za pomocą C++."
type: docs
weight: 10
url: /pl/cpp/creating-ooxml-charts-from-scratch-using-aspose-words/
timestamp: 2024-01-27-14-07-04
---

## Tworzenie wykresów OOXML od podstaw za pomocą Aspose.Words

Aspose.Words zapewnia metodę `InsertChart`, która została dodana do klasy `DocumentBuilder`. Zobaczmy więc, jak wstawić prosty wykres kolumnowy do dokumentu za pomocą metody `DocumentBuilder->InsertChart`:

### Jak wstawić wykres kolumnowy

Poniższy przykład kodu pokazuje, jak wstawić wykres kolumnowy.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-CreateColumnChart-InsertSimpleColumnChart.cpp" >}}

Kod daje następujący wynik:

![insert-column-chart-aspose-words-cpp-1](creating-ooxml-charts-using-aspose-words-2.png)

Istnieją cztery różne przeciążenia dla metody dodawania serii, która została narażona na pokrycie wszystkich możliwych wariantów źródeł danych dla wszystkich typów wykresów:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-CreateColumnChart-InsertColumnChart.cpp" >}}

Kod daje następujący wynik:

![insert-column-chart-aspose-words-cpp-2](creating-ooxml-charts-using-aspose-words-3.png)


### Jak InsertScatterChart

Poniższy przykład kodu pokazuje, jak wstawić wykres punktowy.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-InsertScatterChart-InsertScatterChart.cpp" >}}

Kod daje następujący wynik:

![insert-scatter-chart-aspose-words-cpp-1](creating-ooxml-charts-using-aspose-words-4.png)


### Jak wstawić wykres obszaru

Poniższy przykład kodu pokazuje, jak wstawić wykres obszaru.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-InsertAreaChart-InsertAreaChart.cpp" >}}

Kod daje następujący wynik:

![insert-area-chart-aspose-words-cpp-1](creating-ooxml-charts-using-aspose-words-5.png)


### Jak wstawić wykres bąbelkowy

Poniższy przykład kodu pokazuje, jak wstawić wykres bąbelkowy.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-InsertBubbleChart-InsertBubbleChart.cpp" >}}

Kod daje następujący wynik:

![insert-bubble-chart-aspose-words-cpp-1](creating-ooxml-charts-from-scratch-using-aspose-words-1.png)




