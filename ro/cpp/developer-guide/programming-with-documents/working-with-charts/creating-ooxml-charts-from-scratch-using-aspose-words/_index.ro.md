---
title: Crearea graficelor OOXML de la zero
second_title: Aspose.Words pentru C++
articleTitle: Crearea graficelor OOXML de la zero
linktitle: Crearea graficelor OOXML de la zero
description: "Cum să creați diferite diagrame în documentul dvs. folosind C++."
type: docs
weight: 10
url: /ro/cpp/creating-ooxml-charts-from-scratch-using-aspose-words/
---

## Crearea graficelor OOXML de la zero folosind Aspose.Words

Aspose.Words oferă metoda `InsertChart` care a fost adăugată în clasa `DocumentBuilder`. Deci, să vedem cum să inserați o diagramă coloană simplă în document folosind metoda `DocumentBuilder->InsertChart`:

### Cum se inserează graficul coloanelor

Exemplul de cod dat mai jos arată cum să inserați o diagramă coloană.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-CreateColumnChart-InsertSimpleColumnChart.cpp" >}}

Codul produce următorul rezultat:

![insert-column-chart-aspose-words-cpp-1](creating-ooxml-charts-using-aspose-words-2.png)

Există patru supraîncărcări diferite pentru metoda de adăugare a seriilor, care a fost expusă pentru a acoperi toate variantele posibile ale surselor de date pentru toate tipurile de diagrame:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-CreateColumnChart-InsertColumnChart.cpp" >}}

Codul produce următorul rezultat:

![insert-column-chart-aspose-words-cpp-2](creating-ooxml-charts-using-aspose-words-3.png)


### Cum să InsertScatterChart

Exemplul de cod prezentat mai jos arată cum să inserați o diagramă scatter.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-InsertScatterChart-InsertScatterChart.cpp" >}}

Codul produce următorul rezultat:

![insert-scatter-chart-aspose-words-cpp-1](creating-ooxml-charts-using-aspose-words-4.png)


### Cum se introduce diagrama zonei

Exemplul de cod prezentat mai jos arată cum să inserați o diagramă de zonă.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-InsertAreaChart-InsertAreaChart.cpp" >}}

Codul produce următorul rezultat:

![insert-area-chart-aspose-words-cpp-1](creating-ooxml-charts-using-aspose-words-5.png)


### Cum se introduce diagrama cu bule

Exemplul de cod dat mai jos arată cum să inserați o diagramă cu bule.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-InsertBubbleChart-InsertBubbleChart.cpp" >}}

Codul produce următorul rezultat:

![insert-bubble-chart-aspose-words-cpp-1](creating-ooxml-charts-from-scratch-using-aspose-words-1.png)




