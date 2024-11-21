---
title: Specificare le opzioni di caricamento in C#
second_title: Aspose.Words per .NET
articleTitle: Specificare le opzioni di caricamento
linktitle: Specificare le opzioni di caricamento
description: "Controlla in modo più accurato il processo di caricamento utilizzando C#."
type: docs
weight: 10
url: /it/net/specify-load-options/
timestamp: 2024-07-09-19-00-42
---

Quando carichi un documento, puoi impostare alcune proprietà avanzate. Aspose.Words fornisce la classe [LoadOptions](https://reference.aspose.com/words/it/net/aspose.words.loading/loadoptions/), che consente un controllo più preciso del processo di caricamento. Alcuni formati di caricamento hanno una classe corrispondente che contiene le opzioni di caricamento per questo formato di caricamento, ad esempio c'è [PdfLoadOptions](https://reference.aspose.com/words/it/net/aspose.words.loading/pdfloadoptions/) per il caricamento in formato PDF o [TxtLoadOptions](https://reference.aspose.com/words/it/net/aspose.words.loading/txtloadoptions/) per il caricamento in TXT. Questo articolo fornisce esempi di utilizzo delle opzioni della classe **LoadOptions**.

## Imposta la versione Microsoft Word per modificare l'aspetto

Versioni diverse dell'applicazione Microsoft Word possono visualizzare i documenti in modo diverso. Ad esempio, esiste un problema ben noto con i documenti OOXML come DOCX o DOTX prodotti utilizzando WPS Office. In tal caso, elementi essenziali di markup del documento potrebbero mancare o essere interpretati in modo diverso, facendo sì che Microsoft Word 2019 mostri tale documento in modo diverso rispetto a Microsoft Word 2010.

Per impostazione predefinita, Aspose.Words apre i documenti utilizzando le regole Microsoft Word 2019. Se è necessario far apparire il caricamento del documento come avveniva in una delle versioni precedenti dell'applicazione Microsoft Word, è necessario specificare esplicitamente la versione desiderata utilizzando la proprietà [MswVersion](https://reference.aspose.com/words/it/net/aspose.words.loading/loadoptions/mswversion/) della classe **LoadOptions**.

Il seguente esempio di codice mostra come impostare la versione Microsoft Word con le opzioni di caricamento:

{{< gist "aspose-words-gists" "62b066455ff6af0e8727e3fddae47aee" "load-docx-with-msword-version.cs" >}}

## Imposta le preferenze della lingua per modificare l'aspetto

I dettagli della visualizzazione di un documento in Microsoft Word dipendono non solo dalla versione dell'applicazione e dal valore della proprietà **MswVersion** ma anche dalle impostazioni della lingua. Microsoft Word potrebbe mostrare i documenti in modo diverso a seconda delle impostazioni della finestra di dialogo "Preferenze lingua di Office", che possono essere trovate in "File → Opzioni → Lingua". Utilizzando questa finestra di dialogo un utente può selezionare, ad esempio, la lingua principale, le lingue di correzione, le lingue di visualizzazione e così via. Aspose.Words fornisce la proprietà [LanguagePreferences](https://reference.aspose.com/words/it/net/aspose.words.loading/languagepreferences/) come equivalente di questa finestra di dialogo. Se l'output Aspose.Words è diverso dall'output Microsoft Word, imposta il valore appropriato per **EditingLanguage**: questo può migliorare il documento di output.

L'esempio di codice seguente mostra come impostare il giapponese come **EditingLanguage**:

{{< gist "aspose-words-gists" "5d49772a182a61eac0dcb9c13c98bc6e" "load-docx-with-japanese-as-editing-language.cs" >}}

## Utilizza WarningCallback per controllare i problemi durante il caricamento di un documento

Alcuni documenti potrebbero essere danneggiati, contenere voci non valide o avere funzionalità non attualmente supportate da Aspose.Words. Se vuoi conoscere i problemi che si sono verificati durante il caricamento di un documento, Aspose.Words fornisce l'interfaccia [IWarningCallback](https://reference.aspose.com/words/it/net/aspose.words/iwarningcallback/).

Il seguente esempio di codice mostra l'implementazione dell'interfaccia **IWarningCallback**:

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "document-loading-warning-callback.cs" >}}

Per ottenere informazioni su tutti i problemi durante il tempo di caricamento, utilizzare la proprietà [WarningCallback](https://reference.aspose.com/words/it/net/aspose.words.loading/loadoptions/warningcallback/).

L'esempio di codice seguente mostra come utilizzare questa proprietà:

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "load-docx-with-warning-callback.cs" >}}

