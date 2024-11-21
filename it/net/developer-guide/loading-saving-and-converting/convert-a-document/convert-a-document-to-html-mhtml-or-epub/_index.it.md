---
title: Converti un documento in HTML, MHTML o EPUB in C#
second_title: Aspose.Words per .NET
articleTitle: Converti un documento in HTML, MHTML o EPUB
linktitle: Converti un documento in HTML, MHTML o EPUB
description: "Converti un documento da quasi tutti i formati in HTML o MHTML, nonché in formato EPUB utilizzando C#. È inoltre possibile specificare le opzioni di salvataggio per la gestione del documento di output."
type: docs
weight: 20
url: /it/net/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-07-09-19-00-42
---

Anche i documenti nei formati di layout di flusso HTML e MHTML sono molto popolari e possono essere utilizzati su qualsiasi piattaforma web. Per questo motivo, la conversione dei documenti in HTML e MHTML è una caratteristica importante di Aspose.Words.

EPUB (abbreviazione di "Pubblicazione elettronica") è un formato basato su HTML comunemente utilizzato per la distribuzione di libri elettronici. Questo formato è completamente supportato in Aspose.Words per l'esportazione di libri elettronici compatibili con la maggior parte dei dispositivi di lettura.

## Converti un documento

Per la semplice conversione in HTML, MHTML o EPUB viene utilizzato uno degli overload del metodo [Save](https://reference.aspose.com/words/it/net/aspose.words/document/save/#save/). È possibile salvare il documento in un file o in un flusso e impostare esplicitamente il formato di salvataggio del documento di output o definirlo dall'estensione del nome file.

L'esempio seguente mostra come convertire DOCX in HTML specificando un formato di salvataggio:

**.NET**

{{< highlight csharp >}}

// Load the document from disk.
Document doc = new Document(dataDir + "Test File.docx");

// Save the document into HTML.
doc.Save(dataDir + "Document", SaveFormat.Html);
{{< /highlight >}}

Per convertire un documento in MHTML o EPUB, utilizzare rispettivamente `SaveFormat.Mhtml` o `SaveFormat.Epub`.

## Converti un documento con informazioni di andata e ritorno

Il formato HTML non supporta molte funzionalità Microsoft Word e se abbiamo bisogno di ripristinare un modello di documento il più vicino possibile all'originale, dobbiamo salvare alcune informazioni extra all'interno del file HTML. Tali informazioni sono anche chiamate "informazioni di andata e ritorno". A questo scopo, Aspose.Words offre la possibilità di esportare informazioni di andata e ritorno durante il salvataggio in HTML, MHTML o EPUB utilizzando la proprietà [ExportRoundtripInformation](https://reference.aspose.com/words/it/net/aspose.words.saving/htmlsaveoptions/exportroundtripinformation/). Il salvataggio delle informazioni di andata e ritorno consente di ripristinare le proprietà del documento come schede, commenti, intestazioni e piè di pagina durante il caricamento dei documenti dei formati elencati in un oggetto **Document**.

Il valore predefinito è **true** per HTML e **false** per MHTML ed EPUB:

- Quando **true**, le informazioni di andata e ritorno vengono esportate come - aw - * proprietà CSS degli elementi HTML corrispondenti
- Quando **false**, non ci sono informazioni di andata e ritorno da inviare nei file prodotti

Il seguente esempio di codice mostra come esportare informazioni di andata e ritorno durante la conversione di un documento da DOCX in HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtmlWithRoundtrip-ConvertDocumentToHtmlWithRoundtrip.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Specifica le opzioni di salvataggio durante la conversione in HTML

Aspose.Words consente di convertire un documento Word in HTML utilizzando opzioni di salvataggio predefinite o personalizzate. Di seguito vengono descritti alcuni esempi di opzioni di salvataggio personalizzate.

### Specificare una cartella per il salvataggio delle risorse

Utilizzando Aspose.Words possiamo specificare una cartella fisica in cui tutte le risorse, come immagini, caratteri e CSS esterni, vengono salvate quando un documento viene convertito in HTML. Per impostazione predefinita, questa è una stringa vuota.

Specificare la proprietà [ResourceFolder](https://reference.aspose.com/words/it/net/aspose.words.saving/htmlsaveoptions/resourcefolder/) è il modo più semplice per impostare la cartella in cui devono essere scritte tutte le risorse. Possiamo utilizzare proprietà individuali, come [FontsFolder](https://reference.aspose.com/words/it/net/aspose.words.saving/htmlsaveoptions/fontsfolder/) che salva i caratteri nella cartella specificata e [ImagesFolder](https://reference.aspose.com/words/it/net/aspose.words.saving/htmlsaveoptions/imagesfolder/) che salva le immagini in una cartella specificata. Quando viene specificato un percorso relativo, **FontsFolder** e **ImagesFolder** si riferiscono alla cartella in cui si trova l'assembly di codice, **ResourceFolder** e [CssStyleSheetFileName](https://reference.aspose.com/words/it/net/aspose.words.saving/htmlsaveoptions/cssstylesheetfilename/) si riferiscono alla cartella di output in cui si trova il documento HTML.

In questo esempio, **ResourceFolder** specifica il percorso relativo. Questo percorso si riferisce alla cartella di output in cui viene salvato il documento HTML. Il valore della proprietà **ResourceFolderAlias** viene utilizzato per creare URL per tutte le risorse.

L'esempio di codice seguente mostra come utilizzare queste proprietà:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportResourcesUsingHtmlSaveOptions-ExportResourcesUsingHtmlSaveOptions.cs" >}}

Utilizzando la proprietà [ResourceFolderAlias](https://reference.aspose.com/words/it/net/aspose.words.saving/htmlsaveoptions/resourcefolderalias/), possiamo anche specificare il nome della cartella utilizzata per costruire gli URI di tutte le risorse scritte in un documento HTML. Questo è il modo più semplice per specificare come devono essere generati gli URI per tutti i file di risorse. Le stesse informazioni possono essere specificate separatamente per immagini e caratteri tramite le proprietà [ImagesFolderAlias](https://reference.aspose.com/words/it/net/aspose.words.saving/htmlsaveoptions/imagesfolderalias/) e [FontsFolderAlias](https://reference.aspose.com/words/it/net/aspose.words.saving/htmlsaveoptions/fontsfolderalias/), rispettivamente.

Tuttavia, non esiste una proprietà individuale per i CSS. Il comportamento delle proprietà **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** e **CssStyleSheetFileName** non viene modificato. Tieni presente che la proprietà **CssStyleSheetFileName** viene utilizzata sia per specificare il nome della cartella che il nome del file.

- **ResourceFolder** ha una priorità inferiore rispetto alle cartelle specificate tramite **FontsFolder**, **ImagesFolder** e **CssStyleSheetFileName**. Se la cartella specificata nel **ResourceFolder** non esiste, verrà creata automaticamente.
- **ResourceFolderAlias** ha una priorità inferiore rispetto a **FontsFolderAlias** e **ImagesFolderAlias**. Se **ResourceFolderAlias** è vuoto, il valore della proprietà **ResourceFolder** verrà utilizzato per creare URI di risorsa. Se **ResourceFolderAlias** è impostato su "." (punto), gli URI delle risorse conterranno solo nomi di file senza specificare un percorso.

### Esporta risorse di caratteri di codifica Base64

Aspose.Words offre la possibilità di specificare se le risorse dei caratteri devono essere incorporate nell'HTML nelle codifiche Base64. Per eseguire questa operazione, utilizza la proprietà [ExportFontsAsBase64](https://reference.aspose.com/words/it/net/aspose.words.saving/htmlsaveoptions/exportfontsasbase64/): questa è un'estensione della proprietà [ExportFontResources](https://reference.aspose.com/words/it/net/aspose.words.saving/htmlsaveoptions/exportfontresources/). Per impostazione predefinita, il suo valore è **false** e i caratteri vengono scritti in file separati. Ma se questa opzione è impostata su **true**, i caratteri verranno incorporati nel CSS del documento con la codifica Base64. La proprietà **EsportaFontsAsBase64** influisce solo sul formato HTML e non influisce su EPUB e MHTML.

Il seguente esempio di codice mostra come esportare i caratteri con codifica Base64 in HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportFontsAsBase64-ExportFontsAsBase64.cs" >}}

## Specifica le opzioni di salvataggio durante la conversione in EPUB

Aspose.Words consente di convertire un documento Word in formato EPUB utilizzando opzioni di salvataggio predefinite o personalizzate. È possibile specificare una serie di opzioni passando un'istanza di [HtmlSaveOptions](https://reference.aspose.com/words/it/net/aspose.words.saving/htmlsaveoptions/) al metodo [Save](https://reference.aspose.com/words/it/net/aspose.words/document/save/#save/).

Il seguente esempio di codice mostra come convertire un documento Word in EPUB specificando alcune opzioni di salvataggio personalizzate:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToEPUB-ConvertDocumentToEPUB.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Guarda anche

- [Come esportare le informazioni di andata e ritorno durante il salvataggio in HTML](/words/net/custom-styles-used-for-proper-aspose-words-html-aspose-words-roundtrip/)
