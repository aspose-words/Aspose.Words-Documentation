---
title: Posizione della tabella in Python
second_title: Aspose.Words per Python
articleTitle: Posiziona un tavolo
linktitle: Posiziona un tavolo
description: "Specificare la posizione della tabella in Python. Ottieni un allineamento della tabella, ottieni e imposta la posizione della tabella mobile utilizzando Python."
type: docs
weight: 50
url: /it/python-net/position-a-table/
timestamp: 2024-01-27-14-07-04
---

Esistono tabelle mobili e tabelle in linea:

* I **Tabelle in linea** sono posizionati sullo stesso livello del testo e sono inseriti in un flusso di testo che circonda solo la tabella sopra e sotto. Le tabelle in linea appariranno sempre tra i paragrafi in cui le hai inserite.
* I **Tavoli galleggianti** sono sovrapposti al testo e la posizione della tabella rispetto al paragrafo è determinata dall'ancora della tabella. Per questo motivo, la posizione della tabella mobile nel documento viene influenzata dalle impostazioni di posizionamento verticale e orizzontale.

A volte è necessario posizionare una tabella in un documento in un certo modo. Per fare ciò, è necessario utilizzare gli strumenti di allineamento e impostare i rientri tra la tabella e il testo circostante.

In questo articolo discuteremo quali opzioni offre Aspose.Words per il posizionamento.

## Specificare la posizione della tabella in linea

È possibile impostare la posizione di una tabella in linea utilizzando la proprietà Aspose.Words API e [Alignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/alignment/). Pertanto, puoi regolare l'allineamento della tabella rispetto alla pagina del documento.

L'esempio di codice seguente mostra come impostare la posizione di una tabella in linea:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "inline-table-position.py" >}}

## Ottieni l'allineamento della tabella mobile

Se la disposizione del testo della tabella è impostata su **Around**, puoi ottenere l'allineamento orizzontale e verticale della tabella utilizzando le proprietà [RelativeHorizontalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_horizontal_alignment/) e [RelativeVerticalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_vertical_alignment/).

Con **altri tipi di disposizione del testo**, puoi ottenere l'allineamento della tabella in linea utilizzando la proprietà [Alignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/alignment/).

L'esempio di codice seguente mostra come ottenere l'allineamento della tabella:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "get-table-position.py" >}}

## Ottieni la posizione della tabella mobile

 La posizione di una tabella mobile viene determinata utilizzando le seguenti proprietà:

* [HorizontalAnchor](https://reference.aspose.com/words/python-net/aspose.words.tables/table/horizontal_anchor/) – un oggetto per calcolare il posizionamento orizzontale di un tavolo mobile
* [VerticalAnchor](https://reference.aspose.com/words/python-net/aspose.words.tables/table/vertical_anchor/) – un oggetto per calcolare il posizionamento verticale di una tabella mobile
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/python-net/aspose.words.tables/table/absolute_horizontal_distance/) – posizione assoluta della tabella mobile orizzontale
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/python-net/aspose.words.tables/table/absolute_vertical_distance/) – posizione assoluta della tabella mobile verticale
* [AllowOverlap](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_overlap/) – opzione per abilitare/disabilitare la sovrapposizione con altri oggetti mobili
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_horizontal_alignment/) – allineamento orizzontale relativo della tabella mobile.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_vertical_alignment/) – tabella mobile relativo allineamento verticale.

L'esempio di codice seguente mostra come ottenere la posizione di una tabella mobile:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "get-floating-table-position.py" >}}

## Imposta la posizione della tabella mobile

Proprio come ottenere, puoi impostare la posizione di una tabella mobile utilizzando lo stesso Aspose.Words API.

È importante sapere che l'allineamento e la distanza orizzontale e verticale sono proprietà combinate e l'una può reimpostare l'altra. Ad esempio, l'impostazione di **RelativeHorizontalAlignment** ripristinerà il **AbsoluteHorizontalDistance** al valore predefinito e viceversa. Lo stesso vale per true per la disposizione verticale.

L'esempio di codice seguente mostra come impostare la posizione di una tabella mobile:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "floating-table-position.py" >}}

## Ottieni la distanza tra la tabella e il testo circostante

Aspose.Words offre anche l'opportunità di scoprire le distanze tra le tabelle e i testi circostanti:

- [DistanceTop](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_top/) – il valore della distanza dall'alto
- [DistanceBottom](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_bottom/) – il valore della distanza di percezione
- [DistanceRight](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_right/) – valore della distanza a destra
- [DistanceLeft](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_left/) – valore della distanza a sinistra

L'esempio di codice seguente mostra come ottenere la distanza tra una tabella e il testo circostante:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "distance-between-table-surrounding-text.py" >}}
