---
title: Lavorare con i caratteri in Python
second_title: Aspose.Words per Python via .NET
articleTitle: Lavorare con i caratteri
linktitle: Lavorare con i caratteri
description: "Personalizza le impostazioni dei caratteri utilizzando Python."
type: docs
weight: 230
url: /it/python-net/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

Un font è un insieme di caratteri con una determinata dimensione, colore e design. Aspose.Words ti consente di lavorare con i caratteri utilizzando il modulo [fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/) e la classe [Font](https://reference.aspose.com/words/python-net/aspose.words/font/).

## Formattazione dei caratteri

La formattazione corrente del carattere è rappresentata dall'oggetto **Font** restituito dalla proprietà [Font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/). La classe **Font** contiene un'ampia varietà di proprietà dei caratteri, replicando quelle disponibili in Microsoft Word.

L'esempio di codice seguente mostra come impostare la formattazione dei caratteri:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-DocumentBuilderSetFontFormatting.py" >}}

Le proprietà di riempimento ora sono disponibili anche per i caratteri per impostare la formattazione di riempimento del testo. Offre la possibilità di modificare, ad esempio, il colore di primo piano o la trasparenza del riempimento del testo.

## Ottenere l'interlinea dei caratteri

L'interlinea del carattere è la distanza verticale tra le linee di base di due righe di testo consecutive. Pertanto l'interlinea include lo spazio vuoto tra le righe insieme all'altezza del carattere stesso.

Per ottenere questo valore è stata introdotta la proprietà [line_spacing](https://reference.aspose.com/words/python-net/aspose.words/font/line_spacing/) nella classe [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) come mostrato nell'esempio riportato di seguito:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetFontLineSpacing.py" >}}

## Carattere EmphasisMark

Alcune lingue dell'Asia orientale utilizzano un segno di enfasi speciale per indicare un'enfasi. La classe **Font** fornisce la proprietà [emphasis_mark](https://reference.aspose.com/words/python-net/aspose.words/font/emphasis_mark/) per ottenere o impostare i valori di enumerazione [EmphasisMark](https://reference.aspose.com/words/python-net/aspose.words/emphasismark/) da applicare nella formattazione.

L'esempio di codice seguente mostra come impostare la proprietà **EphasisMark**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontEmphasisMark.py" >}}
