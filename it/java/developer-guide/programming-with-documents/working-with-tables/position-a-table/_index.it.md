---
title: Posizione della tabella Java
second_title: Aspose.Words per Java
articleTitle: Posizionare una tabella
linktitle: Posizionare una tabella
description: "Specificare la posizione della tabella in Java. Ottieni un allineamento della tabella, ottieni e imposta la posizione della tabella galleggiante utilizzando Java."
type: docs
weight: 50
url: /it/java/position-a-table/
---

Ci sono tavoli galleggianti e tavoli in linea:

* # **Tabelle in linea** sono posizionati sullo stesso strato del testo e sono collocati in un flusso di testo che circonda solo la tabella sopra e sotto. Le tabelle in linea compariranno sempre tra i paragrafi in cui le hai poste.
* # **Tavoli galleggianti** sono sovrapposti al testo, e la posizione della tabella relativa al paragrafo è determinata dall'ancoraggio della tabella. A causa di questo, la posizione della tabella galleggiante nel documento è influenzata dalle impostazioni di posizionamento verticali e orizzontali.

A volte è necessario posizionare una tabella in un documento in un certo modo. Per fare questo, è necessario utilizzare gli strumenti di allineamento e impostare i rientri tra la tabella e il testo circostante.

In questo articolo, discuteremo quali opzioni Aspose.Words fornisce il posizionamento.

## Specificare posizione tabella in linea

È possibile impostare la posizione di una tabella in linea utilizzando il Aspose.Words API e il [Alignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getAlignment) proprieta'. Così, è possibile regolare l'allineamento della tabella rispetto alla pagina del documento.

Il seguente esempio di codice mostra come impostare la posizione di una tabella inline:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "inline-table-position.java" >}}

## Ottenere Allineamento Tabella Floating

Se l'involucro del testo della tabella è impostato su **Around**, è possibile ottenere l'allineamento orizzontale e verticale del tavolo utilizzando il [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) e [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) proprietà.

Con **altri tipi di imballaggio di testo**, è possibile ottenere allineamento tabella in linea utilizzando **Alignment** proprieta'.

Il seguente esempio di codice mostra come ottenere l'allineamento della tabella:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-table-position.java" >}}

## Ottenere Posizione Tabella Floating

 La posizione di un tavolo galleggiante è determinata utilizzando le seguenti proprietà:

* # [HorizontalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getHorizontalAnchor) – un oggetto per il calcolo del posizionamento orizzontale di un tavolo galleggiante
* # [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getVerticalAnchor) – un oggetto per il calcolo del posizionamento verticale di un tavolo galleggiante
* # [AbsoluteHorizontalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteHorizontalDistance) – posizione tavolo galleggiante orizzontale assoluta
* # [AbsoluteVerticalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteVerticalDistance) – posizione tavolo galleggiante verticale assoluta
* # [AllowOverlap](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowOverlap) – opzione per abilitare/disattivare la sovrapposizione con altri oggetti galleggianti
* # [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) – tavolo galleggiante relativo allineamento orizzontale.
* # [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) – tavolo galleggiante relativo allineamento verticale.

Il seguente esempio di codice mostra come ottenere la posizione di un tavolo galleggiante:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-floating-table-position.java" >}}

## Set Posizione tavola galleggiante

Proprio come ottenere, è possibile impostare la posizione di un tavolo galleggiante utilizzando lo stesso Aspose.Words API.

È importante sapere che l'allineamento e la distanza orizzontale e verticale sono proprietà combinate e si può resettare l'altro. Ad esempio, impostare il **RelativeHorizontalAlignment** resetterà il **AbsoluteHorizontalDistance** al suo valore predefinito e viceversa. Lo stesso è true per la disposizione verticale.

Il seguente esempio di codice mostra come impostare la posizione di una tabella galleggiante:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "floating-table-position.java" >}}

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "relative-horizontal-or-vertical-position.java" >}}

## Ottenere Distanza tra tabella e testo circostante

Aspose.Words offre anche l'opportunità di scoprire le distanze tra tavoli e testi circostanti:

- No. [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop) – il valore della distanza dall'alto
- No. [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom) – il valore della distanza della percezione
- No. [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight) – valore della distanza a destra
- No. [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft) – valore della distanza a sinistra

Il seguente esempio di codice mostra come ottenere la distanza tra una tabella e il suo testo circostante:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "distance-between-table-surrounding-text.java" >}}
