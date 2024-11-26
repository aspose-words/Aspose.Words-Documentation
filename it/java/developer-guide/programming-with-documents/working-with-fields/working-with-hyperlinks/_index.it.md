---
title: Utilizzo dei collegamenti ipertestuali in Java
second_title: Aspose.Words per Java
articleTitle: Aggiungere o modificare collegamenti ipertestuali
linktitle: Aggiungere o modificare collegamenti ipertestuali
description: "Come aggiungere un collegamento ipertestuale nel documento utilizzando Java."
type: docs
weight: 50
url: /it/java/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Un collegamento ipertestuale nei documenti Microsoft Word è il campo `HYPERLINK`. In Aspose.Words, i collegamenti ipertestuali vengono implementati tramite la classe [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/).

## Inserire un collegamento ipertestuale

Utilizzare il metodo [InsertHyperlink](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHyperlink-java.lang.String-java.lang.String-boolean) per inserire un collegamento ipertestuale nel documento. Questo metodo accetta tre parametri:

1. Testo del link da visualizzare nel documento
2. Destinazione del collegamento (URL o il nome di un segnalibro all'interno del documento)
3. Parametro booleano che dovrebbe essere true se `URL` è un nome di un segnalibro all'interno di un documento

Il metodo **InsertHyperlink** aggiunge sempre apostrofi all'inizio e alla fine di URL.

{{% alert color="primary" %}}

Si noti che è necessario specificare la formattazione del carattere per il testo visualizzato collegamento ipertestuale in modo esplicito utilizzando la proprietà `Font`.

{{% /alert %}}

L'esempio di codice seguente mostra come inserire un collegamento ipertestuale in un documento utilizzando [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Sostituire o modificare i collegamenti ipertestuali

Il collegamento ipertestuale nei documenti Microsoft Word è un campo. Un campo in un documento di Word, come abbiamo detto in precedenza, è una struttura complessa composta da più nodi che includono inizio campo, codice campo, separatore campo, risultato campo e fine campo. I campi possono essere annidati, contenere contenuti ricchi e spaziare più paragrafi o sezioni in un documento.

Per sostituire o modificare i collegamenti ipertestuali, è necessario trovare i collegamenti ipertestuali nel documento e sostituire il loro testo, URLs o entrambi.

L'esempio di codice seguente mostra come trovare tutti i collegamenti ipertestuali nel documento Word e cambia il loro `URL` e il nome visualizzato:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.java" >}}
