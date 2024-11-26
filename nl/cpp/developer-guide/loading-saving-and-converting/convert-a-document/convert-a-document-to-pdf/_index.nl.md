---
title: Een Document converteren naar PDF in C++
second_title: Aspose.Words voor C++
articleTitle: Een Document converteren naar PDF
linktitle: Een Document converteren naar PDF
description: "Converteer een document naar PDF met C++. Verschillende invoerformaten worden ondersteund, waaronder Word, OpenOffice, Image en eBook formaten."
type: docs
weight: 10
url: /nl/cpp/convert-a-document-to-pdf/
timestamp: 2024-10-21-08-52-03
---

De mogelijkheid om documenten eenvoudig en betrouwbaar van het ene formaat naar het andere te converteren is een belangrijk kenmerk van Aspose.Words. Een van de meest populaire formaten voor het converteren is PDF – Een indeling met vaste lay-out, die het oorspronkelijke uiterlijk van een document behoudt tijdens het renderen op verschillende platforms. De term "rendering" wordt gebruikt in Aspose.Words om het proces te beschrijven van het converteren van een document naar een bestandsindeling die is gepagineerd of het concept van pagina ' s heeft.

## Een Word Document converteren naar PDF {#convert-a-word-document-to-pdf}

Conversie van Word naar PDF is een vrij complex proces dat verschillende stadia van berekening vereist. Aspose.Words layout engine bootst de manier na waarop de pagina-layout engine van Microsoft Word werkt, waardoor PDF uitvoerdocumenten zo dicht mogelijk lijken op wat u in Microsoft Word kunt zien.

Met Aspose.Words kunt u een document programmatisch converteren van DOC of DOCX formaat naar PDF zonder Microsoft Office te gebruiken. In dit artikel wordt uitgelegd hoe u deze conversie uitvoert.

{{% alert color="primary" %}}

Merk op dat het aantal pagina ' s in een document van invloed is op de conversietijd.

{{% /alert %}}

### DOCX of DOC omzetten naar PDF {#converting-doc-or-docx-to-pdf}

Het converteren van het DOC of DOCX documentformaat naar het PDF formaat in Aspose.Words is zeer eenvoudig en kan worden bereikt met slechts twee regels code die:

1. Laad uw document in een [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) - object met behulp van een van de constructors door de documentnaam met de opmaakextensie op te geven.
1. Roep een van de [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) methoden op het **Document** object aan en geef het gewenste uitvoerformaat op als PDF door een bestandsnaam in te voeren met de ".PDF" uitbreiding.

Het volgende codevoorbeeld laat zien hoe u een document van DOCX naar PDF converteert met de methode `Save`:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "docx-to-pdf.h" >}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% alert color="primary" %}}

Soms is het nodig om extra opties op te geven, wat van invloed kan zijn op het resultaat van het opslaan van een document als PDF. Deze opties kunnen worden opgegeven door gebruik te maken van de [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) - klasse, die eigenschappen bevat die bepalen hoe de PDF - uitvoer wordt weergegeven.

Merk op dat u met dezelfde techniek elk document in flow-layout-indeling kunt converteren naar PDF - indeling.

{{% /alert %}}

### Converteren naar verschillende PDF standaarden {#converting-to-various-pdf-standards}

Aspose.Words biedt de [PdfCompliace](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_compliance/) opsomming ter ondersteuning van de omzetting van DOC of DOCX in verschillende PDF formaat standaarden (zoals PDF 1.7, PDF 1.5, enz.).

Het volgende codevoorbeeld laat zien hoe u een document converteert naar PDF 1.7 met behulp van [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) met naleving van PDF17:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "conversion-to-pdf17.h" >}}

## Afbeeldingen converteren naar PDF {#convert-an-image-to-pdf}

Het converteren naar PDF wordt niet beperkt door Microsoft Word documentindelingen. Elk formaat dat door Aspose.Words wordt ondersteund, inclusief programmatisch gemaakt, kan ook worden geconverteerd naar PDF. We kunnen bijvoorbeeld afbeeldingen van één pagina converteren, zoals JPEG, PNG, BMP, EMF, of WMF, evenals afbeeldingen met meerdere pagina ' s, zoals TIFF en GIF, tot PDF.

Het volgende codevoorbeeld laat zien hoe JPEG en TIFF afbeeldingen converteren naar PDF:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "image-to-pdf.h" >}}

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "convert-image-to-pdf.h" >}}

Om deze code te laten werken, moet u verwijzingen naar Aspose.Words en `System.Drawing` aan uw project toevoegen.

## Zie Ook

- Artikel [Rendering](/words/cpp/rendering/) voor meer informatie over de formaten fixed-page en flow-layout
- Artikel [Omzetten naar vaste pagina-indeling](/words/cpp/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) voor meer informatie over de pagina lay-out
- Artikel [Geef weergaveopties op bij het converteren naar PDF](/words/cpp/specify-rendering-options-when-converting-to-pdf/) voor meer informatie over het gebruik van de `PdfSaveOptions` klasse
