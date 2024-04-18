---
title: Document omzetten naar HTML
second_title: Aspose.Words voor Python via .NET
articleTitle: Een document omzetten naar HTML, MHTML of EPUB
linktitle: Een document omzetten naar HTML, MHTML of EPUB
description: "Een document omzetten van bijna elk formaat naar HTML of MHTML, evenals naar EPUB-formaat met behulp van Python. U kunt ook opslaan opties voor het beheer van het uitvoerdocument."
type: docs
weight: 20
url: /nl/python-net/convert-a-document-to-html-mhtml-or-epub/
---

Documenten in HTML en MHTML flow-layout formaten zijn ook erg populair en kunnen worden gebruikt op elk webplatform. Daarom is het omzetten van documenten naar HTML en MHTML een belangrijk kenmerk van Aspose.Words.

EPUB (kort voor "Elektronische Publicatie") is een op HTML gebaseerd formaat dat gewoonlijk wordt gebruikt voor elektronische boekdistributie. Dit formaat wordt volledig ondersteund in Aspose.Words voor het exporteren van elektronische boeken die compatibel zijn met de meeste leesapparaten.

## Een document omzetten

Voor eenvoudige conversie naar HTML, MHTML, of EPUB, een van de [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) methode overbelasting wordt gebruikt. U kunt het document opslaan in een bestand of stream en expliciet instellen van het uitvoerdocument opslaan formaat of definiëren van de bestandsnaam extensie.

Het volgende voorbeeld laat zien hoe je DOCX kunt converteren naar HTML met een opslagformaat:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(dataDir + "Test File.docx")

# Save the document into HTML.
doc.save(dataDir + "Document", aw.SaveFormat.HTML)
{{< /highlight >}}

Om een document naar MHTML of EPUB te converteren, gebruik [SaveFormat.MHTML](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#mhtml) of [SaveFormat.EPUB](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#epub) respectievelijk.

## Een document omzetten met rondreisinformatie

Het HTML-formaat ondersteunt niet veel Microsoft Word functies, en als we een documentmodel zo dicht mogelijk bij het origineel moeten herstellen, moeten we wat extra informatie opslaan in het HTML-bestand. Deze informatie wordt ook wel "rondreisinformatie" genoemd. Daartoe, Aspose.Words biedt een mogelijkheid om ronde-trip informatie te exporteren bij het opslaan naar HTML, MHTML, of EPUB met behulp van de **export_roundtrip_information** eigendom. Het opslaan van de ronde-trip informatie maakt het mogelijk om documenten eigenschappen zoals tabs, opmerkingen, headers en voetteksten tijdens het laden documenten van de vermelde formaten terug te herstellen in een [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) object.

De standaardwaarde is *True* voor HTML en *False* voor MHTML en EPUB:

- Wanneer *True*, de rondreisinformatie wordt geëxporteerd als - aw - * CSS eigenschappen van de overeenkomstige HTML elementen
- Wanneer *False*, er is geen ronde-trip informatie om naar geproduceerde bestanden te worden uitgevoerd

Het volgende voorbeeld van code laat zien hoe ronde-trip informatie te exporteren bij het omzetten van een document van DOCX in HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Opties opslaan bij conversie naar HTML

Aspose.Words maakt het mogelijk om een Word-document te converteren naar HTML met behulp van standaard of aangepaste opties voor opslaan. Enkele voorbeelden van aangepaste opties voor opslaan worden hieronder beschreven.

### Geef een map op voor het opslaan van bronnen

Gebruik Aspose.Words We kunnen een fysieke map opgeven waar alle bronnen, zoals afbeeldingen, lettertypen en externe CSS, worden opgeslagen wanneer een document wordt omgezet naar HTML. Standaard is dit een lege tekenreeks.

Specificeren van de [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) eigenschap is de eenvoudigste manier om de map in te stellen waar alle bronnen geschreven moeten worden. We kunnen individuele eigenschappen gebruiken, zoals [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/) die lettertypen opslaat in de opgegeven map en [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) die afbeeldingen opslaat in een opgegeven map. Wanneer een relatief pad is gespecificeerd, [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/) en [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) verwijzen naar de map waar de codeset zich bevindt; [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) en [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) verwijzen naar de uitvoermap waar het HTML-document zich bevindt.

In dit voorbeeld, [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) specificeert het relatieve pad. Dit pad verwijst naar de uitvoermap waar HTML-document wordt opgeslagen. De waarde van de [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) eigenschap wordt gebruikt om URL's aan te maken voor alle bronnen.

Het volgende voorbeeld van code laat zien hoe met deze eigenschappen te werken:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportResources.py" >}}

Gebruik van de [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) eigenschap, kunnen we ook de naam van de map die gebruikt wordt om URI's van alle bronnen geschreven in een HTML-document te construeren. Dit is de eenvoudigste manier om aan te geven hoe URI's moeten worden gegenereerd voor alle resource bestanden. Dezelfde informatie kan voor afbeeldingen en lettertypen afzonderlijk gespecificeerd worden via [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) en [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/) eigenschappen, respectievelijk.

Er is echter geen individuele eigenschap voor CSS. Het gedrag van de [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/), [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/), [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) en [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) eigenschappen worden niet gewijzigd. Merk op dat de [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) eigenschap wordt zowel gebruikt voor het specificeren van mapnaam en bestandsnaam.

- [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) heeft lagere prioriteit dan mappen opgegeven via [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/), en [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/). Als de map in de [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) bestaat niet, het wordt automatisch aangemaakt.
- [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) heeft een lagere prioriteit dan [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/) en [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/). Als [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) is leeg, de waarde van de [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) eigenschap zal worden gebruikt om resource URI's aan te maken. Als [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) is ingesteld op "." (punt), resource URI's zullen alleen bestandsnamen bevatten zonder een pad te specificeren.

### Export Base64 Codering Lettertypenbronnen

Aspose.Words biedt een mogelijkheid om aan te geven of lettertypebronnen moeten worden ingebed in HTML in Base64 coderingen. Om dit uit te voeren, gebruik de [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/) eigenschap Dit is een uitbreiding van de [export_font_resources](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_font_resources/) eigendom. Standaard is de waarde *False*, en lettertypen worden in aparte bestanden geschreven. Maar als deze optie ingesteld is *True*, De lettertypen zullen worden ingebed in de CSS van het document in Base64-codering. De [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/) eigenschap heeft alleen invloed op HTML-formaat en heeft geen invloed op EPUB en MHTML.

Het volgende voorbeeld van code laat zien hoe je Base64-gecodeerde lettertypen naar HTML kunt exporteren:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportFontsAsBase64.py" >}}

## Opties opslaan bij conversie naar EPUB

Aspose.Words maakt het mogelijk om een Word-document te converteren naar EPUB-formaat met behulp van standaard of aangepaste opties voor opslaan. U kunt een aantal opties opgeven door een instantie van [HtmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/) aan de [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) methode.

Het volgende voorbeeld van code laat zien hoe u een Word-document naar EPUB converteert met een aantal aangepaste opties voor opslaan:

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

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

