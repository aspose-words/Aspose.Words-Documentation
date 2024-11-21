---
title: Omskep Dokument na HTML
second_title: Aspose.Words vir Python via .NET
articleTitle: Skakel'n Dokument om na HTML, MHTML of EPUB
linktitle: Skakel'n Dokument om na HTML, MHTML of EPUB
description: "Skakel'n dokument van byna enige formaat na HTML of MHTML, sowel as na EPUB formaat met behulp van Python. U kan ook stooropsies spesifiseer vir die bestuur van die uitvoerdokument."
type: docs
weight: 20
url: /af/python-net/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-01-27-14-07-04
---

Dokumente in HTML en MHTML vloei-uitleg formate is ook baie gewild en kan gebruik word op enige web platform. Om daardie rede is die omskakeling van dokumente na HTML en MHTML 'n belangrike kenmerk van Aspose.Words.

EPUB (kort vir "Elektroniese Publikasie") is'n HTML-gebaseerde formaat wat algemeen gebruik word vir elektroniese boekverspreiding. Hierdie formaat word ten volle ondersteun in Aspose.Words vir die uitvoer van elektroniese boeke wat versoenbaar is met die meeste lees toestelle.

## Skakel'n Dokument om

Vir eenvoudige omskakeling na HTML, MHTML, of EPUB, word een van die [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) metode oorladings gebruik. U kan die dokument in'n lêer of stroom stoor en die uitvoerdokument stoorformaat eksplisiet stel of dit van die lêernaamuitbreiding definieer.

Die volgende voorbeeld toon hoe om DOCX om te skakel na HTML met die spesifisering van'n stoor formaat:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(dataDir + "Test File.docx")

# Save the document into HTML.
doc.save(dataDir + "Document", aw.SaveFormat.HTML)
{{< /highlight >}}

Om'n dokument te omskep in MHTML of EPUB, gebruik onderskeidelik [SaveFormat.MHTML](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#mhtml) of [SaveFormat.EPUB](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#epub).

## Skakel'n Dokument met Heen-En-Terug-Inligting om

Die HTML formaat ondersteun nie baie Microsoft Word funksies nie, en as ons'n dokumentmodel so naby as moontlik aan die oorspronklike moet herstel, moet ons ekstra inligting in die HTML lêer stoor. Sulke inligting word ook"heen-en-terug-inligting" genoem. Vir hierdie doel, Aspose.Words bied'n vermoë om heen-en-terug inligting uit te voer wanneer dit gestoor word na HTML, MHTML, of EPUB met behulp van die **export_roundtrip_information** eienskap. Die stoor van die heen-en-terug inligting kan dokument eienskappe soos oortjies, kommentaar, koptekste, en voetskrifte te herstel tydens die laai dokumente van die gelys formate terug in'n [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) voorwerp.

Die verstekwaarde is *True* vir HTML en *False* vir MHTML en EPUB:

- Wanneer *True*, die heen-en - terug inligting uitgevoer word as - aw - * CSS eienskappe van die ooreenstemmende HTML elemente
- Wanneer *False*, is daar geen heen-en-terug inligting wat in geproduseerde lêers uitgevoer moet word nie

Die volgende kode voorbeeld toon hoe om heen-en-terug inligting uitvoer wanneer die omskakeling van'n dokument van DOCX in HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Spesifiseer Stoorkeuses wanneer Omskakeling na HTML

Aspose.Words laat toe om'n Word-dokument om te skakel na HTML met behulp van standaard of persoonlike stoor opsies. 'n paar voorbeelde van persoonlike stoor opsies word hieronder beskryf.

### Spesifiseer'n Gids vir Die Stoor Van Hulpbronne

Met behulp van Aspose.Words kan ons'n fisiese gids spesifiseer waar alle hulpbronne, soos beelde, lettertipes en eksterne CSS, gestoor word wanneer'n dokument omgeskakel word na HTML. By verstek, dit is'n leë string.

Die spesifisering van die [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) eienskap is die eenvoudigste manier om die gids te stel waar al die hulpbronne geskryf moet word. Ons kan individuele eienskappe gebruik, soos [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/) wat lettertipes in die gespesifiseerde gids stoor en [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) wat beelde in'n gespesifiseerde gids stoor. Wanneer'n relatiewe pad gespesifiseer word, verwys [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/) en [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) na die gids waar die kode-samestelling geleë is, [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) en [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) verwys na die uitsetmap waar die HTML - dokument geleë is.

In hierdie voorbeeld spesifiseer [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) die relatiewe pad. Hierdie pad verwys na die uitset gids waar HTML dokument gestoor word. Die waarde van die [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) eienskap word gebruik om URLs vir alle hulpbronne te skep.

Die volgende kode voorbeeld toon hoe om te werk met hierdie eienskappe:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportResources.py" >}}

Deur die [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) eienskap te gebruik, kan ons ook die naam van die gids spesifiseer wat gebruik word om URIs van alle hulpbronne wat in'n HTML dokument geskryf is, te bou. Dit is die eenvoudigste manier om te spesifiseer hoe URIs gegenereer moet word vir alle hulpbron lêers. Dieselfde inligting kan vir beelde en lettertipes afsonderlik gespesifiseer word via [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) en [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/) eienskappe, onderskeidelik.

Daar is egter geen individuele eienskap vir CSS nie. Die gedrag van die [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/), [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/), [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) en [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) eienskappe is nie verander nie. Let daarop dat die [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) eienskap gebruik word beide vir die spesifisering van gids naam en lêer naam.

- [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) het laer prioriteit as dopgehou wat deur [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) en [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) gespesifiseer word. As die gids gespesifiseer in die [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) nie bestaan nie, sal dit outomaties geskep word.
- [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) het'n laer prioriteit as [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/) en [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/). As [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) leeg is, sal die waarde van die [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) eienskap gebruik word om hulpbron URIs te skep. As [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) op "." (punt) gestel is, sal hulpbron URIs slegs lêernaam bevat sonder om'n pad te spesifiseer.

### Uitvoer Base64 Enkodering Lettertipes Hulpbronne

Aspose.Words bied'n vermoë om te spesifiseer of lettertipe hulpbronne in HTML in Base64 koderings ingebed moet word. Om dit uit te voer, gebruik die [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/) eienskap – dit is'n uitbreiding van die [export_font_resources](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_font_resources/) eienskap. By verstek is die waarde *False*, en lettertipes word in afsonderlike lêers geskryf. Maar as hierdie opsie is ingestel op *True*, sal lettertipes ingebed word in die dokument se CSS In Base64 kodering. Die [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/) eienskap beïnvloed slegs HTML formaat en beïnvloed nie EPUB en MHTML nie.

Die volgende kode voorbeeld toon hoe Om Base64-geënkodeerde lettertipes uit te voer na HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportFontsAsBase64.py" >}}

## Spesifiseer Stoorkeuses wanneer Omskakeling na EPUB

Aspose.Words laat toe om'n Word-dokument in EPUB - formaat te omskep deur standaard of persoonlike stooropsies te gebruik. U kan'n aantal opsies spesifiseer deur'n voorbeeld van [HtmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/) aan die [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) - metode te gee.

Die volgende kode voorbeeld toon hoe om'n Word dokument om te skakel na EPUB met die spesifisering van'n paar persoonlike stoor opsies:

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

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

