---
title: Utilizzo dei font in Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con i font
linktitle: Lavorare con i font
description: "Formattazione del carattere nei dettagli usando Java."
type: docs
weight: 230
url: /it/java/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

Un font è un insieme di caratteri con una certa dimensione, colore e design. Aspose.Words consente di lavorare con i font utilizzando varie classi relative ai font, inclusa la classe [Font](https://reference.aspose.com/words/java/com.aspose.words/font/).

## Formattazione dei caratteri

La formattazione corrente del carattere è rappresentata da un oggetto **Font** restituito dalla proprietà [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont). La classe **Font** contiene un'ampia varietà di proprietà dei caratteri possibili in Microsoft Word.

Il seguente esempio di codice mostra come impostare la formattazione dei caratteri:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontFormatting.java" >}}

Le proprietà di riempimento ora sono disponibili anche per i font per impostare la formattazione di riempimento del testo. Dà la possibilità di modificare, ad esempio, il colore di primo piano o la trasparenza del riempimento del testo.

## Ottenere l'interlinea dei caratteri

L'interlinea di un font è la distanza verticale tra le linee di base di due righe di testo consecutive. Pertanto, l'interlinea include lo spazio vuoto tra le linee insieme all'altezza del carattere stesso.

La proprietà [LineSpacing](https://reference.aspose.com/words/java/com.aspose.words/font/#getLineSpacing) è stata introdotta nella classe **Font** per ottenere questo valore come mostrato nell'esempio riportato di seguito:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetFontLineSpacing-GetFontLineSpacing.java" >}}

## Carattere EmphasisMark

La classe **Font** fornisce la proprietà [EmphasisMark](https://reference.aspose.com/words/java/com.aspose.words/font/#getEmphasisMark) per ottenere o impostare i valori di enumerazione EmphasisMark da applicare nella formattazione.

L'esempio di codice seguente mostra come impostare la proprietà **EphasisMark**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontEmphasisMark.java" >}}
