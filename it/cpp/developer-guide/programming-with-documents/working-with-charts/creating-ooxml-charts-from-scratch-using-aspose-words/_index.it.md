---
title: Creazione di grafici OOXML da zero
second_title: Aspose.Words per C++
articleTitle: Creazione di grafici OOXML da zero
linktitle: Creazione di grafici OOXML da zero
description: "Come creare grafici diversi nel documento utilizzando C++."
type: docs
weight: 10
url: /it/cpp/creating-ooxml-charts-from-scratch-using-aspose-words/
---

## Creazione di grafici OOXML da zero utilizzando Aspose.Words

Aspose.Words fornisce il metodo `InsertChart` che è stato aggiunto alla classe `DocumentBuilder`. Quindi, vediamo come inserire un semplice istogramma nel documento usando il metodo `DocumentBuilder->InsertChart`:

### Come inserire istogramma

L'esempio di codice riportato di seguito mostra come inserire un istogramma.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-CreateColumnChart-InsertSimpleColumnChart.cpp" >}}

Il codice produce il seguente risultato:

![insert-column-chart-aspose-words-cpp-1](creating-ooxml-charts-using-aspose-words-2.png)

Esistono quattro diversi sovraccarichi per il metodo Add series, che è stato esposto per coprire tutte le possibili varianti di origini dati per tutti i tipi di grafico:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-CreateColumnChart-InsertColumnChart.cpp" >}}

Il codice produce il seguente risultato:

![insert-column-chart-aspose-words-cpp-2](creating-ooxml-charts-using-aspose-words-3.png)


### Come fare InsertScatterChart

L'esempio di codice riportato di seguito mostra come inserire un grafico a dispersione.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-InsertScatterChart-InsertScatterChart.cpp" >}}

Il codice produce il seguente risultato:

![insert-scatter-chart-aspose-words-cpp-1](creating-ooxml-charts-using-aspose-words-4.png)


### Come inserire il grafico ad area

L'esempio di codice riportato di seguito mostra come inserire un grafico ad area.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-InsertAreaChart-InsertAreaChart.cpp" >}}

Il codice produce il seguente risultato:

![insert-area-chart-aspose-words-cpp-1](creating-ooxml-charts-using-aspose-words-5.png)


### Come inserire il grafico a bolle

L'esempio di codice riportato di seguito mostra come inserire un grafico a bolle.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-InsertBubbleChart-InsertBubbleChart.cpp" >}}

Il codice produce il seguente risultato:

![insert-bubble-chart-aspose-words-cpp-1](creating-ooxml-charts-from-scratch-using-aspose-words-1.png)




