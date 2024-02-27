---
title: Converti documento in HTML
second_title: Aspose.Words per Python via .NET
articleTitle: Converti un documento in HTML, MHTML o EPUB
linktitle: Converti un documento in HTML, MHTML o EPUB
description: "Converti un documento da quasi tutti i formati in HTML o MHTML, nonché in formato EPUB utilizzando Python. È inoltre possibile specificare le opzioni di salvataggio per la gestione del documento di output."
type: docs
weight: 20
url: /it/python-net/convert-a-document-to-html-mhtml-or-epub/
---

Anche i documenti nei formati di layout di flusso HTML e MHTML sono molto popolari e possono essere utilizzati su qualsiasi piattaforma web. Per questo motivo, la conversione dei documenti in HTML e MHTML è una caratteristica importante di Aspose.Words.

EPUB (abbreviazione di "Pubblicazione elettronica") è un formato basato su HTML comunemente utilizzato per la distribuzione di libri elettronici. Questo formato è completamente supportato in Aspose.Words per l'esportazione di libri elettronici compatibili con la maggior parte dei dispositivi di lettura.

## Converti un documento

Per la semplice conversione in HTML, MHTML o EPUB viene utilizzato uno degli overload del metodo [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/). È possibile salvare il documento in un file o in un flusso e impostare esplicitamente il formato di salvataggio del documento di output o definirlo dall'estensione del nome file.

L'esempio seguente mostra come convertire DOCX in HTML specificando un formato di salvataggio:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(dataDir + "Test File.docx")

# Save the document into HTML.
doc.save(dataDir + "Document", aw.SaveFormat.HTML)
{{< /highlight >}}

