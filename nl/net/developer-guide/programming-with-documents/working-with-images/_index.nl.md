---
title: Werken met afbeeldingen in C#
second_title: Aspose.Words voor .NET
articleTitle: Werken met afbeeldingen
linktitle: Werken met afbeeldingen
description: "Beeldvormen in details en geavanceerde functies die door Aspose.Words voor .NET."
type: docs
weight: 300
url: /nl/net/working-with-images/
---

Aspose.Words stelt gebruikers in staat om met beelden te werken op een zeer flexibele manier. In dit artikel kunt u slechts enkele mogelijkheden verkennen om met beelden te werken.

## Hoe een afbeelding invoegen {#insert-an-image}

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) zorgt voor meerdere overbelasting van de [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/) methode waarmee u een inline of zwevend beeld kunt invoegen. Als de afbeelding een EMF- of WMF-metafile is, wordt deze in het document in metafile formaat ingevoegd. Alle andere afbeeldingen worden opgeslagen in PNG-formaat. De **InsertImage** methode kan afbeeldingen uit verschillende bronnen gebruiken:

- Van een bestand of `URL` door een `String` parameter [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/)
- Van een stroom door een `Stream` parameter **InsertImage**
- Van een afbeeldingsobject door een afbeeldingsparameter door te geven **InsertImage**
- Van een bytearray door een bytearray parameter door te geven **InsertImage**

Voor elk van de **InsertImage** methoden, er zijn verdere overbelastingen die u toelaten om een afbeelding met de volgende opties:
- Inline of drijvend op een specifieke positie, bijvoorbeeld, **InsertImage**
- Percentage schaal of aangepaste grootte, bijvoorbeeld, **InsertImage**; **InsertImage** methode geeft a [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) object dat net is aangemaakt en ingevoegd zodat u de eigenschappen van de vorm verder kunt wijzigen

### Hoe een inline afbeelding invoegen {#insert-an-inline-image}

Geef een enkele tekenreeks door die een bestand weergeeft dat de afbeelding bevat **InsertImage** de afbeelding in het document in te voegen als inline grafisch

Het volgende voorbeeld van code laat zien hoe je een inline afbeelding op de cursorpositie in een document invoegt:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cs" >}}

### Hoe een drijvende afbeelding invoegen {#insert-a-floating-image}

Het volgende voorbeeld van code laat zien hoe u een zwevende afbeelding van een bestand of `URL` op een bepaalde positie en grootte:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cs" >}}

## Afbeeldingen uit een document halen {#how-to-extract-images-from-a-document}

Alle afbeeldingen worden binnen opgeslagen **Shape** nodes in a [Document](https://reference.aspose.com/words/net/aspose.words/document/). Volg deze stappen om alle afbeeldingen of afbeeldingen met een specifiek type uit het document te halen:

- Gebruik de [GetChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/getchildnodes/) methode om alles te selecteren **Shape** knooppunten.
- Iterate door resulterende node collecties.
- Controleer de [HasImage](https://reference.aspose.com/words/net/aspose.words.drawing/shape/hasimage/) Booleaans eigendom.
- Uitpakken afbeelding gegevens met behulp van de [ImageData](https://reference.aspose.com/words/net/aspose.words.drawing/shape/imagedata/) eigendom.
- Afbeeldingsgegevens opslaan in een bestand.

Het volgende voorbeeld van code laat zien hoe je afbeeldingen uit een document haalt en ze opslaat als bestanden:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cs" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Images.docx).

{{% /alert %}}

## Barcode op elke Documentpagina invoegen {#how-to-insert-barcode-on-each-documen-page}

Dit voorbeeld toont aan dat u dezelfde of verschillende barcodes toevoegt op alle of specifieke pagina's van een Word-document. Er is geen directe manier om barcodes toe te voegen op alle pagina's van een document, maar u kunt de **MoveToSection**, **MoveToHeaderFooter** en **InsertImage** methoden om te verplaatsen naar een sectie of headers/voeters en voeg de barcode afbeeldingen zoals je kunt zien in de volgende code.

Het volgende voorbeeld van code laat zien hoe je een barcode afbeelding op elke pagina van een document invoegt:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeImage.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeIntoFooter.cs" >}}

## Beeldverhouding vergrendelen {#lock-aspect-ratio-of-image}

De beeldverhouding van een geometrische vorm is de verhouding van zijn afmetingen in verschillende afmetingen. U kunt de beeldverhouding vergrendelen met behulp van [AspectRatioLocked](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/aspectratiolocked/). De standaardwaarde van de beeldverhouding van de vorm hangt af van de [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/). Het is *true* voor `ShapeType.Image` en *false* voor andere vormen.

Het volgende voorbeeld van code laat zien hoe te werken met aspect ratio:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## Hoe feitelijke grenzen van vorm in punten te krijgen {#how-to-get-actual-bounds-of-shape-in-points}

Als u wilt dat de werkelijke gebonden doos van de vorm zoals weergegeven op de pagina, kunt u dit bereiken met behulp van de [BoundsInPoints](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/boundsinpoints/) eigendom.

Het volgende voorbeeld van code laat zien hoe deze eigenschap te gebruiken:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## Afbeeldingen bijsnijden {#crop-images}

Het verzamelen van een afbeelding verwijst meestal naar het verwijderen van de ongewenste buitendelen van een afbeelding om te helpen bij het verbeteren van de lijst. Het wordt ook gebruikt voor het verwijderen van sommige delen van een afbeelding om de focus op een bepaald gebied te verhogen.

Het volgende voorbeeld toont hoe dit te bereiken met behulp van Aspose.Words API:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImageCall.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImage.cs" >}}

## Afbeeldingen opslaan als WMF {#save-images-as-wmf}

Aspose.Words biedt functionaliteit om alle beschikbare afbeeldingen op te slaan in een document aan [WMF](https://docs.fileformat.com/image/wmf/)formaat tijdens het omzetten van DOCX naar RTF.

Het volgende voorbeeld van code laat zien hoe u afbeeldingen als WMF kunt opslaan met RTF-opslaanopties:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cs" >}}
