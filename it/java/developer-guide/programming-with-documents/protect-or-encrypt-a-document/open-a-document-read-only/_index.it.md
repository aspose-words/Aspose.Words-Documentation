---
title: Aprire un documento Java
second_title: Aspose.Words per Java
articleTitle: Aprire un documento
linktitle: Aprire un documento
description: "Rendere il documento in sola lettura in modo che il contenuto possa essere copiato o letto, ma non modificato utilizzando Java."
type: docs
weight: 10
url: /it/java/open-a-document-read-only/
---

A volte, si può avere un documento che ha bisogno di una recensione, ma non si desidera che i recensori modifichino casualmente i contenuti. Aspose.Words consente di rendere il permesso del documento di sola lettura in modo che il contenuto possa essere copiato o letto, ma non modificato. Ciò impedirà che il contenuto venga rimosso o aggiunto al documento.

{{% alert color="primary" %}}

Applicare l'opzione di sola lettura al documento non impedisce a qualcuno di creare una nuova copia di esso e salvarlo con un altro nome.

{{% /alert %}}

Questo articolo spiega come fare un documento di sola lettura.

## Fare un documento solo

Aspose.Words ha la classe pubblica [WriteProtection](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/) che specifica le impostazioni di protezione della scrittura per un documento. Non si creano istanze di questa classe direttamente.

La protezione di scrittura mostra se l'autore ha raccomandato l'apertura di un documento come sola lettura e/o che richiede una password per modificare il documento.

Aspose.Words consente di fare un documento di sola lettura per limitare la modifica utilizzando [ReadOnlyRecommended](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#getReadOnlyRecommended) proprietà e [SetPassword](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#setPassword-java.lang.String) metodo.

{{% alert color="primary" %}}

In Microsoft Word, è possibile creare un documento Read-Only in modo simile utilizzando entrambi:

* "Sempre Open Read-Only" (File → Info → Proteggi Documento)
* "Password da modificare" (Salva come → Strumenti → Opzioni generali → Password)

{{% /alert %}}

{{% alert color="primary" %}}

Gli utenti possono anche limitare la modifica dei documenti selezionando [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) come **ReadOnly**, ma questa è un'altra caratteristica che fornisce capacità di protezione più avanzate. C'è una tale funzione in Microsoft Word, rispettivamente, è implementato in Aspose.Words.

**ProtectionType** sarà descritto in dettaglio in uno dei seguenti articoli – "Restrict Document Editing".

{{% /alert %}}

The **ReadOnlyRecommended** la proprietà è protetta da password, quindi se non si imposta una password prima di applicare **ReadOnlyRecommended** proprietà, quindi altri utenti possono semplicemente aprire il documento come se non fosse protetto. Accedere alle impostazioni di protezione del documento e impostare una password di protezione di scrittura tramite la **SetPassword** metodo.

{{% alert color="primary" %}}

Si noti che la password impostata è solo una proprietà in un documento che può essere rimosso se le proprietà del documento sono accessibili. Di conseguenza, tale password non è una garanzia della sicurezza del documento.

{{% /alert %}}

Se è necessario verificare se un documento ha una password di protezione di scrittura che lo limita dalla modifica, è possibile utilizzare [IsWriteProtected](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#isWriteProtected) proprieta'.

Il seguente esempio di codice mostra come fare un documento di sola lettura:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-ReadOnlyProtection.java" >}}

## Rimuovere la restrizione di lettura

Se non si desidera che un utente apra il documento come sola lettura, è possibile impostare semplicemente il **ReadOnlyRecommened** proprietà a *false* o selezionare **ProtectionType** come **NoProtection**.

Il seguente esempio di codice mostra come rimuovere l'accesso di sola lettura per un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveReadOnlyRestriction.java" >}}
