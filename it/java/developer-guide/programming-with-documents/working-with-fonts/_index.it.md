---
title: Lavorare con i caratteri in Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con i caratteri
linktitle: Lavorare con i caratteri
description: "Formattazione del carattere nei dettagli utilizzando Java."
type: docs
weight: 230
url: /it/java/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

Un carattere è un insieme di caratteri con una certa dimensione, colore e design. Aspose.Words consente di lavorare con i font utilizzando varie classi relative ai caratteri, incluso il [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) classe.

## Formattazione del carattere

La formattazione attuale del carattere è rappresentata da un **Font** oggetto restituito da [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) proprieta'. The **Font** classe contiene una vasta gamma di proprietà del carattere possibile in Microsoft Word.

Il seguente esempio di codice mostra come impostare la formattazione del carattere:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontFormatting.java" >}}

Le proprietà di riempimento ora sono disponibili anche per i font per impostare la formattazione di riempimento del testo. Dà una capacità di cambiare, ad esempio, il colore di primo piano o la trasparenza del riempimento di testo.

## Ottenere la linea di carattere Spacing

La linea di spaziatura di un carattere è la distanza verticale tra le linee di base di due linee consecutive di testo. Così, la linea di spaziatura include lo spazio vuoto tra le righe insieme all'altezza del personaggio stesso.

The [LineSpacing](https://reference.aspose.com/words/java/com.aspose.words/font/#getLineSpacing) la proprietà è stata introdotta nel **Font** classe per ottenere questo valore come mostrato nell'esempio indicato di seguito:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetFontLineSpacing-GetFontLineSpacing.java" >}}

## Font EmphasisMark

The **Font** classe fornisce [EmphasisMark](https://reference.aspose.com/words/java/com.aspose.words/font/#getEmphasisMark) proprietà per ottenere o impostare valori di enumerazione EmphasisMark da applicare nella formattazione.

Il seguente esempio di codice mostra come impostare il **EphasisMark** proprietà:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontEmphasisMark.java" >}}
