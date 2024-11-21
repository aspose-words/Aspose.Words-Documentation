---
title: Convertire un documento in HTML, MHTML o EPUB
second_title: Aspose.Words per Java
articleTitle: Convertire un documento in HTML, MHTML o EPUB
linktitle: Convertire un documento in HTML, MHTML o EPUB
description: "Uso Aspose.Words per Java convertire documenti da Word o altri formati supportati in HTML, MHTML o EPUB."
type: docs
weight: 20
url: /it/java/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-10-21-08-52-03
---

I documenti in formato HTML e MHTML sono anche molto popolari e possono essere utilizzati su qualsiasi piattaforma web. Per questo motivo, convertire i documenti in HTML e MHTML è una caratteristica importante di Aspose.Words.

EPUB (breve per "pubblicazione elettronica") è un formato basato su HTML comunemente usato per la distribuzione di libri elettronici. Questo formato è completamente supportato in Aspose.Words per esportare libri elettronici compatibili con la maggior parte dei dispositivi di lettura.

## Convertire un documento

Per una semplice conversione in HTML, MHTML o EPUB, uno dei [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) i sovraccarichi metodo viene utilizzato. È possibile salvare il documento in un file o in streaming e impostare esplicitamente il formato di salvataggio del documento di uscita o definirlo dall'estensione del nome del file.

L'esempio seguente mostra come convertire DOCX in HTML specificando un formato di salvataggio:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocxToHtml.java" >}}

Per convertire un documento in MHTML o EPUB, utilizzare `SaveFormat.MHTML` o `SaveFormat.EPUB` rispettivamente.

## Convertire un documento con informazioni di andata e ritorno

Il formato HTML non supporta molti Microsoft Word caratteristiche, e se abbiamo bisogno di ripristinare un modello di documento il più vicino possibile all'originale, dobbiamo salvare alcune informazioni extra all'interno del file HTML. Tali informazioni sono anche chiamate "informazioni di andata e ritorno". Con questo scopo, Aspose.Words fornisce la possibilità di esportare informazioni di andata e ritorno durante il salvataggio in HTML, MHTML o EPUB utilizzando [ExportRoundtripInformation](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportRoundtripInformation) proprieta'. Salvare le informazioni di andata e ritorno consente di ripristinare le proprietà dei documenti come schede, commenti, intestazioni e piè di pagina durante i documenti di caricamento dei formati elencati di nuovo in un **Document** oggetto.

Il valore predefinito è **true** per HTML e **false** per MHTML e EPUB:

- Quando? **true**, le informazioni di andata e ritorno vengono esportate come - aw - * Proprietà CSS degli elementi HTML corrispondenti
- Quando? **false**, non c'è alcuna informazione di andata e ritorno per essere prodotta in file prodotti

Il seguente esempio di codice mostra come esportare informazioni di andata e ritorno durante la conversione di un documento da DOCX in HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToHtmlWithRoundtrip.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file template di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Specificare Opzioni di salvataggio quando la conversione in HTML

Aspose.Words consente di convertire un documento Word in HTML utilizzando opzioni di salvataggio predefinite o personalizzate. Alcuni esempi di opzioni di salvataggio personalizzate sono descritti di seguito.

### Specificare una cartella per salvare le risorse

Utilizzo Aspose.Words possiamo specificare una cartella fisica in cui tutte le risorse, come immagini, font e CSS esterno, vengono salvate quando un documento viene convertito in HTML. Per impostazione predefinita, questa è una stringa vuota.

Specificare il [ResourceFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolder) la proprietà è il modo più semplice per impostare la cartella in cui tutte le risorse dovrebbero essere scritte. Possiamo utilizzare proprietà individuali, come [FontsFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolder) che salva i caratteri nella cartella specificata e [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolder) che salva le immagini in una cartella specificata. Quando viene specificato un percorso relativo, **FontsFolder** e **ImagesFolder** fare riferimento alla cartella in cui si trova l'assemblaggio del codice, **ResourceFolder** e [CssStyleSheetFileName](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getCssStyleSheetFileName) fare riferimento alla cartella di output in cui si trova il documento HTML.

In questo esempio, **ResourceFolder** specifica il percorso relativo. Questo percorso si riferisce alla cartella di output in cui viene salvato il documento HTML. Il valore del **ResourceFolderAlias** la proprietà viene utilizzata per creare URL per tutte le risorse.

Il seguente esempio di codice mostra come lavorare con queste proprietà:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportResourcesUsingHtmlSaveOptions.java" >}}

Usare il [ResourceFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolderAlias) proprietà, possiamo anche specificare il nome della cartella utilizzata per costruire URI di tutte le risorse scritte in un documento HTML. Questo è il modo più semplice per specificare come gli URI dovrebbero essere generati per tutti i file delle risorse. Le stesse informazioni possono essere specificate per immagini e caratteri separatamente tramite [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolderAlias) e [FontsFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolderAlias) proprietà, rispettivamente.

Tuttavia, non c'è proprietà individuale per CSS. Il comportamento del **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** e **CssStyleSheetFileName** le proprietà non sono cambiate. Nota che **CssStyleSheetFileName** la proprietà viene utilizzata sia per specificare il nome della cartella che il nome del file.

- No. **ResourceFolder** ha una priorità inferiore rispetto alle cartelle specificate tramite **FontsFolder**, **ImagesFolder**, e **CssStyleSheetFileName**. Se la cartella specificata nella **ResourceFolder** non esiste, verrà creato automaticamente.
- No. **ResourceFolderAlias** ha una priorità inferiore a quella **FontsFolderAlias** e **ImagesFolderAlias**. Se **ResourceFolderAlias** è vuoto, il valore del **ResourceFolder** la proprietà sarà utilizzata per creare URI delle risorse. Se **ResourceFolderAlias** è impostato su ". (dot), URI delle risorse conterranno solo nomi di file senza specificare un percorso.

### Esportazione Base64 Codifica Fonti Risorse

Aspose.Words fornisce la possibilità di specificare se le risorse del carattere devono essere incorporate in HTML nella codifica Base64. Per eseguire questo, utilizzare il [ExportFontsAsBase64](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontsAsBase64) proprietà – questa è un'estensione della [ExportFontResources](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontResources) proprieta'. Per impostazione predefinita, il suo valore è **false**, e i font sono scritti in file separati. Ma se questa opzione è impostata su **true**, i font saranno incorporati nella codifica CSS del documento nella codifica Base64. The **ExportFontsAsBase64** la proprietà colpisce solo il formato HTML e non influisce su EPUB e MHTML.

Il seguente esempio di codice mostra come esportare i font codificati Base64 in HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportFontsAsBase64.java" >}}

## Specificare Opzioni di salvataggio quando la conversione a EPUB

Aspose.Words consente di convertire un documento Word in formato EPUB utilizzando opzioni di salvataggio predefinite o personalizzate. È possibile specificare un certo numero di opzioni passando un'istanza di [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) al [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-com.aspose.words.SaveOptions) metodo.

Il seguente esempio di codice mostra come convertire un documento di Word in EPUB con specificare alcune opzioni di salvataggio personalizzate:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToEPUB.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file template di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ExportResourcesUsingHtmlSaveOptions/Document.EpubConversion.doc).

{{% /alert %}}

## Vedi anche

- [Come esportare informazioni di andata e ritorno durante il salvataggio in HTML](/words/java/custom-styles-used-for-proper-aspose-words-html-roundtrip/)
