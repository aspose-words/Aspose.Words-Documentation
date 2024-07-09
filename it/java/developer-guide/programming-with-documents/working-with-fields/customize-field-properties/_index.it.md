---
title: Personalizza le proprietà del campo
second_title: Aspose.Words per Java
articleTitle: Personalizza le proprietà del campo
linktitle: Personalizza le proprietà del campo
description: "Scopri come personalizzare le proprietà del campo in Java. Rinominare i campi di fusione o ottenere risultati per i campi senza nodo separatore Java."
type: docs
weight: 27
url: /it/java/customize-field-properties/
---

Aspose.Words fornisce la capacità di interagire programmaticamente con varie proprietà di campo. In questo articolo, vedremo un paio di esempi in modo da capire il principio di base di lavorare con proprietà di campo. È possibile visualizzare l'elenco completo delle proprietà per ogni tipo di campo nella classe corrispondente.

## Aggiornamento della proprietà del campo

A volte gli utenti devono cambiare il valore di una proprietà di campo. Ad esempio, aggiornare il [AuthorName](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/#getAuthorName) proprietà della `AUTHOR` campo o cambiare [FieldName](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#getFieldName) proprietà della `MERGEFIELD` campo.

Il seguente esempio di codice mostra come rinominare i campi di fusione in un documento di Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-RenameMergeFields-RenameMergeFields.java" >}}

## Risultato dell'esposizione sul campo

Aspose.Words fornisce una proprietà per ottenere il risultato del campo per i campi che non hanno un nodo separatore di campo. Noi chiamiamo questo "prossimo risultato" o il risultato del display; MS Word lo visualizza nel documento calcolando il valore del campo sulla mosca, ma non c'è tale valore nel modello del documento.

Il seguente esempio di codice mostra l'uso di [DisplayResult](https://reference.aspose.com/words/java/com.aspose.words/field/#getDisplayResult) proprietà:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldDisplayResult-FieldDisplayResult.java" >}}
