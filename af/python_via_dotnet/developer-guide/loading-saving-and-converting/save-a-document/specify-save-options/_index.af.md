---
title: Spesifiseer Stoorkeuses in Python
second_title: Aspose.Words vir Python via .NET
articleTitle: Spesifiseer Stoorkeuses
linktitle: Spesifiseer Stoorkeuses
description: "Meer akkuraat beheer die stoor proses met behulp van Python."
type: docs
weight: 10
url: /af/python-net/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

Wanneer jy'n dokument stoor, kan jy'n paar gevorderde eienskappe stel. Aspose.Words bied u die [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) klas, wat meer presiese beheer van die stoorproses moontlik maak. Daar is oorladings van die [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) metode wat'n [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) voorwerp aanvaar dit moet'n voorwerp van'n klas afgelei van die [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) klas wees. Elke stoor formaat het'n ooreenstemmende klas wat stoor opsies vir hierdie stoor formaat hou, byvoorbeeld, daar is [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) vir die stoor na PDF formaat of [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) vir die stoor na'n beeld. Hierdie artikel bied voorbeelde van die werk met'n paar opsies klasse afgelei van [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/).

Die volgende kode voorbeeld toon hoe om die stoor opsies stel voor die stoor van die dokument in HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Die artikel beskryf'n paar eienskappe wat jy kan beheer wanneer jy'n dokument stoor.

## Enkripteer'n Dokument Met'n Wagwoord

Gebruik die **password** eienskap om'n wagwoord vir'n geënkripteerde dokument te kry of in te stel. Gebruik die **password** eienskap van die ooreenstemmende klas om te werk met die gekose dokument formaat.

Byvoorbeeld, wanneer'n dokument gestoor word in DOC of DOT formaat, gebruik die [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) eienskap van die [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) klas.

Die volgende kode voorbeeld toon hoe om'n wagwoord te stel om'n dokument te enkripteer met behulp van die RC4 enkripsie metode:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_doc_save_options-EncryptDocumentWithPassword.py" >}}

Wanneer jy'n dokument in Docx-formaat stoor, gebruik die [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) eienskap van die [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/) klas.

Die volgende kode voorbeeld toon hoe Om Te laai en te red Docx geïnkripteer met'n wagwoord:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-EncryptDocxWithPassword.py" >}}

Nie alle formate ondersteun enkripsie en die gebruik van **password** eienskap nie.

## Dateer Die Dokument Se Skeppingstyd op

Aspose.Words bied'n vermoë om die [created_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/created_time/) eienskap te gebruik om die dokument skep datum in UTC te kry of stel. U kan ook hierdie waarde opdateer voordat u die [update_created_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_created_time_property/) - opsie gebruik.

Die volgende kode voorbeeld toon hoe om die dokument skepping tyd te werk:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-UpdateIfLastPrinted.py" >}}

## Dateer Laaste Gestoorde Eiendom Op

Aspose.Words bied'n vermoë om die [update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) eienskap te gebruik om'n waarde te kry of te stel wat bepaal of die [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) eienskap opgedateer word voordat dit gestoor word.

Die volgende kode voorbeeld toon hoe om hierdie eiendom te stel en stoor die dokument:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

## Stoor Swart En Wit Beeld Met Een Bietjie Per Pixel Formaat

Om beeld stoor opsies te beheer, is die [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) klas gebruik. U kan byvoorbeeld die [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) - eienskap gebruik om die pixelformaat vir die gegenereerde beelde in te stel. Let asseblief daarop dat die pixel formaat van die uitset beeld kan verskil van die stel waarde as gevolg van die werk van skia.

Die volgende kode voorbeeld toon hoe om'n swart en wit beeld te red met een bietjie per pixel formaat:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-Format1BppIndexed.py" >}}
