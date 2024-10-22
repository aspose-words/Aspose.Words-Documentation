---
title: Convertire un documento in HTML, MHTML o EPUB
second_title: Aspose.Words per C++
articleTitle: Convertire un documento in HTML, MHTML o EPUB
linktitle: Convertire un documento in HTML, MHTML o EPUB
description: "Convertire un documento da quasi tutti i formati in HTML o MHTML, così come in formato EPUB utilizzando C++. È inoltre possibile specificare le opzioni di salvataggio per la gestione del documento di output."
type: docs
weight: 20
url: /it/cpp/convert-a-document-to-html-mhtml-or-epub/
---

Anche i documenti in formato HTML e MHTML flow-layout sono molto popolari e possono essere utilizzati su qualsiasi piattaforma web. Per questo motivo, la conversione di documenti in HTML e MHTML è una caratteristica importante di Aspose.Words.

EPUB (abbreviazione di "Pubblicazione elettronica") è un formato basato su HTML comunemente usato per la distribuzione di libri elettronici. Questo formato è completamente supportato in Aspose.Words per l'esportazione di libri elettronici compatibili con la maggior parte dei dispositivi di lettura.

## Convertire un documento

Per una semplice conversione in HTML, MHTML o EPUB, viene utilizzato uno dei sovraccarichi del metodo [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). È possibile salvare il documento in un file o in un flusso e impostare esplicitamente il formato di salvataggio del documento di output o definirlo dall'estensione del nome del file.

L'esempio seguente mostra come convertire DOCX in HTML specificando un formato di salvataggio:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ConvertDocxToHtml.cpp" >}}

Per convertire un documento in MHTML o EPUB, utilizzare rispettivamente `SaveFormat.Mhtml` o `SaveFormat.Epub`.

## Convertire un documento con informazioni di andata e ritorno

Il formato HTML non supporta molte funzioni Microsoft Word, e se abbiamo bisogno di ripristinare un modello di documento il più vicino possibile all'originale, abbiamo bisogno di salvare alcune informazioni extra all'interno del file HTML. Tali informazioni sono anche chiamate "informazioni di andata e ritorno". A tale scopo, Aspose.Words fornisce la possibilità di esportare informazioni di andata e ritorno quando si salvano in HTML, MHTML o EPUB utilizzando la proprietà [ExportRoundtripInformation](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportroundtripinformation/). Il salvataggio delle informazioni di andata e ritorno consente di ripristinare le proprietà del documento come schede, commenti, intestazioni e piè di pagina durante il caricamento dei documenti dei formati elencati in un oggetto **Document**.

Il valore predefinito è **true** per HTML e **false** per MHTML e EPUB:

- Quando **true**, le informazioni di andata e ritorno vengono esportate come proprietà CSS-aw - * degli elementi HTML corrispondenti
- Quando **false**, non ci sono informazioni di andata e ritorno da inviare nei file prodotti

L'esempio di codice seguente mostra come esportare le informazioni di andata e ritorno quando si converte un documento da DOCX in HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ConvertDocumentToHtmlWithRoundtrip.cpp" >}}

{{% alert color="primary" %}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Specificare le opzioni di salvataggio durante la conversione in HTML

Aspose.Words consente di convertire un documento Word in HTML utilizzando le opzioni di salvataggio predefinite o personalizzate. Alcuni esempi di opzioni di salvataggio personalizzate sono descritti di seguito.

### Specificare una cartella per il salvataggio delle risorse

Usando Aspose.Words possiamo specificare una cartella fisica in cui tutte le risorse, come immagini, font e CSS esterni, vengono salvate quando un documento viene convertito in HTML. Per impostazione predefinita, questa è una stringa vuota.

Specificare la proprietà [ResourceFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_resourcefolder/) è il modo più semplice per impostare la cartella in cui devono essere scritte tutte le risorse. Possiamo usare singole proprietà, come [FontsFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_fontsfolder/) che salva i font nella cartella specificata e [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_imagesfolder/) che salva le immagini in una cartella specificata. Quando viene specificato un percorso relativo, **FontsFolder** e **ImagesFolder** si riferiscono alla cartella in cui si trova l'assembly di codice, **ResourceFolder** e [CssStyleSheetFileName](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_cssstylesheetfilename/) si riferiscono alla cartella di output in cui si trova il documento HTML.

In questo esempio, **ResourceFolder** specifica il percorso relativo. Questo percorso si riferisce alla cartella di output in cui viene salvato il documento HTML. Il valore della proprietà **ResourceFolderAlias** viene utilizzato per creare URLs per tutte le risorse.

Il seguente esempio di codice mostra come lavorare con queste proprietà:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ExportResourcesUsingHtmlSaveOptions.cpp" >}}

Utilizzando la proprietà [ResourceFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_resourcefolderalias/), possiamo anche specificare il nome della cartella utilizzata per costruire URIs di tutte le risorse scritte in un documento HTML. Questo è il modo più semplice per specificare come deve essere generato URIs per tutti i file di risorse. Le stesse informazioni possono essere specificate separatamente per immagini e font tramite le proprietà [ImagesFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_imagesfolderalias/) e [FontsFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_fontsfolderalias/), rispettivamente.

Tuttavia, non esiste una proprietà individuale per i CSS. Il comportamento del **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** e le proprietà **CssStyleSheetFileName** non vengono modificate. Si noti che la proprietà **CssStyleSheetFileName** viene utilizzata sia per specificare il nome della cartella che il nome del file.

- **ResourceFolder** ha priorità inferiore rispetto alle cartelle specificate tramite **FontsFolder**, **ImagesFolder** e **CssStyleSheetFileName**. Se la cartella specificata in **ResourceFolder** non esiste, verrà creata automaticamente.
- **ResourceFolderAlias** ha una priorità inferiore a **FontsFolderAlias** e **ImagesFolderAlias**. Se **ResourceFolderAlias** è vuoto, il valore della proprietà **ResourceFolder** verrà utilizzato per creare la risorsa URIs. Se **ResourceFolderAlias** è impostato su "." (punto), la risorsa URIs conterrà solo nomi di file senza specificare un percorso.

### Esportare le risorse dei font di codifica Base64

Aspose.Words fornisce la possibilità di specificare se le risorse dei font devono essere incorporate in HTML nelle codifiche Base64. Per eseguire questa operazione, utilizzare la proprietà [ExportFontsAsBase64](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportfontsasbase64/) - questa è un'estensione della proprietà [ExportFontResources](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportfontresources/). Per impostazione predefinita, il suo valore è **false** e i font sono scritti in file separati. Ma se questa opzione è impostata su **true**, i font saranno incorporati nel CSS del documento nella codifica Base64. La proprietà **ExportFontsAsBase64** influisce solo sul formato HTML e non su EPUB e MHTML.

Il seguente esempio di codice mostra come esportare i font con codifica Base64 in HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ExportFontsAsBase64.cpp" >}}

## Specificare le opzioni di salvataggio durante la conversione in EPUB

Aspose.Words consente di convertire un documento Word in formato EPUB utilizzando le opzioni di salvataggio predefinite o personalizzate. È possibile specificare un numero di opzioni passando un'istanza di [HtmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/) al metodo `Save`.

L'esempio di codice seguente mostra come convertire un documento Word in EPUB specificando alcune opzioni di salvataggio personalizzate:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToEPUB-ConvertDocumentToEPUB.cpp" >}}

{{% alert color="primary" %}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
