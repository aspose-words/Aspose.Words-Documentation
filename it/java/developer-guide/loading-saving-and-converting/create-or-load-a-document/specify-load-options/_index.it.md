---
title: Specificare le opzioni di carico in Java
second_title: Aspose.Words per Java
articleTitle: Specificare le opzioni di carico
linktitle: Specificare le opzioni di carico
description: "Impostare le proprietà avanzate quando si carica un documento utilizzando Java per ottenere un controllo più preciso del processo."
type: docs
weight: 10
url: /it/java/specify-load-options/
---

Quando si carica un documento, è possibile impostare alcune proprietà avanzate. Aspose.Words fornisce con il [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) classe, che consente un controllo più preciso del processo di carico. Alcuni formati di carico hanno una classe corrispondente che contiene opzioni di carico per questo formato di carico, ad esempio, c'è [PdfLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfloadoptions/) per il caricamento in formato PDF o [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) per il caricamento a TXT. Questo articolo fornisce esempi di lavoro con opzioni di **LoadOptions** classe.

## Set Microsoft Word Versione per cambiare l'apparenza

Varie versioni del Microsoft Word l'applicazione può visualizzare documenti in modo diverso. Ad esempio, c'è un problema ben noto con documenti OOXML come DOCX o DOTX prodotto con WPS Office. In tali casi, gli elementi essenziali di marcatura del documento possono essere mancanti o possono essere interpretati in modo diverso causando Microsoft Word 2019 per mostrare tale documento in modo diverso rispetto a Microsoft Word 2010.

Per impostazione predefinita Aspose.Words apre documenti utilizzando Microsoft Word Regole 2019. Se è necessario fare apparire il caricamento del documento come sarebbe accaduto in uno dei precedenti Microsoft Word versioni di applicazione, è necessario specificare esplicitamente la versione desiderata utilizzando la [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) proprietà della **LoadOptions** classe.

Il seguente esempio di codice mostra come impostare il Microsoft Word versione con opzioni di carico:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetMSWordVersion.java" >}}

## Impostare le preferenze linguistiche per modificare l'aspetto

I dettagli della visualizzazione di un documento in Microsoft Word dipende non solo dalla versione dell'applicazione e dalla **MswVersion** valore della proprietà ma anche sulle impostazioni della lingua. Microsoft Word può mostrare documenti in modo diverso a seconda delle impostazioni di dialogo "Preferenze di linguaggio di ufficio", che possono essere trovati in "File → Opzioni → Languаge". Utilizzando questa finestra di dialogo un utente può selezionare, ad esempio, la lingua primaria, le lingue di prova, le lingue di visualizzazione e così via. Aspose.Words fornisce [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getLanguagePreferences) proprietà come equivalente di questa finestra di dialogo. Se Aspose.Words uscita differisce da Microsoft Word output, impostare il valore appropriato per **EditingLanguage** – questo può migliorare il documento di uscita.

Il seguente esempio di codice mostra come impostare il giapponese come **EditingLanguage**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

## Uso WarningCallback per controllare i problemi Caricamento di un documento

Alcuni documenti possono essere corrotti, contengono voci non valide, o hanno caratteristiche non attualmente supportate da Aspose.Words. Se volete conoscere i problemi che si sono verificati durante il caricamento di un documento, Aspose.Words fornisce [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) interfaccia.

Il seguente esempio di codice mostra l'attuazione della **IWarningCallback** interfaccia:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-DocumentLoadingWarningCallback.java" >}}

Per ottenere informazioni su tutti i problemi durante il tempo di carico, utilizzare il [WarningCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getWarningCallback) proprieta'.

Il seguente esempio di codice mostra come utilizzare questa proprietà:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsWarningCallback.java" >}}

## Utilizzare Gestione risorse Callback per controllare il caricamento delle risorse esterne

Un documento può contenere collegamenti esterni alle immagini che si trovano da qualche parte su un disco locale, una rete o Internet. Aspose.Words carica automaticamente tali immagini in un documento, ma ci sono situazioni in cui questo processo deve essere controllato. Ad esempio, per decidere se davvero dobbiamo caricare una certa immagine o forse saltare. The [ResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getResourceLoadingCallback) opzione di carico consente di controllare questo.

Il seguente esempio di codice mostra l'attuazione della [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/) interfaccia:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-HtmlLinkedResourceLoadingCallback.java" >}}

Il seguente esempio di codice mostra come utilizzare **ResourceLoadingCallback** proprietà:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsResourceLoadingCallback.java" >}}

## Utilizzare TempFolder per evitare un'eccezione di memoria

Aspose.Words supporta documenti estremamente grandi che hanno migliaia di pagine piene di contenuti ricchi. Caricamento di tali documenti può richiedere molto RAM. Nel processo di carico, Aspose.Words ha bisogno di ancora più memoria per contenere strutture temporanee utilizzate per analizzare un documento.

Se hai un problema con l'eccezione Out of Memory durante il caricamento di un documento, prova a usare il [TempFolder](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getTempFolder) proprieta'. In questo caso, Aspose.Words memorizzare alcuni dati in file temporanei invece di memoria, e questo può aiutare a evitare tale eccezione.

Il seguente esempio di codice mostra come impostare **TempFolder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetTempFolder.java" >}}

## Impostare la codifica in modo esplicito

La maggior parte dei formati di documenti moderni memorizzano i loro contenuti in Unicode e non richiedono una gestione speciale. D'altra parte, ci sono ancora molti documenti che utilizzano una codifica pre-Unicode e a volte mancano informazioni di codifica o non supportano nemmeno la codifica delle informazioni per natura. Aspose.Words tenta di rilevare automaticamente la codifica appropriata per impostazione predefinita, ma in un caso raro potrebbe essere necessario utilizzare una codifica diversa da quella rilevata dal nostro algoritmo di riconoscimento codifica. In questo caso, utilizzare [Encoding](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getEncoding) proprietà per ottenere o impostare la codifica.

Il seguente esempio di codice mostra come impostare la codifica per sovrascrivere la codifica scelta automaticamente:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadOptionsEncoding.java" >}}

## Carica documenti crittografati

È possibile caricare Documenti di Word crittografati con una password. Per fare questo, utilizzare un sovraccarico costruttore speciale, che accetta un [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) oggetto. Questo oggetto contiene [Password](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPassword) proprietà, che specifica la stringa di password.

Il seguente esempio di codice mostra come caricare un documento crittografato con una password:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenEncryptedDocument.java" >}}

Se non si sa in anticipo se il file è crittografato, è possibile utilizzare il [FileFormatUtil](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/) classe, che fornisce i metodi di utilità per lavorare con formati di file, come ad esempio rilevare il formato di file o convertire le estensioni di file a/da formato di file enumerations. Per rilevare se il documento è crittografato e richiede una password per aprirlo, utilizzare [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted) proprieta'.

Il seguente esempio di codice mostra come verificare OpenDocument sia che sia crittografato o meno:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-VerifyODTdocument.java" >}}
