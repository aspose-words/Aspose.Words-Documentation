---
title: Personalizza le proprietà dei campi in Python
second_title: Aspose.Words per Python via .NET
articleTitle: Personalizza le proprietà del campo
linktitle: Personalizza le proprietà del campo
description: "Scopri come personalizzare le proprietà dei campi in Python. Rinominare i campi di unione o ottenere risultati per i campi senza nodo separatore in Python via .NET."
type: docs
weight: 27
url: /it/python-net/customize-field-properties/
---

Aspose.Words offre la possibilità di interagire a livello di codice con varie proprietà dei campi. In questo articolo esamineremo un paio di esempi per farti comprendere il principio di base per lavorare con le proprietà dei campi. Puoi visualizzare l'elenco completo delle proprietà per ogni tipo di campo nella classe corrispondente nel [Modulo Campi](https://reference.aspose.com/words/python-net/aspose.words.fields/).

## Aggiornamento proprietà campo

A volte gli utenti devono modificare il valore di una proprietà del campo. Ad esempio, aggiorna la proprietà [author_name](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldauthor/author_name/) del campo `AUTHOR` o modifica la proprietà [field_name](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/field_name/) del campo `MERGEFIELD`.

L'esempio di codice seguente mostra come rinominare i campi di unione in un documento di Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RenameMergeFields.py" >}}

## Risultato visualizzazione campo

Aspose.Words fornisce una proprietà per ottenere il risultato del campo per i campi che non dispongono di un nodo separatore di campo. Lo chiamiamo "risultato falso" o risultato visualizzato; MS Word lo visualizza nel documento calcolando al volo il valore del campo, ma non esiste tale valore nel modello del documento.

L'esempio di codice seguente mostra l'utilizzo della proprietà [display_result](https://reference.aspose.com/words/python-net/aspose.words.fields/field/display_result/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-FieldDisplayResults.py" >}}