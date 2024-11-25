---
title: Opzioni e aspetto dei documenti Word
second_title: Aspose.Words per Java
articleTitle: Lavorare con le opzioni e l'aspetto dei documenti di Word
linktitle: Lavorare con le opzioni e l'aspetto dei documenti di Word
description: "Controlla l'aspetto dei documenti Word tenendo conto della differenza tra le varie versioni Microsoft Word usando Java."
type: docs
weight: 40
url: /it/java/work-with-word-document-options-and-appearance/
timestamp: 2024-01-27-14-07-04
---

A volte potrebbe essere necessario modificare l'aspetto di un documento, ad esempio impostare le preferenze di lingua o il numero di righe per pagina.Aspose.Words fornisce la possibilità di controllare come verrà visualizzato il documento, oltre ad alcune opzioni aggiuntive. Questo articolo descrive tali possibilità.

## Impostare le opzioni di visualizzazione del documento

È possibile controllare come verrà visualizzato un documento in Microsoft Word utilizzando la classe [ViewOptions](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/). Ad esempio, è possibile impostare un valore di zoom documento utilizzando la proprietà [ZoomPercent](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getZoomPercent) o la modalità di visualizzazione utilizzando la proprietà [ViewType](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getViewType).

L'esempio di codice seguente mostra come garantire che un documento venga visualizzato al 50% quando viene aperto in Microsoft Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetViewOptions-SetViewOptions.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file modello per questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/Document/TestFile.doc).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 non scrive alcun fattore di zoom in un documento e non imposta più lo zoom predefinito dal valore scritto nel documento, ma sembra utilizzare il fattore di zoom dell'ultimo documento aperto.

{{% /alert %}}

## Imposta le opzioni di visualizzazione della pagina

Se si desidera impostare il numero di caratteri per riga, utilizzare la proprietà [CharactersPerLine](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getCharactersPerLine). È anche possibile impostare il numero di righe per pagina per un documento Word: utilizzare la proprietà [LinesPerPage](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getLinesPerPage) per ottenere o impostare il numero di righe per pagina nella griglia del documento.

{{% alert color="primary" %}}

In Microsoft Word, è possibile impostare gli stessi parametri utilizzando la scheda "Griglia documento" nella finestra di dialogo "Imposta pagina" solo quando è installato il supporto per le lingue asiatiche.

{{% /alert %}}

L'esempio di codice seguente mostra come impostare il numero di caratteri per riga e il numero di righe per pagina per un documento Microsoft Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentPageSetup-DocumentPageSetup.java" >}}

## Impostare le preferenze di lingua

La visualizzazione di un documento in Microsoft Word dipende dalle lingue impostate come predefinite per questo documento. Se non sono impostate lingue predefinite, Microsoft Word prende informazioni dalla finestra di dialogo "Imposta preferenze lingua di Office", che, ad esempio, può essere trovata in "File → Opzioni → Lingua" in Microsoft Word 2019.

Con Aspose.Words, puoi anche impostare le preferenze di lingua usando la classe [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/languagepreferences/). Si noti inoltre che per la corretta visualizzazione del documento è necessario impostare la versione Microsoft Word che il processo di caricamento del documento deve corrispondere – questo può essere fatto utilizzando la proprietà [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion).

{{% alert color="primary" %}}

Se il documento generato da Aspose.Words non appare come previsto, controllare i valori **LanguagePreferences** e **MswVersion** e regolarli se necessario in modo che corrispondano alle impostazioni della versione Microsoft Word.

{{% /alert %}}

Il seguente esempio di codice mostra come aggiungere il giapponese alle lingue di modifica:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

Il seguente esempio di codice mostra come impostare il russo come lingua di modifica predefinita:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-SetRussianAsDefaultEditingLanguage.java" >}}

## Ottimizzare un documento per una particolare versione di Word

Il metodo [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) consente di ottimizzare il contenuto del documento, così come il comportamento predefinito Aspose.Words per una particolare versione di Microsoft Word. È possibile utilizzare questo metodo per impedire a Microsoft Word di visualizzare la barra multifunzione "Modalità compatibilità" durante il caricamento del documento. Si noti che potrebbe anche essere necessario impostare la proprietà `Compliance` su Iso29500_2008_Transitional o superiore.

L'esempio di codice seguente mostra come ottimizzare il contenuto del documento per Microsoft Word 2016:

{{< highlight csharp >}}
Document doc = new Document(dataDir + "Document.docx");

// Set Word2016 version for document
doc.getCompatibilityOptions().optimizeFor(MsWordVersion.WORD_2016);

// Save the document.
doc.save(dataDir + "output.docx");
{{< /highlight >}}
