---
title: Posizione della tabella in C++
second_title: Aspose.Words per C++
articleTitle: Posizionare una tabella
linktitle: Posizionare una tabella
description: "Specificare la posizione della tabella in C++. Ottenere un allineamento della tabella, ottenere e impostare la posizione della tabella mobile utilizzando C++."
type: docs
weight: 50
url: /it/cpp/position-a-table/
---

Ci sono tavoli galleggianti e tavoli in linea:

* **Inline tables** sono posizionati sullo stesso livello del testo e sono collocati in un flusso di testo che circonda solo la tabella sopra e sotto. Le tabelle in linea verranno sempre visualizzate tra i paragrafi in cui sono state inserite.
* **Floating tables** sono sovrapposti sul testo e la posizione della tabella rispetto al paragrafo è determinata dall'ancoraggio della tabella. Per questo motivo, la posizione della tabella mobile nel documento è influenzata dalle impostazioni di posizionamento verticale e orizzontale.

A volte è necessario posizionare una tabella in un documento in un certo modo. Per fare ciò, è necessario utilizzare gli strumenti di allineamento e impostare i rientri tra la tabella e il testo circostante.

In questo articolo, discuteremo quali opzioni Aspose.Words fornisce per il posizionamento.

## Specificare la posizione della tabella in linea

È possibile impostare la posizione di una tabella in linea utilizzando l'API Aspose.Words e la proprietà [Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/). Pertanto, è possibile regolare l'allineamento della tabella rispetto alla pagina del documento.

L'esempio di codice seguente mostra come impostare la posizione di una tabella in linea:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "inline-table-position.h" >}}

## Ottieni l'allineamento della tabella mobile

Se il testo della tabella è impostato su **Around**, è possibile ottenere l'allineamento orizzontale e verticale della tabella utilizzando le proprietà [RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/) e [RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/).

Con **other types of text wrapping**, è possibile ottenere l'allineamento della tabella in linea utilizzando la proprietà [Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/).

Il seguente esempio di codice mostra come ottenere l'allineamento della tabella:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-table-position.h" >}}

## Ottieni la posizione della tabella mobile

 La posizione di una tabella mobile viene determinata utilizzando le seguenti proprietà:

* [HorizontalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_horizontalanchor/) – un oggetto per calcolare il posizionamento orizzontale di una tabella mobile
* [VerticalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_verticalanchor/) – un oggetto per calcolare il posizionamento verticale di una tabella mobile
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absolutehorizontaldistance/) – posizione assoluta della tabella mobile orizzontale
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absoluteverticaldistance/) – posizione assoluta della tabella verticale mobile
* [AllowOverlap](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowoverlap/) – opzione per abilitare/disabilitare la sovrapposizione con altri oggetti mobili
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/) – allineamento orizzontale relativo della tabella mobile.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/) – allineamento verticale relativo della tabella mobile.

Il seguente esempio di codice mostra come ottenere la posizione di una tabella mobile:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-floating-table-position.h" >}}

## Imposta la posizione della tavola mobile

Proprio come ottenere, è possibile impostare la posizione di una tabella mobile utilizzando la stessa API Aspose.Words.

È importante sapere che l'allineamento e la distanza orizzontale e verticale sono proprietà combinate e una può reimpostare l'altra. Ad esempio, l'impostazione di **RelativeHorizontalAlignment** ripristinerà il valore predefinito di **AbsoluteHorizontalDistance** e viceversa. Lo stesso vale per la disposizione verticale.

Il seguente esempio di codice mostra come impostare la posizione di una tabella mobile:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "floating-table-position.h" >}}

## Ottieni la distanza tra la tabella e il testo circostante

Aspose.Words offre anche l'opportunità di scoprire le distanze tra le tabelle e i testi circostanti:

- [DistanceTop](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancetop/) – il valore della distanza dall'alto
- [DistanceBottom](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancebottom/) – il valore della distanza di percezione
- [DistanceRight](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceright/) – valore della distanza a destra
- [DistanceLeft](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceleft/) – valore della distanza a sinistra

L'esempio di codice seguente mostra come ottenere la distanza tra una tabella e il testo circostante:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "distance-between-table-surrounding-text.h" >}}
