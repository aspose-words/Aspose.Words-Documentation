---
title: Personalizza le proprietà dei campi in C#
second_title: Aspose.Words per .NET
articleTitle: Personalizza le proprietà del campo
linktitle: Personalizza le proprietà del campo
description: "Scopri come personalizzare le proprietà dei campi in C#. Rinominare i campi di unione o ottenere risultati per i campi senza nodo separatore in .NET."
type: docs
weight: 27
url: /it/net/customize-field-properties/
---

Aspose.Words offre la possibilità di interagire a livello di codice con varie proprietà dei campi. In questo articolo esamineremo un paio di esempi per farti comprendere il principio di base per lavorare con le proprietà dei campi. Puoi visualizzare l'elenco completo delle proprietà per ogni tipo di campo nella classe corrispondente nel [Spazio dei nomi dei campi](https://reference.aspose.com/words/it/net/aspose.words.fields/).

## Aggiornamento proprietà campo

A volte gli utenti devono modificare il valore di una proprietà del campo. Ad esempio, aggiorna la proprietà [AuthorName](https://reference.aspose.com/words/it/net/aspose.words.fields/fieldauthor/authorname/) del campo `AUTHOR` o modifica la proprietà [FieldName](https://reference.aspose.com/words/it/net/aspose.words.fields/fieldmergefield/fieldname/) del campo `MERGEFIELD`.

L'esempio di codice seguente mostra come rinominare i campi di unione in un documento di Word:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cs" >}}

## Risultato visualizzazione campo

Aspose.Words fornisce una proprietà per ottenere il risultato del campo per i campi che non dispongono di un nodo separatore di campo. Lo chiamiamo "risultato falso" o risultato visualizzato; MS Word lo visualizza nel documento calcolando al volo il valore del campo, ma non esiste tale valore nel modello del documento.

L'esempio di codice seguente mostra l'utilizzo della proprietà [DisplayResult](https://reference.aspose.com/words/it/net/aspose.words.fields/field/displayresult/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cs" >}}
