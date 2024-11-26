---
title: Personalizza le proprietà dei campi
second_title: Aspose.Words per Java
articleTitle: Personalizza le proprietà dei campi
linktitle: Personalizza le proprietà dei campi
description: "Scopri come personalizzare le proprietà dei campi in Java. Rinominare i campi di unione o ottenere risultati per i campi senza nodo separatore in Java."
type: docs
weight: 27
url: /it/java/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words fornisce la possibilità di interagire programmaticamente con varie proprietà del campo. In questo articolo, vedremo un paio di esempi in modo da comprendere il principio di base del lavoro con le proprietà del campo. È possibile visualizzare l'elenco completo delle proprietà per ogni tipo di campo nella classe corrispondente.

## Aggiornamento proprietà campo

A volte gli utenti devono modificare il valore di una proprietà di campo. Ad esempio, aggiornare la proprietà [AuthorName](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/#getAuthorName) del campo `AUTHOR` o modificare la proprietà [FieldName](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#getFieldName) del campo `MERGEFIELD`.

L'esempio di codice seguente mostra come rinominare i campi di unione in un documento di Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-RenameMergeFields-RenameMergeFields.java" >}}

## Campo Risultato di visualizzazione

Aspose.Words fornisce una proprietà per ottenere il risultato del campo per i campi che non hanno un nodo separatore di campo. Chiamiamo questo "risultato falso" o risultato di visualizzazione; MS Word lo visualizza nel documento calcolando il valore del campo al volo, ma non esiste tale valore nel modello del documento.

L'esempio di codice seguente mostra l'utilizzo della proprietà [DisplayResult](https://reference.aspose.com/words/java/com.aspose.words/field/#getDisplayResult):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldDisplayResult-FieldDisplayResult.java" >}}