Per convertire un documento in MHTML o EPUB, utilizzare rispettivamente [SaveFormat.MHTML](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#mhtml) o [SaveFormat.EPUB](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#epub).

## Converti un documento con informazioni di andata e ritorno

Il formato HTML non supporta molte funzionalità Microsoft Word e se abbiamo bisogno di ripristinare un modello di documento il più vicino possibile all'originale, dobbiamo salvare alcune informazioni extra all'interno del file HTML. Tali informazioni sono anche chiamate "informazioni di andata e ritorno". A questo scopo, Aspose.Words offre la possibilità di esportare informazioni di andata e ritorno durante il salvataggio in HTML, MHTML o EPUB utilizzando la proprietà **export_andata e ritorno_informazioni**. Il salvataggio delle informazioni di andata e ritorno consente di ripristinare le proprietà del documento come schede, commenti, intestazioni e piè di pagina durante il caricamento dei documenti dei formati elencati in un oggetto [Document](https://reference.aspose.com/words/python-net/aspose.words/document/).

Il valore predefinito è *True* per HTML e *False* per MHTML ed EPUB:

- Quando *True*, le informazioni di andata e ritorno vengono esportate come - aw - * proprietà CSS degli elementi HTML corrispondenti
- Quando *False*, non ci sono informazioni di andata e ritorno da inviare nei file prodotti

Il seguente esempio di codice mostra come esportare informazioni di andata e ritorno durante la conversione di un documento da DOCX in HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Specifica le opzioni di salvataggio durante la conversione in HTML

Aspose.Words consente di convertire un documento Word in HTML utilizzando opzioni di salvataggio predefinite o personalizzate. Di seguito vengono descritti alcuni esempi di opzioni di salvataggio personalizzate.

### Specificare una cartella per il salvataggio delle risorse

Utilizzando Aspose.Words possiamo specificare una cartella fisica in cui tutte le risorse, come immagini, caratteri e CSS esterni, vengono salvate quando un documento viene convertito in HTML. Per impostazione predefinita, questa è una stringa vuota.

Specificare la proprietà [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) è il modo più semplice per impostare la cartella in cui devono essere scritte tutte le risorse. Possiamo utilizzare proprietà individuali, come [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/) che salva i caratteri nella cartella specificata e [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) che salva le immagini in una cartella specificata. Quando viene specificato un percorso relativo, [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/) e [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) si riferiscono alla cartella in cui si trova l'assembly di codice, [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) e [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) si riferiscono alla cartella di output in cui si trova il documento HTML.

In questo esempio, [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) specifica il percorso relativo. Questo percorso si riferisce alla cartella di output in cui viene salvato il documento HTML. Il valore della proprietà [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) viene utilizzato per creare URL per tutte le risorse.

L'esempio di codice seguente mostra come utilizzare queste proprietà:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportResources.py" >}}

Utilizzando la proprietà [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/), possiamo anche specificare il nome della cartella utilizzata per costruire gli URI di tutte le risorse scritte in un documento HTML. Questo è il modo più semplice per specificare come devono essere generati gli URI per tutti i file di risorse. Le stesse informazioni possono essere specificate separatamente per immagini e caratteri tramite le proprietà [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) e [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/), rispettivamente.

Tuttavia, non esiste una proprietà individuale per i CSS. Il comportamento delle proprietà [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/), [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/), [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) e [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) non viene modificato. Tieni presente che la proprietà [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) viene utilizzata sia per specificare il nome della cartella che il nome del file.

- [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) ha una priorità inferiore rispetto alle cartelle specificate tramite [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) e [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/). Se la cartella specificata nel [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) non esiste, verrà creata automaticamente.
- [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) ha una priorità inferiore rispetto a [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/) e [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/). Se [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) è vuoto, il valore della proprietà [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) verrà utilizzato per creare URI di risorsa. Se [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) è impostato su "." (punto), gli URI delle risorse conterranno solo nomi di file senza specificare un percorso.

### Esporta risorse di caratteri di codifica Base64

Aspose.Words offre la possibilità di specificare se le risorse dei caratteri devono essere incorporate nell'HTML nelle codifiche Base64. Per eseguire questa operazione, utilizza la proprietà [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/): questa è un'estensione della proprietà [export_font_resources](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_font_resources/). Per impostazione predefinita, il suo valore è *False* e i caratteri vengono scritti in file separati. Ma se questa opzione è impostata su *True*, i caratteri verranno incorporati nel CSS del documento con la codifica Base64. La proprietà [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/) influisce solo sul formato HTML e non influisce su EPUB e MHTML.

Il seguente esempio di codice mostra come esportare i caratteri con codifica Base64 in HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportFontsAsBase64.py" >}}

## Specifica le opzioni di salvataggio durante la conversione in EPUB

Aspose.Words consente di convertire un documento Word in formato EPUB utilizzando opzioni di salvataggio predefinite o personalizzate. È possibile specificare una serie di opzioni passando un'istanza di [HtmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/) al metodo [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/).

Il seguente esempio di codice mostra come convertire un documento Word in EPUB specificando alcune opzioni di salvataggio personalizzate:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(docs_base.my_dir + "Rendering.docx")

# Create a new instance of HtmlSaveOptions. This object allows us to set options that control
# How the output document is saved.
saveOptions = aw.saving.HtmlSaveOptions()

# Specify the desired encoding.
saveOptions.encoding = "utf-8"

# Specify at what elements to split the internal HTML at. This creates a new HTML within the EPUB 
# which allows you to limit the size of each HTML part. This is useful for readers which cannot read 
# HTML files greater than a certain size e.g 300kb.
saveOptions.document_split_criteria = aw.saving.DocumentSplitCriteria.HEADING_PARAGRAPH

# Specify that we want to export document properties.
saveOptions.export_document_properties = True

# Specify that we want to save in EPUB format.
saveOptions.save_format = aw.SaveFormat.EPUB

# Export the document as an EPUB file.
doc.save(docs_base.artifacts_dir + "Document.EpubConversion_out.epub", saveOptions)
{{< /highlight >}}

{{% alert color="primary" %}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

