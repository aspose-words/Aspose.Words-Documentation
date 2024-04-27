---
title: Een document omzetten naar PDF in Java
second_title: Aspose.Words voor Java
articleTitle: Een document omzetten naar PDF
linktitle: Een document omzetten naar PDF
description: "Converteer een document in Word of een ander ondersteund formaat naar PDF, die het oorspronkelijke uiterlijk van een document tijdens het renderen op verschillende platforms behoudt met behulp van Java."
type: docs
weight: 10
url: /nl/java/convert-a-document-to-pdf/
---

De mogelijkheid om gemakkelijk en betrouwbaar documenten te converteren van het ene formaat naar het andere is een belangrijke functie van Aspose.Words. Een van de meest populaire formaten voor het omzetten is PDF een vaste-layout formaat, die het oorspronkelijke uiterlijk van een document tijdens de weergave op verschillende platforms behoudt. De term "rendering" wordt gebruikt in Aspose.Words beschrijven van het proces van het omzetten van een document in een bestandsformaat dat wordt gepagineerd of heeft het concept van pagina's.

## Een Word-document omzetten naar PDF {#convert-a-word-document-to-pdf}

Conversie van Word naar PDF is een vrij complex proces dat verschillende fasen van berekening vereist. Aspose.Words lay-out motor bootst de manier Microsoft WordDe pagina lay-out engine werkt, waardoor PDF-uitvoerdocumenten zo dicht mogelijk bij wat je kunt zien in Microsoft Word.

Met Aspose.Words u kunt programmatisch converteren van een document van DOC of DOCX-formaat naar PDF zonder gebruik Microsoft Kantoor. Dit artikel legt uit hoe u deze conversie kunt uitvoeren.

{{% alert color="primary" %}}

Merk op dat het aantal pagina's in een document de conversietijd beïnvloedt.

{{% /alert %}}

### Het omzetten van DOCX of DOC naar PDF {#converting-doc-or-docx-to-pdf}

Converteren van het DOC- of DOCX-documentformaat naar het PDF-formaat in Aspose.Words is zeer gemakkelijk en kan worden bereikt met slechts twee regels van code die:

1. Uw document laden in a [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) object met behulp van een van de constructeurs door het specificeren van de documentnaam met de formatextensie.
1. Roep een van de [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) methoden op de **Document** object en specificeer het gewenste uitvoerformaat als PDF door een bestandsnaam in te voeren met de extensie PDF.

De volgende code voorbeeld laat zien hoe u een document van DOCX in PDF met behulp van de `Save` methode:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ConvertImageToPdf/Template.doc).

{{% alert color="primary" %}}

Soms is het noodzakelijk om extra opties op te geven, die het resultaat kunnen beïnvloeden van het opslaan van een document als PDF. Deze opties kunnen worden gespecificeerd door het gebruik van de [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) klasse, met eigenschappen die bepalen hoe de PDF-uitvoer wordt weergegeven.

Merk op dat met dezelfde techniek, kunt u elke flow-layout formaat document converteren naar PDF-formaat.

{{% /alert %}}

### Naar verschillende PDF converteren Normen {#converting-to-various-pdf-standards}

Aspose.Words levert de [PdfCompliace](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/)Lijst ter ondersteuning van de omzetting van DOC of DOCX in verschillende PDF-formaatstandaarden (zoals PDF 1.7, PDF 1.5, enz.).

Het volgende voorbeeld van code toont hoe een document naar PDF 1.7 te converteren met behulp van [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) met inachtneming van PDF17:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "conversion-to-pdf17.java" >}}

## Afbeeldingen omzetten naar PDF

Converteren naar PDF is niet beperkt door Microsoft Word documentformaten. Elk formaat ondersteund door Aspose.Words, inclusief programmatisch gemaakt, kan ook worden omgezet naar PDF. We kunnen bijvoorbeeld single-page afbeeldingen, zoals JPEG, PNG, BMP, EMF, of WMF, maar ook multi-page afbeeldingen, zoals TIFF en GIF, omzetten naar PDF.

Het volgende voorbeeld van code laat zien hoe je JPEG- en TIFF-afbeeldingen kunt converteren naar PDF:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "image-to-pdf.java" >}}

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "convert-image-to-pdf.java" >}}

Om deze code te laten werken, moet je referenties toevoegen aan Aspose.Words, Java.awt.image, en javax. afbeeldingsklasse pakketten voor uw project.

## PDF verkleinen Uitvoergrootte

Bij het opslaan naar PDF kunt u aangeven of u de uitvoer wilt optimaliseren. Om dit te doen, moet u de [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) vlag naar true, en dan zal overbodig geneste doeken en lege doeken worden verwijderd, buurman glyphs met dezelfde opmaak zal worden samengevoegd.

Het volgende voorbeeld van code laat zien hoe u de output kunt optimaliseren:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "optimize-output.java" >}}

{{% alert color="primary" %}}

Gebruik van de **OptimizeOutput** eigenschap kan invloed hebben op de nauwkeurigheid van de inhoudweergave.

{{% /alert %}}

## Zie ook

- Het artikel [Renderen](/words/nl/java/rendering/) voor meer informatie over de fixed-page en flow-layout formaten
- Het artikel [Omzetten naar Fixed-Pagina Format](/words/java/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) voor meer informatie over de pagina-indeling
- Het artikel [Renderopties weergegeven bij omzetten naar PDF](/words/nl/java/specify-rendering-options-when-converting-to-pdf/) voor meer informatie over het gebruik van de `PdfSaveOptions` klasse
