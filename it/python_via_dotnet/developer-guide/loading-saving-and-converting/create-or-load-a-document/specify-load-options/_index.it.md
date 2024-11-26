---
title: Specificare le opzioni di caricamento in Python
second_title: Aspose.Words per Python via .NET
articleTitle: Specificare le opzioni di caricamento
linktitle: Specificare le opzioni di caricamento
description: "Controlla in modo più accurato il processo di caricamento utilizzando Python."
type: docs
weight: 10
url: /it/python-net/specify-load-options/
timestamp: 2024-01-27-14-07-04
---

Quando carichi un documento, puoi impostare alcune proprietà avanzate. Aspose.Words fornisce la classe [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/), che consente un controllo più preciso del processo di caricamento. Alcuni formati di caricamento hanno una classe corrispondente che contiene le opzioni di caricamento per questo formato di caricamento, ad esempio c'è [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/) per il caricamento in formato PDF o [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) per il caricamento in TXT. Questo articolo fornisce esempi di utilizzo delle opzioni della classe [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/).

## Imposta la versione Microsoft Word per modificare l'aspetto

Versioni diverse dell'applicazione Microsoft Word possono visualizzare i documenti in modo diverso. Ad esempio, esiste un problema ben noto con i documenti OOXML come DOCX o DOTX prodotti utilizzando WPS Office. In tal caso, elementi essenziali di markup del documento potrebbero mancare o essere interpretati in modo diverso, facendo sì che Microsoft Word 2019 mostri tale documento in modo diverso rispetto a Microsoft Word 2010.

Per impostazione predefinita, Aspose.Words apre i documenti utilizzando le regole Microsoft Word 2019. Se è necessario far apparire il caricamento del documento come avveniva in una delle versioni precedenti dell'applicazione Microsoft Word, è necessario specificare esplicitamente la versione desiderata utilizzando la proprietà [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) della classe [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/).

Il seguente esempio di codice mostra come impostare la versione Microsoft Word con le opzioni di caricamento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-SetMSWordVersion.py" >}}

## Imposta le preferenze della lingua per modificare l'aspetto

I dettagli della visualizzazione di un documento in Microsoft Word dipendono non solo dalla versione dell'applicazione e dal valore della proprietà [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) ma anche dalle impostazioni della lingua. Microsoft Word potrebbe mostrare i documenti in modo diverso a seconda delle impostazioni della finestra di dialogo "Preferenze lingua di Office", che possono essere trovate in "File → Opzioni → Lingua". Utilizzando questa finestra di dialogo un utente può selezionare, ad esempio, la lingua principale, le lingue di correzione, le lingue di visualizzazione e così via. Aspose.Words fornisce la proprietà [language_preferences](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/language_preferences/) come equivalente di questa finestra di dialogo. Se l'output Aspose.Words è diverso dall'output Microsoft Word, imposta il valore appropriato per [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/): questo può migliorare il documento di output.

L'esempio di codice seguente mostra come impostare il giapponese come [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-AddJapaneseAsEditinglanguages.py" >}}

## Utilizzare TempFolder per evitare un'eccezione di memoria

Aspose.Words supporta documenti estremamente grandi con migliaia di pagine piene di contenuti ricchi. Il caricamento di tali documenti potrebbe richiedere molta RAM. Durante il processo di caricamento, Aspose.Words necessita di ancora più memoria per contenere strutture temporanee utilizzate per analizzare un documento.

Se riscontri un problema con l'eccezione Memoria esaurita durante il caricamento di un documento, prova a utilizzare la proprietà [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/). In questo caso, Aspose.Words memorizzerà alcuni dati in file temporanei anziché in memoria e questo può aiutare a evitare tale eccezione.

Il seguente esempio di codice mostra come impostare [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UseTempFolder.py" >}}

## Imposta la codifica in modo esplicito

La maggior parte dei formati di documenti moderni memorizzano il proprio contenuto in Unicode e non richiedono una gestione speciale. D'altra parte, ci sono ancora molti documenti che utilizzano una codifica pre-Unicode e talvolta mancano le informazioni di codifica o non supportano nemmeno le informazioni di codifica per natura. Aspose.Words tenta di rilevare automaticamente la codifica appropriata per impostazione predefinita, ma in rari casi potrebbe essere necessario utilizzare una codifica diversa da quella rilevata dal nostro algoritmo di riconoscimento della codifica. In questo caso, utilizza la proprietà [encoding](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/encoding/) per ottenere o impostare la codifica.

Il seguente esempio di codice mostra come impostare la codifica per sovrascrivere la codifica scelta automaticamente:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-LoadWithEncoding.py" >}}

## Carica documenti crittografati

Puoi caricare documenti Word crittografati con una password. Per fare ciò, utilizzare uno speciale sovraccarico del costruttore, che accetta un oggetto [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/). Questo oggetto contiene la proprietà [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/), che specifica la stringa della password.

Il seguente esempio di codice mostra come caricare un documento crittografato con una password:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-OpenEncryptedDocument.py" >}}

Se non si sa in anticipo se il file è crittografato, è possibile utilizzare la classe [FileFormatUtil](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/), che fornisce metodi di utilità per lavorare con i formati di file, come il rilevamento del formato di file o la conversione delle estensioni di file in/da enumerazioni di formati di file. Per rilevare se il documento è crittografato e richiede una password per aprirlo, utilizzare la proprietà [is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/).

Il seguente esempio di codice mostra come verificare che il documento sia crittografato o meno:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-VerifyEncryptedDocument.py" >}}
