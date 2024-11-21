---
title: Come trovare le proprietà del campo in C#
second_title: Aspose.Words per .NET
articleTitle: Trova proprietà campo
linktitle: Trova proprietà campo
description: "Come trovare alcune proprietà del campo come il codice di campo e il risultato del campo in C#."
type: docs
weight: 25
url: /it/net/find-field-properties/
timestamp: 2024-01-27-14-07-04
---

Un campo inserito utilizzando [DocumentBuilder](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/insertfield/) restituisce un oggetto [Field](https://reference.aspose.com/words/it/net/aspose.words.fields/field/). Questa è una classe di facciata che fornisce metodi utili per trovare rapidamente alcune proprietà di un campo.

L'esempio di codice seguente mostra come trovare il codice di campo e il risultato del campo:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldCode.cs" >}}

Nota se stai cercando solo i nomi dei campi di unione in un documento, puoi invece utilizzare il metodo [GetFieldNames](https://reference.aspose.com/words/it/net/aspose.words.mailmerging/mailmerge/getfieldnames/) integrato.

Il seguente esempio di codice mostra come ottenere i nomi di tutti i campi di unione in un documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cs" >}}
