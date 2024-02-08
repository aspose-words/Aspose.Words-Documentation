---
title: Trova le proprietà del campo in Python
second_title: Aspose.Words per Python via .NET
articleTitle: Trova proprietà campo
linktitle: Trova proprietà campo
description: "Come trovare alcune proprietà del campo come il codice di campo e il risultato del campo in Python."
type: docs
weight: 25
url: /it/python-net/find-field-properties/
---

Un campo inserito utilizzando [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).[insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) restituisce un oggetto [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/). Questa è una classe di facciata che fornisce metodi utili per trovare rapidamente alcune proprietà di un campo.

L'esempio di codice seguente mostra come trovare il codice di campo e il risultato del campo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldCode.py" >}}

Nota se stai cercando solo i nomi dei campi di unione in un documento, puoi invece utilizzare il metodo [get_field_names](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names/) integrato.

Il seguente esempio di codice mostra come ottenere i nomi di tutti i campi di unione in un documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldNames.py" >}}