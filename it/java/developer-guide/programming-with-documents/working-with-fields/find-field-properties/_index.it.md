---
title: Come Trovare Proprietà del Campo
second_title: Aspose.Words per Java
articleTitle: Trova le proprietà del campo
linktitle: Trova le proprietà del campo
description: "Come trovare alcune proprietà di campo come il codice di campo e il risultato di campo Java"
type: docs
weight: 25
url: /it/java/find-field-properties/
---

Un campo che viene inserito utilizzando [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) torna a [Field](https://reference.aspose.com/words/java/com.aspose.words/field/) oggetto. Questa è una classe di facciata che fornisce metodi utili per trovare rapidamente tali proprietà di un campo.

Il seguente esempio di codice mostra come trovare il codice del campo e il risultato del campo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-GetFieldCode.java" >}}

Nota se stai cercando solo i nomi dei campi di fusione nel documento, allora puoi invece usare il metodo incorporato [GetFieldNames](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNames).

Il seguente esempio di codice mostra come ottenere nomi di tutti i campi di fusione in un documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-GetFieldNames.java" >}}
