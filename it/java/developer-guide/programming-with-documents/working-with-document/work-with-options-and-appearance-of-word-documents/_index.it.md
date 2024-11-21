---
title: Opzioni e apparizione di documenti di Word
second_title: Aspose.Words per Java
articleTitle: Lavorare con Opzioni e Aspetto dei Documenti di Word
linktitle: Lavorare con Opzioni e Aspetto dei Documenti di Word
description: "Controllare l'aspetto dei documenti di Word tenendo conto della differenza tra vari Microsoft Word versioni utilizzando Java."
type: docs
weight: 40
url: /it/java/work-with-word-document-options-and-appearance/
timestamp: 2024-01-27-14-07-04
---

A volte potrebbe essere necessario modificare l'aspetto di un documento, ad esempio, impostare preferenze di lingua o il numero di righe per pagina.Aspose.Words fornisce la capacità di controllare come verrà visualizzato il documento, così come alcune opzioni aggiuntive. Questo articolo descrive tali possibilità.

## Impostare le opzioni di visualizzazione del documento

È possibile controllare come verrà visualizzato un documento Microsoft Word usando [ViewOptions](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/) classe. Ad esempio, è possibile impostare un valore di zoom del documento utilizzando il [ZoomPercent](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getZoomPercent) proprietà, o la modalità di visualizzazione utilizzando la [ViewType](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getViewType) proprieta'.

Il seguente esempio di codice mostra come garantire che un documento venga visualizzato al 50% quando aperto Microsoft Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetViewOptions-SetViewOptions.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file template per questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/Document/TestFile.doc).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word Il 2013 non scrive alcun fattore di zoom a un documento e non imposta più lo zoom predefinito dal valore scritto al documento, invece, sembra utilizzare il fattore di zoom dell'ultimo documento aperto.

{{% /alert %}}

## Impostare le opzioni di visualizzazione pagina

Se si desidera impostare il numero di caratteri per linea, utilizzare il [CharactersPerLine](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getCharactersPerLine) proprieta'. È inoltre possibile impostare il numero di righe per pagina per un documento di Word – utilizzare il [LinesPerPage](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getLinesPerPage) proprietà per ottenere o impostare il numero di linee per pagina nella griglia del documento.

{{% alert color="primary" %}}

In Microsoft Word, è possibile impostare gli stessi parametri utilizzando la scheda "Document Grid" nella finestra di dialogo "Page Setup" solo quando il supporto della lingua asiatica è installato.

{{% /alert %}}

Il seguente esempio di codice mostra come impostare il numero di caratteri per linea e il numero di righe per pagina per un Microsoft Word documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentPageSetup-DocumentPageSetup.java" >}}

## Impostare le preferenze linguistiche

Visualizzazione di un documento in Microsoft Word dipende da quali lingue sono impostate come default per questo documento. Se nessuna lingua viene impostata in default, Microsoft Word prende informazioni dalla finestra di dialogo "Set Office Language Preferences", che, ad esempio, può essere trovato sotto "File → Opzioni → Lingua" in Microsoft Word 2019.

Con Aspose.Words, è anche possibile impostare le preferenze della lingua utilizzando [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/languagepreferences/) classe. Nota anche che per la corretta visualizzazione del documento è necessario impostare il Microsoft Word versione che il processo di caricamento del documento dovrebbe corrispondere – questo può essere fatto utilizzando [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) proprieta'.

{{% alert color="primary" %}}

Se il tuo Aspose.Words documento generato non sembra come previsto, controllare il **LanguagePreferences** e **MswVersion** valori e regolarli se necessario per abbinare le impostazioni per le tue Microsoft Word versione.

{{% /alert %}}

Il seguente esempio di codice mostra come aggiungere il giapponese alle lingue di editing:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

Il seguente esempio di codice mostra come impostare il russo come lingua di editing predefinito:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-SetRussianAsDefaultEditingLanguage.java" >}}

## Ottimizzare un documento per una particolare Versione di parola

The [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) metodo consente di ottimizzare il contenuto del documento, così come il default Aspose.Words comportamento per una particolare versione Microsoft Word. È possibile utilizzare questo metodo per prevenire Microsoft Word dalla visualizzazione del nastro "Modalità di compatibilità" al caricamento del documento. Nota che potrebbe anche essere necessario impostare il `Compliance` proprietà a Iso29500_2008_Transitional o superiore.

Il seguente esempio di codice mostra come ottimizzare i contenuti dei documenti per Microsoft Word 2016:

{{< highlight csharp >}}
Document doc = new Document(dataDir + "Document.docx");

// Set Word2016 version for document
doc.getCompatibilityOptions().optimizeFor(MsWordVersion.WORD_2016);

// Save the document.
doc.save(dataDir + "output.docx");
{{< /highlight >}}
