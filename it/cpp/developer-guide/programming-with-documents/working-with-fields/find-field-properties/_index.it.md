---
title: Come trovare le proprietà dei campi
second_title: Aspose.Words per C++
articleTitle: Trova proprietà campo
linktitle: Trova proprietà campo
description: "Come trovare alcune proprietà del campo come il codice del campo e il risultato del campo in C++."
type: docs
weight: 25
url: /it/cpp/find-field-properties/
timestamp: 2024-01-27-14-07-04
---

Un campo che viene inserito utilizzando [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) restituisce un oggetto [Field](https://reference.aspose.com/words/cpp/aspose.words.fields/field/). Questa è una classe facade che fornisce metodi utili per trovare rapidamente alcune proprietà di un campo.

L'esempio di codice seguente mostra come trovare il codice del campo e il risultato del campo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldsCode.cpp" >}}

Nota se si cercano solo i nomi dei campi di unione in un documento, è possibile utilizzare il metodo incorporato [GetFieldNames](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getfieldnames/).

L'esempio di codice seguente mostra come ottenere i nomi di tutti i campi di unione in un documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cpp" >}}
