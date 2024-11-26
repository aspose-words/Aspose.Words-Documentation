---
title: Convertire un documento in HTML, MHTML o EPUB
second_title: Aspose.Words per Java
articleTitle: Convertire un documento in HTML, MHTML o EPUB
linktitle: Convertire un documento in HTML, MHTML o EPUB
description: "Utilizzare Aspose.Words per Java per convertire documenti da Word o altri formati supportati in HTML, MHTML o EPUB."
type: docs
weight: 20
url: /it/java/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-10-21-08-52-03
---

Anche i documenti nei formati flow-layout HTML e MHTML sono molto popolari e possono essere utilizzati su qualsiasi piattaforma web. Per questo motivo, la conversione di documenti in HTML e MHTML è una caratteristica importante di Aspose.Words.

EPUB (abbreviazione di "Pubblicazione elettronica") è un formato basato su HTML comunemente usato per la distribuzione di libri elettronici. Questo formato è completamente supportato in Aspose.Words per l'esportazione di libri elettronici compatibili con la maggior parte dei dispositivi di lettura.

## Convertire un documento

Per una semplice conversione in HTML, MHTML o EPUB, viene utilizzato uno dei sovraccarichi del metodo [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int). È possibile salvare il documento in un file o in un flusso e impostare esplicitamente il formato di salvataggio del documento di output o definirlo dall'estensione del nome del file.

L'esempio seguente mostra come convertire DOCX in HTML specificando un formato di salvataggio:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocxToHtml.java" >}}

Per convertire un documento in MHTML o EPUB, utilizzare rispettivamente `SaveFormat.MHTML` o `SaveFormat.EPUB`.

## Convertire un documento con informazioni di andata e ritorno

Il formato HTML non supporta molte funzionalità di Microsoft Word e, se è necessario ripristinare un modello di documento il più vicino possibile all'originale, è necessario salvare alcune informazioni aggiuntive all'interno del file HTML. Tali informazioni sono anche chiamate "informazioni di andata e ritorno". A tale scopo, Aspose.Words fornisce la possibilità di esportare informazioni di andata e ritorno quando si salva in HTML, MHTML o EPUB utilizzando la proprietà [ExportRoundtripInformation](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportRoundtripInformation). Il salvataggio delle informazioni di andata e ritorno consente di ripristinare le proprietà del documento come schede, commenti, intestazioni e piè di pagina durante il caricamento dei documenti dei formati elencati in un oggetto **Document**.

Il valore predefinito è **true** per HTML e **false** per MHTMLe EPUB:

- Quando **true**, le informazioni di andata e ritorno vengono esportate come proprietà - aw - * CSS degli elementi corrispondenti HTML
- Quando **false**, non ci sono informazioni di andata e ritorno da inviare nei file prodotti

L'esempio di codice seguente mostra come esportare le informazioni di andata e ritorno quando si converte un documento da DOCX a HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToHtmlWithRoundtrip.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Specificare le opzioni di salvataggio durante la conversione in HTML

Aspose.Words consente di convertire un documento Word in HTML utilizzando le opzioni di salvataggio predefinite o personalizzate. Alcuni esempi di opzioni di salvataggio personalizzate sono descritti di seguito.

### Specificare una cartella per il salvataggio delle risorse

Usando Aspose.Words possiamo specificare una cartella fisica in cui tutte le risorse, come immagini, font e CSS esterni, vengono salvate quando un documento viene convertito in HTML. Per impostazione predefinita, questa è una stringa vuota.

Specificare la proprietà [ResourceFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolder) è il modo più semplice per impostare la cartella in cui devono essere scritte tutte le risorse. Possiamo usare singole proprietà, come [FontsFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolder) che salva i font nella cartella specificata e [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolder) che salva le immagini in una cartella specificata. Quando viene specificato un percorso relativo, **FontsFolder** e **ImagesFolder** si riferiscono alla cartella in cui si trova l'assembly di codice, **ResourceFolder** e [CssStyleSheetFileName](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getCssStyleSheetFileName) si riferiscono alla cartella di output in cui si trova il documento HTML.

In questo esempio, **ResourceFolder** specifica il percorso relativo. Questo percorso si riferisce alla cartella di output in cui viene salvato il documento HTML. Il valore della proprietà **ResourceFolderAlias** viene utilizzato per creare URLs per tutte le risorse.

Il seguente esempio di codice mostra come lavorare con queste proprietà:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportResourcesUsingHtmlSaveOptions.java" >}}

Usando la proprietà [ResourceFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolderAlias), possiamo anche specificare il nome della cartella utilizzata per costruire URIs di tutte le risorse scritte in un documento HTML. Questo è il modo più semplice per specificare come deve essere generato URIs per tutti i file di risorse. Le stesse informazioni possono essere specificate separatamente per immagini e font tramite le proprietà [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolderAlias) e [FontsFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolderAlias), rispettivamente.

Tuttavia, non esiste una proprietà individuale per CSS. Il comportamento del **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** e le proprietà **CssStyleSheetFileName** non vengono modificate. Si noti che la proprietà **CssStyleSheetFileName** viene utilizzata sia per specificare il nome della cartella che il nome del file.

- **ResourceFolder** ha priorità inferiore rispetto alle cartelle specificate tramite **FontsFolder**, **ImagesFolder** e **CssStyleSheetFileName**. Se la cartella specificata in **ResourceFolder** non esiste, verrà creata automaticamente.
- **ResourceFolderAlias** ha una priorità inferiore a **FontsFolderAlias** e **ImagesFolderAlias**. Se **ResourceFolderAlias** è vuoto, il valore della proprietà **ResourceFolder** verrà utilizzato per creare la risorsa URIs. Se **ResourceFolderAlias** è impostato su "." (punto), la risorsa URIs conterrà solo nomi di file senza specificare un percorso.

### Esportare le risorse dei font di codifica Base64

Aspose.Words fornisce la possibilità di specificare se le risorse dei font devono essere incorporate in HTML nelle codifiche Base64. Per eseguire questa operazione, utilizzare la proprietà [ExportFontsAsBase64](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontsAsBase64) - questa è un'estensione della proprietà [ExportFontResources](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontResources). Per impostazione predefinita, il suo valore è **false** e i font sono scritti in file separati. Ma se questa opzione è impostata su **true**, i font saranno incorporati nel documento CSS nella codifica Base64. La proprietà **ExportFontsAsBase64** influisce solo sul formato HTML e non su EPUB e MHTML.

L'esempio di codice seguente mostra come esportare i font codificati Base64 in HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportFontsAsBase64.java" >}}

## Specificare le opzioni di salvataggio durante la conversione in EPUB

Aspose.Words consente di convertire un documento Word in formato EPUB utilizzando le opzioni di salvataggio predefinite o personalizzate. È possibile specificare un numero di opzioni passando un'istanza di [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) al metodo [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-com.aspose.words.SaveOptions).

L'esempio di codice seguente mostra come convertire un documento Word in EPUB specificando alcune opzioni di salvataggio personalizzate:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToEPUB.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ExportResourcesUsingHtmlSaveOptions/Document.EpubConversion.doc).

{{% /alert %}}

## Vedi anche

- [Come esportare le informazioni di andata e ritorno quando si salva in HTML](/words/java/custom-styles-used-for-proper-aspose-words-html-roundtrip/)
