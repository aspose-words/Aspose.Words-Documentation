---
title: Lavorare con i caratteri in C#
second_title: Aspose.Words per .NET
articleTitle: Lavorare con i caratteri
linktitle: Lavorare con i caratteri
description: "Formattazione dei caratteri in dettaglio utilizzando C#. Segno di sottolineatura in C#. Ottieni l'interlinea dei caratteri utilizzando C#."
type: docs
weight: 230
url: /it/net/working-with-fonts/
---

Un font è un insieme di caratteri con una determinata dimensione, colore e design. Aspose.Words ti consente di lavorare con i caratteri utilizzando lo spazio dei nomi [Fonts](https://reference.aspose.com/words/it/net/aspose.words.fonts/) e la classe [Font](https://reference.aspose.com/words/it/net/aspose.words/font/).

## Formattazione dei caratteri

La formattazione corrente del carattere è rappresentata dall'oggetto **Font** restituito dalla proprietà [Font](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/font/). La classe **Font** contiene un'ampia varietà di proprietà dei caratteri, replicando quelle disponibili in Microsoft Word.

L'esempio di codice seguente mostra come impostare la formattazione dei caratteri:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cs" >}}

Le proprietà di riempimento sono disponibili anche per i caratteri per impostare la formattazione del riempimento del testo. Ciò consente di modificare, ad esempio, il colore di primo piano o la trasparenza del riempimento del testo.

## Ottenere l'interlinea dei caratteri

L'interlinea del carattere è la distanza verticale tra le linee di base di due righe di testo consecutive. Pertanto l'interlinea include lo spazio vuoto tra le righe insieme all'altezza del carattere stesso.

Per ottenere questo valore è stata introdotta la proprietà [LineSpacing](https://reference.aspose.com/words/it/net/aspose.words/font/linespacing/) nella classe **Font**, come mostrato nell'esempio seguente:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cs" >}}

## Carattere EmphasisMark

Alcune lingue dell'Asia orientale utilizzano un segno di enfasi speciale per indicare un'enfasi. La classe **Font** fornisce la proprietà [EmphasisMark](https://reference.aspose.com/words/it/net/aspose.words/font/emphasismark/) per ottenere o impostare i valori di enumerazione [EmphasisMark](https://reference.aspose.com/words/it/net/aspose.words/emphasismark/) da applicare durante la formattazione.

L'esempio di codice seguente mostra come impostare la proprietà **EphasisMark**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cs" >}}
