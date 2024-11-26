---
title: Een document omzetten naar een afbeelding in Java
second_title: Aspose.Words voor Java
articleTitle: Een document omzetten naar een afbeelding
linktitle: Een document omzetten naar een afbeelding
type: docs
description: "Een document omzetten naar afbeeldingsformaat (JPG, PNG, etc). Een documentvoorbeeld aanmaken of een documentscan maken om een factuur te versturen met behulp van Java."
weight: 35
url: /nl/java/convert-a-document-to-an-image/
timestamp: 2024-01-27-14-07-04
---

Soms is het nodig om een afbeelding in plaats van documenten in andere formaten, zoals DOCX of PDF. U moet bijvoorbeeld een voorbeeld van een documentpagina aan uw website of toepassing toevoegen of een "scan" van een document maken om een factuur te versturen. Dit is wanneer u nodig hebt om een document te converteren in een [ondersteund laadformaat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) naar een afbeelding, opnieuw, in elke [ondersteund Formaat opslaan](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

## Converteren naar afbeeldingsformaat

Zoals alle reeds beschreven conversievoorbeelden, moet u een nieuw document maken of een bestaand document laden in elk ondersteund formaat, de nodige wijzigingen aanbrengen en opslaan in elk beschikbaar afbeeldingsformaat, bijvoorbeeld JPEG, PNG of BMP.

De volgende code voorbeeld laat zien hoe je DOCX converteren naar JPEG:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocxToJpeg.java" >}}

## Opties opslaan bij omzetten naar een afbeelding

Aspose.Words geeft u de [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) klasse, wat meer controle geeft over hoe documenten worden opgeslagen in verschillende afbeeldingsformaten. Sommige eigenschappen van deze klasse erven of overbelasting eigenschappen van basisklassen zoals [FixedPageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/) of [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/), maar er zijn ook opties specifiek voor het opslaan van afbeeldingen.

Het is mogelijk om de pagina's om te zetten naar afbeelding formaat met behulp van de [PageSet](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPageSet) eigendom. Bijvoorbeeld, het kan worden toegepast als je alleen een voorbeeld voor de eerste of voor een bepaalde pagina.

Het is ook mogelijk om de output beeldkwaliteit en pixelformaat met behulp van de volgende eigenschappen te controleren. [HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat), evenals instellingen voor afbeeldingskleur instellen, met behulp van de volgende eigenschappen: [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageContrast), [PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor).

Er zijn ook eigenschappen die van toepassing zijn op een bepaald formaat, bijvoorbeeld, [JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality) of [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression).

Het volgende voorbeeld van code laat zien hoe u een voorbeeld van de eerste documentpagina kunt maken met een aantal extra instellingen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocumentToImage.java" >}}
