---
title: Personalizzare le proprietà dei campi in C++
second_title: Aspose.Words per C++
articleTitle: Personalizza le proprietà dei campi
linktitle: Personalizza le proprietà dei campi
description: "Scopri come personalizzare le proprietà dei campi in C++. Rinominare i campi di unione o ottenere risultati per i campi senza nodo separatore in C++."
type: docs
weight: 27
url: /it/cpp/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words fornisce la possibilità di interagire programmaticamente con varie proprietà del campo. In questo articolo, vedremo un paio di esempi in modo da comprendere il principio di base del lavoro con le proprietà del campo. È possibile visualizzare l'elenco completo delle proprietà per ogni tipo di campo nella classe corrispondente in [Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields).

## Aggiornamento proprietà campo

A volte gli utenti devono modificare il valore di una proprietà di campo. Ad esempio, aggiornare la proprietà [AuthorName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/get_authorname/) del campo `AUTHOR` o modificare la proprietà [FieldName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_fieldname/) del campo `MERGEFIELD`.

L'esempio di codice seguente mostra come rinominare i campi di unione in un documento di Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cpp" >}}

## Campo Risultato di visualizzazione

Aspose.Words fornisce una proprietà per ottenere il risultato del campo per i campi che non hanno un nodo separatore di campo. Chiamiamo questo "risultato falso" o risultato di visualizzazione; Microsoft Word lo visualizza nel documento calcolando il valore del campo al volo, ma non esiste tale valore nel modello del documento.

L'esempio di codice seguente mostra l'utilizzo della proprietà [DisplayResult](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_displayresult/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cpp" >}}
