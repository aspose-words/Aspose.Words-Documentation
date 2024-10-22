---
title: Lavorare con i font in C++
second_title: Aspose.Words per C++
articleTitle: Lavorare con i font
linktitle: Lavorare con i font
description: "Formattazione del carattere nei dettagli utilizzando C++."
type: docs
weight: 230
url: /it/cpp/working-with-fonts/
---

Un font è un insieme di caratteri con una certa dimensione, colore e design. Aspose.Words consente di lavorare con i font utilizzando lo spazio dei nomi [Fonts](https://reference.aspose.com/words/cpp/aspose.words.fonts/) e la classe [Font](https://reference.aspose.com/words/cpp/aspose.words/font/).

## Formattazione dei caratteri

La formattazione del carattere corrente è rappresentata dall'oggetto **Font** restituito dalla proprietà [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/). La classe **Font** contiene un'ampia varietà di proprietà del carattere, replicando quelle disponibili in Microsoft Word.

Il seguente esempio di codice mostra come impostare la formattazione dei caratteri:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

Le proprietà di riempimento ora sono disponibili anche per i font per impostare la formattazione di riempimento del testo. Dà la possibilità di modificare, ad esempio, il colore di primo piano o la trasparenza del riempimento del testo.

## Ottenere l'interlinea dei caratteri

L'interlinea dei caratteri è la distanza verticale tra le linee di base di due righe di testo consecutive. Quindi l'interlinea include lo spazio vuoto tra le linee insieme all'altezza del carattere stesso.

La proprietà [LineSpacing](https://reference.aspose.com/words/cpp/aspose.words/font/get_linespacing/) è stata introdotta nella classe **Font** per ottenere questo valore, come mostrato nell'esempio seguente:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cpp" >}}

## Carattere EmphasisMark

Alcune lingue dell'Asia orientale usano un segno di enfasi speciale per indicare un'enfasi. La classe **Font** fornisce la proprietà [EmphasisMark](https://reference.aspose.com/words/cpp/aspose.words/font/get_emphasismark/) per ottenere o impostare i valori di enumerazione `EmphasisMark` da applicare durante la formattazione.

L'esempio di codice seguente mostra come impostare la proprietà **EphasisMark**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cpp" >}}
