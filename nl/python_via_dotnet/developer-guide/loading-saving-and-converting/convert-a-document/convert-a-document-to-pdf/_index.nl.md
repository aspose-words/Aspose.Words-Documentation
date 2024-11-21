---
title: Een document omzetten naar PDF in Python
second_title: Aspose.Words voor Python via .NET
articleTitle: Een document omzetten naar PDF
linktitle: Een document omzetten naar PDF
description: "Een document omzetten naar PDF met Python. Verschillende invoerformaten worden ondersteund, waaronder Word, OpenOffice, Image en eBook formaten."
type: docs
weight: 10
url: /nl/python-net/convert-a-document-to-pdf/
timestamp: 2024-01-31-14-23-37
---

De mogelijkheid om gemakkelijk en betrouwbaar documenten te converteren van het ene formaat naar het andere is een belangrijke eigenschap van Aspose.Words. Een van de meest populaire formaten voor het omzetten is PDF De term "rendering" wordt gebruikt in Aspose.Words beschrijven van het proces van het omzetten van een document in een bestandsformaat dat wordt gepagineerd of heeft het concept van pagina's.

## Een Word-document omzetten naar PDF {#convert-a-word-document-to-pdf}

Conversie van Word naar PDF is een vrij complex proces dat verschillende fasen van berekening vereist. Aspose.Words lay-out motor bootst de manier Microsoft WordDe pagina-indeling engine werkt, waardoor PDF-uitvoerdocumenten zo dicht mogelijk bij wat je kunt zien in Microsoft Word.

Met Aspose.Words u kunt programmatisch converteren van een document van Word-formaten, zoals DOC of DOCX, naar PDF zonder gebruik Microsoft Kantoor. In dit artikel wordt uitgelegd hoe deze conversie moet worden uitgevoerd.

{{% alert color="primary" %}}

Merk op dat het aantal pagina's in een document de conversietijd beïnvloedt.

{{% /alert %}}

### DOC of DOCX omzetten naar PDF {#convert-doc-or-docx-to-pdf}

Converteren van het DOC- of DOCX-documentformaat naar het PDF-formaat in Aspose.Words is zeer gemakkelijk en kan worden bereikt met slechts twee regels code die:

1. Uw document laden in een [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) object met behulp van een van de constructeurs door het specificeren van de documentnaam met het formaat extensie.
1. Roep een van de [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) methoden op de [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) object en specificeer het gewenste uitvoerformaat als PDF door een bestandsnaam in te voeren met de extensie PDF.

Het volgende voorbeeld van code laat zien hoe u een document van DOCX naar PDF met behulp van de [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/#str) methode:

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "docx-to-pdf.py" >}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

Soms is het noodzakelijk om extra opties te specificeren, die het resultaat kunnen beïnvloeden van het opslaan van een document als PDF. Deze opties kunnen worden gespecificeerd door het gebruik van de [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) klasse, met eigenschappen die bepalen hoe de PDF-uitvoer wordt weergegeven.

Merk op dat met dezelfde techniek, kunt u elke flow-layout formaat document converteren naar PDF-formaat.

{{% /alert %}}

### Naar verschillende PDF converteren Normen {#convert-to-various-pdf-standards}

Aspose.Words levert de [PdfCompliace](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/) Lijst ter ondersteuning van de omzetting van DOC of DOCX in verschillende PDF-formaatstandaarden (zoals PDF 1.7, PDF 1.5, enz.).

Het volgende voorbeeld van code laat zien hoe u een document kunt converteren naar PDF 1.7 met behulp van [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) met de naleving van [PDF17](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf17):

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "conversion-to-pdf17.py" >}}

## Afbeeldingen omzetten naar PDF

Converteren naar PDF is niet beperkt door Microsoft Word documentformaten. Elk formaat ondersteund door Aspose.Words, inclusief programmatisch gemaakt, kan ook worden omgezet naar PDF. We kunnen bijvoorbeeld single-page afbeeldingen, zoals JPEG, PNG, BMP, EMF, of WMF, evenals multi-page afbeeldingen, zoals TIFF en GIF, converteren naar PDF.

Het volgende voorbeeld van code laat zien hoe je JPEG- en TIFF-afbeeldingen naar PDF kunt converteren:

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "image-to-pdf.py" >}}

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "convert-image-to-pdf.py" >}}

Om deze code te laten werken, moet u referenties toevoegen aan Aspose.Words en `aspose.pydrawing` op uw project.

## PDF verkleinen Uitvoergrootte

Bij het opslaan naar PDF kunt u aangeven of u de uitvoer wilt optimaliseren. Om dit te doen, moet u de [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) vlag naar true, en dan redundante geneste doeken en lege doeken worden verwijderd, buurman glyphs met dezelfde opmaak zal worden samengevoegd.

{{% alert color="primary" %}}

Gebruik van de **OptimizeOutput** eigenschap kan invloed hebben op de nauwkeurigheid van de inhoud.

{{% /alert %}}

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "optimize-output.py" >}}

## PDF verkleinen Uitvoergrootte

Bij het opslaan naar PDF kunt u aangeven of u de uitvoer wilt optimaliseren. Om dit te doen, moet u de [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) vlag naar true, en dan redundante geneste doeken en lege doeken worden verwijderd, buurman glyphs met dezelfde opmaak zal worden samengevoegd.

{{% alert color="primary" %}}

Gebruik van de **OptimizeOutput** eigenschap kan invloed hebben op de nauwkeurigheid van de inhoud.

{{% /alert %}}

## Zie ook

- Het artikel [Renderen](/words/nl/python-net/rendering/) voor meer informatie over de fixed-page en flow-layout formaten
- Het artikel [Omzetten naar Fixed-page Format](/words/python-net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) voor meer informatie over de pagina-indeling
- Het artikel [Renderopties opgeven bij omzetten naar PDF](/words/nl/python-net/specify-rendering-options-when-converting-to-pdf/) voor meer informatie over het gebruik van de [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) klasse
