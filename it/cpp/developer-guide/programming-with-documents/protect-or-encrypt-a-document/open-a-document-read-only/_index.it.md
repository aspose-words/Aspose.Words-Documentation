---
title: Aprire un documento di sola lettura in C++
second_title: Aspose.Words per C++
articleTitle: Aprire un documento di sola lettura
linktitle: Aprire un documento di sola lettura
description: "Rendi il documento di sola lettura in modo che il contenuto possa essere copiato o letto, ma non modificato."
type: docs
weight: 10
url: /it/cpp/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

A volte, potresti avere un documento che necessita di una revisione, ma non vuoi che i revisori modifichino in modo casuale il tuo contenuto. Aspose.Words consente di rendere l'autorizzazione del documento di sola lettura in modo che il contenuto possa essere copiato o letto, ma non modificato. Ciò impedirà che il contenuto venga rimosso o aggiunto al documento.

{{% alert color="primary" %}}

L'applicazione dell'opzione di sola lettura al documento non impedisce a qualcuno di crearne una nuova copia e salvarla con un altro nome.

{{% /alert %}}

Questo articolo spiega come rendere un documento di sola lettura.

## Crea un documento di sola lettura

Aspose.Words ha la classe public [WriteProtection](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/) che specifica le impostazioni di protezione in scrittura per un documento. Non si creano istanze di questa classe direttamente.

La protezione in scrittura indica se l'autore ha raccomandato l'apertura di un documento in sola lettura e/o la necessità di una password per modificare il documento.

Aspose.Words consente di rendere un documento di sola lettura per limitare la modifica utilizzando la proprietà [ReadOnlyRecommended](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/get_readonlyrecommended/) e il metodo [SetPassword](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/setpassword/).

{{% alert color="primary" %}}

In Microsoft Word, è possibile creare un documento di sola lettura in modo simile utilizzando entrambi:

* "Sempre aperto di sola lettura" (File → Info → Proteggi documento)
* "Password da modificare" (Salva come → Strumenti → Opzioni generali → Password)

{{% /alert %}}

{{% alert color="primary" %}}

Gli utenti possono anche limitare la modifica dei documenti selezionando [ProtectionType](https://reference.aspose.com/words/cpp/aspose.words/protectiontype/) come **ReadOnly**, ma questa è un'altra funzionalità che fornisce funzionalità di protezione più avanzate. C'è una tale funzione in Microsoft Word, rispettivamente, è implementata in Aspose.Words.

**ProtectionType**

{{% /alert %}}

La proprietà **ReadOnlyRecommended** è protetta da password, quindi se non si imposta una password prima di applicare la proprietà **ReadOnlyRecommended**, gli altri utenti possono semplicemente aprire il documento come se non fosse protetto. È possibile accedere alle impostazioni di protezione del documento e impostare una password di protezione in scrittura tramite il metodo **SetPassword**.

{{% alert color="primary" %}}

Si noti che la password impostata è solo una proprietà in un documento che può essere rimossa se si accede alle proprietà del documento. Di conseguenza, tale password non è una garanzia della sicurezza del documento.

{{% /alert %}}

Se è necessario verificare se un documento dispone di una password di protezione in scrittura che ne limita la modifica, è possibile utilizzare la proprietà [IsWriteProtected](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/get_iswriteprotected/).

Il seguente esempio di codice mostra come rendere un documento di sola lettura:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-ReadOnlyProtection.h" >}}

## Rimuovere la restrizione di sola lettura

Se non si desidera che un utente apra il documento in sola lettura, è sufficiente impostare la proprietà **ReadOnlyRecommened** su *false* o selezionare **ProtectionType** come **NoProtection**.

L'esempio di codice seguente mostra come rimuovere l'accesso di sola lettura per un documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveReadOnlyRestriction.h" >}}
