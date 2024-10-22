---
title: Specificare le opzioni di caricamento in C++
second_title: Aspose.Words per C++
articleTitle: Specificare le opzioni di caricamento
linktitle: Specificare le opzioni di caricamento
description: "Controllare più accuratamente il processo di carico."
type: docs
weight: 10
url: /it/cpp/specify-load-options/
---

Quando si carica un documento, è possibile impostare alcune proprietà avanzate. Aspose.Words fornisce la classe [LoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/), che consente un controllo più preciso del processo di carico. Alcuni formati di caricamento hanno una classe corrispondente che contiene le opzioni di caricamento per questo formato di caricamento, ad esempio, c'è [PdfLoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/pdfloadoptions/) per il caricamento in formato PDF o [TxtLoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/) per il caricamento in TXT. Questo articolo fornisce esempi di utilizzo delle opzioni della classe **LoadOptions**.

## Imposta la versione Microsoft Word per modificare l'aspetto

Diverse versioni dell'applicazione Microsoft Word possono visualizzare i documenti indifferentemente. Ad esempio, c'è un problema ben noto con documenti OOXML come DOCX o DOTX prodotti utilizzando WPS Office. In tal caso, gli elementi essenziali di markup del documento potrebbero mancare o essere interpretati in modo diverso, facendo sì che Microsoft Word 2019 mostri tale documento in modo diverso rispetto a Microsoft Word 2010.

Per impostazione predefinita Aspose.Words apre i documenti utilizzando le regole Microsoft Word 2019. Se è necessario far apparire il caricamento del documento come accadrebbe in una delle precedenti versioni dell'applicazione Microsoft Word, è necessario specificare esplicitamente la versione desiderata utilizzando la proprietà [MswVersion](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_mswversion/) della classe **LoadOptions**.

L'esempio di codice seguente mostra come impostare la versione Microsoft Word con le opzioni di caricamento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-SetMSWordVersion.cpp" >}}

## Impostare le preferenze di lingua per modificare l'aspetto

I dettagli della visualizzazione di un documento in Microsoft Word dipendono non solo dalla versione dell'applicazione e dal valore della proprietà **MswVersion**, ma anche dalle impostazioni della lingua. Microsoft Word può mostrare i documenti in modo diverso a seconda delle impostazioni della finestra di dialogo "Preferenze lingua di Office", che si trovano in"File → Opzioni → Lingua". Utilizzando questa finestra di dialogo, un utente può selezionare, ad esempio, la lingua principale, le lingue di correzione, le lingue di visualizzazione e così via. Aspose.Words fornisce la proprietà [LanguagePreferences](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_languagepreferences/) come equivalente di questa finestra di dialogo. Se l'output Aspose.Words differisce dall'output Microsoft Word, impostare il valore appropriato per **EditingLanguage** – questo può migliorare il documento di output.

Il seguente esempio di codice mostra come impostare il giapponese come **EditingLanguage**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cpp" >}}

## Utilizzare WarningCallback per controllare i problemi durante il caricamento di un documento

Alcuni documenti potrebbero essere danneggiati, contenere voci non valide o avere funzionalità non attualmente supportate da Aspose.Words. Se si desidera conoscere i problemi che si sono verificati durante il caricamento di un documento, Aspose.Words fornisce l'interfaccia [IWarningCallback](https://reference.aspose.com/words/cpp/aspose.words/iwarningcallback/).

Il seguente esempio di codice mostra l'implementazione dell'interfaccia **IWarningCallback**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-DocumentLoadingWarningCallback.cpp" >}}

Per ottenere informazioni su tutti i problemi durante il tempo di caricamento, utilizzare la proprietà `WarningCallback`.

Il seguente esempio di codice mostra come utilizzare questa proprietà:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsWarningCallback.cpp" >}}

## Utilizzare ResourceLoadingCallback per controllare il caricamento delle risorse esterne

Un documento può contenere collegamenti esterni a immagini che si trovano da qualche parte su un disco locale, rete o Internet. Aspose.Words carica automaticamente tali immagini in un documento, ma ci sono situazioni in cui questo processo deve essere controllato. Ad esempio, per decidere se abbiamo davvero bisogno di caricare una certa immagine o forse saltarla. L'opzione ResourceLoadingCallback load consente di controllare questo.

Il seguente esempio di codice mostra l'implementazione dell'interfaccia IResourceLoadingCallback:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-HtmlLinkedResourceLoadingCallback.cpp" >}}

L'esempio di codice seguente mostra come utilizzare la proprietà **ResourceLoadingCallback**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsResourceLoadingCallback.cpp" >}}

## Utilizzare TempFolder per evitare un'eccezione di memoria

Aspose.Words supporta documenti estremamente grandi con migliaia di pagine piene di contenuti ricchi. Il caricamento di tali documenti potrebbe richiedere molta RAM. Nel processo di caricamento, Aspose.Words ha bisogno di ancora più memoria per contenere le strutture temporanee utilizzate per analizzare un documento.

Se si verifica un problema con l'eccezione di memoria esaurita durante il caricamento di un documento, provare a utilizzare la proprietà [TempFolder](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_tempfolder/). In questo caso, Aspose.Words memorizzerà alcuni dati in file temporanei anziché in memoria, e questo può aiutare a evitare tale eccezione.

Il seguente esempio di codice mostra come impostare **TempFolder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-SetTempFolder.cpp" >}}

## Imposta la codifica in modo esplicito

La maggior parte dei formati di documenti moderni memorizzano il loro contenuto in Unicode e non richiedono una gestione speciale. D'altra parte, ci sono ancora molti documenti che utilizzano una codifica pre-Unicode e talvolta mancano le informazioni di codifica o non supportano nemmeno le informazioni di codifica per natura. Aspose.Words tenta di rilevare automaticamente la codifica appropriata per impostazione predefinita, ma in un raro caso potrebbe essere necessario utilizzare una codifica diversa da quella rilevata dal nostro algoritmo di riconoscimento della codifica. In questo caso, utilizzare la proprietà [Encoding](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_encoding/) per ottenere o impostare la codifica.

Il seguente esempio di codice mostra come impostare la codifica per sovrascrivere la codifica scelta automaticamente:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsEncoding.cpp" >}}

## Carica documenti crittografati

È possibile caricare documenti Word crittografati con una password. Per fare ciò, utilizzare un sovraccarico del costruttore speciale, che accetta un oggetto [LoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/). Questo oggetto contiene la proprietà [Password](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_password/), che specifica la stringa della password.

Il seguente esempio di codice mostra come caricare un documento crittografato con una password:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-OpenEncryptedDocument-OpenEncryptedDocument.cpp" >}}

Se non si sa in anticipo se il file è crittografato, è possibile utilizzare la classe [FileFormatUtil](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/), che fornisce metodi di utilità per lavorare con i formati dei file, ad esempio il rilevamento del formato dei file o la conversione di estensioni di file in/dalle enumerazioni del formato dei file. Per rilevare se il documento è crittografato e richiede una password per aprirlo, utilizzare la proprietà `IsEncrypted`.

L'esempio di codice seguente mostra come verificare che OpenDocument sia crittografato o meno:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-VerifyODTdocument.cpp" >}}
