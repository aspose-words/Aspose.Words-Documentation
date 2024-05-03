---
title: Documento di restrizione Modifica Java
second_title: Aspose.Words per Java
articleTitle: Restrict Document Editing
linktitle: Restrict Document Editing
description: "Limitare la modifica di un documento impostando un tipo di restrizione. È inoltre possibile rimuovere la protezione e rendere le regioni modificabili senza restrizioni utilizzando Java."
type: docs
weight: 30
url: /it/java/restrict-document-editing/
---

A volte è necessario limitare la capacità di modificare un documento e consentire solo determinate azioni con esso. Questo può essere utile per impedire ad altre persone di modificare informazioni riservate e sensibili nel documento.

Aspose.Words consente di limitare la modifica di un documento impostando un tipo di restrizione. Inoltre, Aspose.Words consente inoltre di specificare le impostazioni di protezione della scrittura per un documento.

Questo articolo spiega come utilizzare Aspose.Words selezionare un tipo di restrizione, come aggiungere o rimuovere la protezione, e come rendere le regioni modificabili senza restrizioni.

## Selezionare Modifica Tipo di restrizione

Aspose.Words consente di controllare il modo in cui si limita il contenuto utilizzando il [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) parametro enumeration. Questo vi permetterà di selezionare un tipo esatto di protezione come il seguente:

* Consentire soloCommenti
* Consentire solo i campioni
* Consentire solo revisioni
* ReadOnly
* NoProtezione

Tutti i tipi sono protetti da password, e se questa password non viene inserita correttamente, un utente non sarà in grado di modificare legalmente il contenuto del documento. Così, se il documento viene restituito a voi senza un requisito di fornire la password necessaria, questo è un segno che qualcosa è sbagliato.

Se non hai impostato una password quando si sceglie il tipo di sicurezza, altri utenti possono semplicemente ignorare la protezione del documento.

{{% alert color="primary" %}}

Si noti che la password impostata è solo una proprietà in un documento che può essere rimosso se le proprietà del documento sono accessibili. Di conseguenza, tale password non è una garanzia della sicurezza del documento. The [Unprotect](https://reference.aspose.com/words/java/com.aspose.words/document/#unprotect) il metodo mostra solo questo.

{{% /alert %}}

## Aggiungi protezione dei documenti

L'aggiunta di protezione al vostro documento è un processo semplice, in quanto tutto ciò che dovete fare è applicare uno dei metodi di protezione dettagliati in questa sezione.

Aspose.Words consente di proteggere i documenti dalle modifiche utilizzando il [Protect](https://reference.aspose.com/words/java/com.aspose.words/document/#protect-int) metodo. Questo metodo non è una funzione di sicurezza e non crittografa un documento.

{{% alert color="primary" %}}

In Microsoft Word, è possibile limitare la modifica in modo simile utilizzando entrambi:

* Restrict Editing (File → Info → Proteggi Documento)
* Funzione alternativa – "Restrict Editing" (Review → Protect → Restrict Editing)

{{% /alert %}}

Il seguente esempio di codice mostra come aggiungere la protezione della password al documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-PasswordProtection.java" >}}

Il seguente esempio di codice mostra come limitare la modifica in un documento in modo che solo la modifica in campi di forma è possibile:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-AllowOnlyFormFieldsProtect.java" >}}

## Rimuovi la protezione dei documenti

Aspose.Words consente di rimuovere la protezione da un documento con modifica semplice e diretta del documento. È possibile rimuovere la protezione del documento senza conoscere la password reale o fornire la password corretta per sbloccare il documento utilizzando [Unprotect](https://reference.aspose.com/words/java/com.aspose.words/document/#unprotect) metodo. Entrambi i modi di rimuovere non hanno alcuna differenza.

Il seguente esempio di codice mostra come rimuovere la protezione dal documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveDocumentProtection.java" >}}

## Specificare Regioni Modificabili Non Limitate

È possibile limitare la modifica del documento e allo stesso tempo consentire modifiche a parti selezionate di esso. Quindi, chiunque apra il tuo documento sarà in grado di accedere a queste parti senza restrizioni e apportare modifiche al contenuto.

Aspose.Words consente di contrassegnare le parti che possono essere modificate nel documento utilizzando il [StartEditableRange](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startEditableRange) e [EndEditableRange](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endEditableRange) metodi.

Il seguente esempio di codice mostra come contrassegnare l'intero documento come sola lettura e specificare le regioni modificabili in esso:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-UnrestrictedEditableRegions.java" >}}

È inoltre possibile scegliere diverse restrizioni di modifica dei documenti per diverse sezioni.

Il seguente esempio di codice mostra come aggiungere una restrizione per l'intero documento, e quindi rimuovere la restrizione per una delle sezioni:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-UnrestrictedSection.java" >}}