## Utilizzare ResourceLoadingCallback per controllare il caricamento delle risorse esterne

Un documento può contenere collegamenti esterni a immagini situate da qualche parte su un disco locale, una rete o Internet. Aspose.Words carica automaticamente tali immagini in un documento, ma ci sono situazioni in cui questo processo deve essere controllato. Ad esempio, per decidere se dobbiamo davvero caricare una determinata immagine o magari saltarla. L'opzione di caricamento [ResourceLoadingCallback](https://reference.aspose.com/words/it/net/aspose.words.loading/loadoptions/resourceloadingcallback/) ti consente di controllarlo.

Il seguente esempio di codice mostra l'implementazione dell'interfaccia [IResourceLoadingCallback](https://reference.aspose.com/words/it/net/aspose.words.loading/iresourceloadingcallback/):

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "html-linked-resource-loading-callback.cs" >}}

L'esempio di codice seguente mostra come utilizzare la proprietà **ResourceLoadingCallback**:

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "load-html-with-resource-loading-callback.cs" >}}

## Utilizzare TempFolder per evitare un'eccezione di memoria

Aspose.Words supporta documenti estremamente grandi con migliaia di pagine piene di contenuti ricchi. Il caricamento di tali documenti potrebbe richiedere molta RAM. Durante il processo di caricamento, Aspose.Words necessita di ancora più memoria per contenere strutture temporanee utilizzate per analizzare un documento.

Se riscontri un problema con l'eccezione Memoria esaurita durante il caricamento di un documento, prova a utilizzare la proprietà [TempFolder](https://reference.aspose.com/words/it/net/aspose.words.loading/loadoptions/tempfolder/). In questo caso, Aspose.Words memorizzerà alcuni dati in file temporanei anziché in memoria e questo può aiutare a evitare tale eccezione.

Il seguente esempio di codice mostra come impostare **TempFolder**:

{{< gist "aspose-words-gists" "80fb635124a6afc0e75b9f17d1eab40c" "load-docx-using-temp-folder.cs" >}}

## Imposta la codifica in modo esplicito

La maggior parte dei formati di documenti moderni memorizzano il proprio contenuto in Unicode e non richiedono una gestione speciale. D'altra parte, ci sono ancora molti documenti che utilizzano una codifica pre-Unicode e talvolta mancano le informazioni di codifica o non supportano nemmeno le informazioni di codifica per natura. Aspose.Words tenta di rilevare automaticamente la codifica appropriata per impostazione predefinita, ma in rari casi potrebbe essere necessario utilizzare una codifica diversa da quella rilevata dal nostro algoritmo di riconoscimento della codifica. In questo caso, utilizza la proprietà [Encoding](https://reference.aspose.com/words/it/net/aspose.words.loading/loadoptions/encoding/) per ottenere o impostare la codifica.

Il seguente esempio di codice mostra come impostare la codifica per sovrascrivere la codifica scelta automaticamente:

{{< gist "aspose-words-gists" "507181f2c99ba13012c441f1c436d9a7" "load-txt-using-encoding.cs" >}}

## Carica documenti crittografati

Puoi caricare documenti Word crittografati con una password. Per fare ciò, utilizzare uno speciale sovraccarico del costruttore, che accetta un oggetto [LoadOptions](https://reference.aspose.com/words/it/net/aspose.words.loading/loadoptions/). Questo oggetto contiene la proprietà [Password](https://reference.aspose.com/words/it/net/aspose.words.loading/loadoptions/password/), che specifica la stringa della password.

Il seguente esempio di codice mostra come caricare un documento crittografato con una password:

{{< gist "aspose-words-gists" "5b929b4208996737657de94443bc2852" "load-encrypted-docx.cs" >}}

Se non si sa in anticipo se il file è crittografato, è possibile utilizzare la classe [FileFormatUtil](https://reference.aspose.com/words/it/net/aspose.words/fileformatutil/), che fornisce metodi di utilità per lavorare con i formati di file, come il rilevamento del formato di file o la conversione delle estensioni di file in/da enumerazioni di formati di file. Per rilevare se il documento è crittografato e richiede una password per aprirlo, utilizzare la proprietà [IsEncrypted](https://reference.aspose.com/words/it/net/aspose.words/fileformatinfo/isencrypted/).

Il seguente esempio di codice mostra come verificare che OpenDocument sia crittografato o meno:

{{< gist "aspose-words-gists" "935e41f0f59c7d8bd8a082ccc14f6b84" "verify-odt-is-encrypted.cs" >}}
