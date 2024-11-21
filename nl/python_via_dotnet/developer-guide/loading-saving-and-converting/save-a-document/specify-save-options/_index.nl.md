---
title: Opties opslaan in Python
second_title: Aspose.Words voor Python via .NET
articleTitle: Opslaan opties specificeren
linktitle: Opslaan opties specificeren
description: "Het opslaan met behulp van nauwkeurigere controle Python."
type: docs
weight: 10
url: /nl/python-net/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

Bij het opslaan van een document kunt u een aantal geavanceerde eigenschappen instellen. Aspose.Words geeft u de [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) klasse, die meer nauwkeurige controle van het opslaan proces mogelijk maakt. Er zijn overbelastingen van de [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) methode die een [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) object Het moet een object van een klasse afgeleid van de [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) Klasse. Elke opslag formaat heeft een overeenkomstige klasse die opslaan opties voor dit opslaan formaat bevat, bijvoorbeeld, er is [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) voor het opslaan naar PDF-formaat of [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) voor het opslaan naar een afbeelding. Dit artikel geeft voorbeelden van werken met een aantal opties klassen afgeleid van [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/).

Het volgende voorbeeld van code laat zien hoe u de opties voor het opslaan van het document in HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Het artikel beschrijft een paar eigenschappen die u kunt controleren bij het opslaan van een document.

## Een document versleutelen Met een wachtwoord

Gebruik de **wachtwoord** eigenschap om een wachtwoord voor een gecodeerd document te krijgen of in te stellen. Gebruik de **wachtwoord** eigenschap van de corresponderende klasse om te werken met het geselecteerde documentformaat.

Bijvoorbeeld bij het opslaan van een document naar DOC of DOT formaat, gebruik de [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) eigendom van de [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) Klasse.

Het volgende voorbeeld van code laat zien hoe u een wachtwoord instelt om een document te versleutelen met behulp van de RC4-encryptiemethode:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_doc_save_options-EncryptDocumentWithPassword.py" >}}

Bij het opslaan van een document naar Docx formaat, gebruik de [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) eigendom van de [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/) Klasse.

Het volgende voorbeeld van code laat zien hoe Docx versleuteld met een wachtwoord kan worden geladen en opgeslagen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-EncryptDocxWithPassword.py" >}}

Niet alle formaten ondersteunen encryptie en het gebruik van **wachtwoord** eigendom.

## De aanmaaktijd van het document bijwerken

Aspose.Words biedt een vermogen om de [created_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/created_time/) eigenschap om de aanmaakdatum van het document in UTC te verkrijgen of in te stellen. U kunt deze waarde ook bijwerken voordat u de [update_created_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_created_time_property/) optie.

Het volgende voorbeeld van de code laat zien hoe u het document aanmaaktijd kunt bijwerken:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-UpdateIfLastPrinted.py" >}}

## Laatste opgeslagen eigenschap bijwerken

Aspose.Words biedt een vermogen om de [update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) eigenschap om een waarde te verkrijgen of in te stellen die bepaalt of [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) eigenschap wordt bijgewerkt voordat u opslaat.

Het volgende voorbeeld van code laat zien hoe deze eigenschap in te stellen en het document op te slaan:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

## Zwart-wit afbeelding opslaan met één bit per pixelformaat

Om het opslaan van afbeeldingen te controleren, de [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) De les wordt gebruikt. U kunt bijvoorbeeld de [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) eigenschap om het beeldpuntformaat voor de gegenereerde afbeeldingen in te stellen. Houd er rekening mee dat het pixelformaat van de uitvoerafbeelding kan verschillen van de ingestelde waarde vanwege het werk van skia.

Het volgende voorbeeld van code laat zien hoe je een zwart-wit afbeelding opslaat met één bit per pixel formaat:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-Format1BppIndexed.py" >}}
