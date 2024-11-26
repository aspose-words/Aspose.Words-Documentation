---
title: Come trovare le proprietà dei campi
second_title: Aspose.Words per Java
articleTitle: Trova proprietà campo
linktitle: Trova proprietà campo
description: "Come trovare alcune proprietà del campo come il codice del campo e il risultato del campo in Java"
type: docs
weight: 25
url: /it/java/find-field-properties/
timestamp: 2024-01-27-14-07-04
---

Un campo che viene inserito usando [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) restituisce un oggetto [Field](https://reference.aspose.com/words/java/com.aspose.words/field/). Questa è una classe facade che fornisce metodi utili per trovare rapidamente tali proprietà di un campo.

L'esempio di codice seguente mostra come trovare il codice del campo e il risultato del campo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-GetFieldCode.java" >}}

Nota se si cercano solo i nomi dei campi di unione nel documento, è possibile utilizzare il metodo incorporato [GetFieldNames](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNames).

L'esempio di codice seguente mostra come ottenere i nomi di tutti i campi di unione in un documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-GetFieldNames.java" >}}
