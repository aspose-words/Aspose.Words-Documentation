---
title: Lavorare con Hyperlinks in Java
second_title: Aspose.Words per Java
articleTitle: Aggiungi o modifica i collegamenti ipertestuali
linktitle: Aggiungi o modifica i collegamenti ipertestuali
description: "Come aggiungere un collegamento ipertestuale nel documento utilizzando Java."
type: docs
weight: 50
url: /it/java/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Un collegamento ipertestuale Microsoft Word i documenti sono `HYPERLINK` campo. In Aspose.Words, I collegamenti ipertestuali sono implementati attraverso i [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) classe.

## Inserisci un collegamento ipertestuale

Utilizzare [InsertHyperlink](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHyperlink-java.lang.String-java.lang.String-boolean) metodo per inserire un collegamento ipertestuale nel documento. Questo metodo accetta tre parametri:

1. Testo del link da visualizzare nel documento
2. Link destinazione (URL o un nome di un segnalibro all'interno del documento)
3. Parametro booleano che dovrebbe essere true se il `URL` è un nome di un segnalibro all'interno di un documento

The **InsertHyperlink** metodo aggiunge sempre gli apostrofi all'inizio e alla fine dell'URL

{{% alert color="primary" %}}

Si noti che è necessario specificare la formattazione del carattere per il testo del display del collegamento ipertestuale utilizzando esplicitamente il `Font` proprieta'.

{{% /alert %}}

Il seguente esempio di codice mostra come inserire un collegamento ipertestuale in un documento utilizzando [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Sostituire o modificare i collegamenti ipertestuali

Collegamenti ipertestuali Microsoft Word i documenti sono un campo. Un campo in un documento Word, come abbiamo detto in precedenza, è una struttura complessa costituita da nodi multipli che includono l'avvio del campo, il codice del campo, il separatore del campo, il risultato del campo e l'estremità del campo. I campi possono essere nidificati, contengono contenuti ricchi e abbracciano più paragrafi o sezioni in un documento.

Per sostituire o modificare i collegamenti ipertestuali, è necessario trovare i collegamenti ipertestuali nel documento e sostituire il loro testo, URL, o entrambi.

Il seguente esempio di codice mostra come trovare tutti i collegamenti ipertestuali nel documento di Word e cambia i loro `URL` e nome del display:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.java" >}}
