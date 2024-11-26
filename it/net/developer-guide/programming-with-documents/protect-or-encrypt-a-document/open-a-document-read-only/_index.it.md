---
title: Apri un documento di sola lettura in C#
second_title: Aspose.Words per .NET
articleTitle: Apri un documento di sola lettura
linktitle: Apri un documento di sola lettura
description: "Rendi il tuo documento di sola lettura in modo che il contenuto possa essere copiato o letto, ma non modificato utilizzando C#."
type: docs
weight: 10
url: /it/net/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

A volte, potresti avere un documento che necessita di una revisione, ma non vuoi che i revisori modifichino i tuoi contenuti in modo casuale. Aspose.Words ti consente di rendere l'autorizzazione del tuo documento di sola lettura in modo che il contenuto possa essere copiato o letto, ma non modificato. Ciò impedirà che il contenuto venga rimosso o aggiunto al documento.

{{% alert color="primary" %}}

Applicare l'opzione di sola lettura al tuo documento non impedisce a qualcuno di crearne una nuova copia e salvarla con un altro nome.

{{% /alert %}}

Questo articolo spiega come rendere un documento di sola lettura.

## Rendere un documento di sola lettura

Aspose.Words ha la classe pubblica [WriteProtection](https://reference.aspose.com/words/it/net/aspose.words.settings/writeprotection/) che specifica le impostazioni di protezione da scrittura per un documento. Non crei direttamente istanze di questa classe.

La protezione da scrittura mostra se l'autore ha consigliato di aprire un documento in sola lettura e/o di richiedere una password per modificare il documento.

Aspose.Words consente di rendere un documento di sola lettura per limitare la modifica utilizzando la proprietà [ReadOnlyRecommended](https://reference.aspose.com/words/it/net/aspose.words.settings/writeprotection/readonlyrecommended/) e il metodo [SetPassword](https://reference.aspose.com/words/it/net/aspose.words.settings/writeprotection/setpassword/).

{{% alert color="primary" %}}

In Microsoft Word, puoi creare un documento di sola lettura in modo simile utilizzando entrambi:

* "Apri sempre in sola lettura" (File → Informazioni → Proteggi documento)
* "Password da modificare" (Salva con nome → Strumenti → Opzioni generali → Password)

{{% /alert %}}

{{% alert color="primary" %}}

Gli utenti possono anche limitare la modifica dei documenti selezionando [ProtectionType](https://reference.aspose.com/words/it/net/aspose.words/protectiontype/) come **ReadOnly**, ma questa è un'altra funzionalità che fornisce funzionalità di protezione più avanzate. Esiste una tale funzione in Microsoft Word, rispettivamente, è implementata in Aspose.Words.

**ProtectionType** sarà descritto in dettaglio in uno dei seguenti articoli – "Limita la modifica dei documenti".

{{% /alert %}}

La proprietà **ReadOnlyRecommended** è protetta da password, quindi se non imposti una password prima di applicare la proprietà **ReadOnlyRecommended**, gli altri utenti potranno semplicemente aprire il documento come se non fosse protetto. Si accede alle impostazioni di protezione del documento e si imposta una password di protezione da scrittura tramite il metodo **SetPassword**.

{{% alert color="primary" %}}

Tieni presente che la password impostata è semplicemente una proprietà in un documento che può essere rimossa se si accede alle proprietà del documento. Di conseguenza, tale password non è una garanzia della sicurezza del documento.

{{% /alert %}}

Se devi verificare se un documento ha una password di protezione da scrittura che ne impedisce la modifica, puoi utilizzare la proprietà [IsWriteProtected](https://reference.aspose.com/words/it/net/aspose.words.settings/writeprotection/iswriteprotected/).

L'esempio di codice seguente mostra come rendere un documento di sola lettura:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-ReadOnlyProtection.cs" >}}

## Rimuovi la restrizione di sola lettura

Se non desideri che un utente apra il tuo documento in sola lettura, puoi semplicemente impostare la proprietà **ReadOnlyRecommened** su *false* o selezionare **ProtectionType** come **NoProtection**.

L'esempio di codice seguente mostra come rimuovere l'accesso di sola lettura per un documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveReadOnlyRestriction.cs" >}}
