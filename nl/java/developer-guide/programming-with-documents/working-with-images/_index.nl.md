---
title: Werken met afbeeldingen in Java
second_title: Aspose.Words voor Java
articleTitle: Werken met afbeeldingen
linktitle: Werken met afbeeldingen
type: docs
description: "Beeldvormen in details en geavanceerde functies die door Aspose.Words voor Java."
weight: 300
url: /nl/java/working-with-images/
---

Aspose.Words stelt gebruikers in staat om met beelden te werken op een zeer flexibele manier. In dit artikel kunt u slechts enkele mogelijkheden verkennen om met beelden te werken.

## Afbeeldingen uit een document halen {#how-to-extract-images-from-a-document}

Alle afbeeldingen worden binnen opgeslagen **Shape** knooppunten in een document. Volg deze stappen om alle afbeeldingen of afbeeldingen met een specifiek type uit het document te halen:

- Gebruik de [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChildNodes) methode om alle vormenknopen te selecteren.
- Itreer door de resulterende node collecties.
- Controleer de [hasImage](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasImage) Booleaans eigendom.
- Uitpakken afbeelding gegevens met behulp van de [ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData) eigendom.
- Afbeeldingsgegevens opslaan in een bestand.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-ExtractImagesToFiles-ExtractImagesToFiles.java" >}}

## Barcode invoegen op elke Documentpagina {#how-to-insert-barcode-on-each-documen-page}

Met dit voorbeeld kunt u dezelfde of verschillende barcodes toevoegen op alle of specifieke pagina's van een Word-document. Er is geen directe manier om barcodes toe te voegen op alle pagina's van een document, maar u kunt gebruiken [moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int), [moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) en [insertImage](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertImage(byte[])) methoden om te verplaatsen naar een sectie of headers/voeters en voeg de barcode afbeeldingen zoals je kunt zien in de volgende code

Het volgende voorbeeld van code laat zien hoe je een barcode afbeelding op elke pagina van een document invoegt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeImage.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeIntoFooter.java" >}}

## Beeldverhouding vergrendelen {#lock-aspect-ratio-of-image}

De beeldverhouding van een geometrische vorm is de verhouding van zijn afmetingen in verschillende afmetingen. U kunt de beeldverhouding van een afbeelding vergrendelen met behulp van [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAspectRatioLocked). De standaardwaarde van de beeldverhouding van de vorm hangt af van de [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/). Het is true voor `ShapeType.Image` en false voor andere vormen.

Het volgende voorbeeld van code laat zien hoe te werken met aspect ratio:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetImageAspectRatioLocked-DocumentBuilderSetImageAspectRatioLocked.java" >}}

## Hoe krijg ik feitelijke grenzen van vorm in punten {#how-to-get-actual-bounds-of-shape-in-points}

Als u wilt de werkelijke gebonden doos van de vorm zoals weergegeven op de pagina, kunt u dit bereiken met behulp van de [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getBoundsInPoints) eigendom.

Het volgende voorbeeld van code laat zien hoe deze eigenschap te gebruiken:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Afbeeldingen bijsnijden

Het verzamelen van een afbeelding verwijst meestal naar het verwijderen van de ongewenste buitenste delen van een afbeelding om te helpen bij het verbeteren van de lijst. Het wordt ook gebruikt voor het verwijderen van sommige delen van een afbeelding om de focus op een bepaald gebied te vergroten.

Het volgende voorbeeld van code laat zien hoe dit te bereiken met behulp van Aspose.Words API:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImageCall.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImage.java" >}}

## Afbeeldingen opslaan als WMF

Aspose.Words biedt functionaliteit om alle beschikbare afbeeldingen op te slaan in een document aan [WMF](https://docs.fileformat.com/image/wmf/)formaat tijdens het omzetten van DOCX naar RTF.

Het volgende voorbeeld van code laat zien hoe u afbeeldingen als WMF kunt opslaan met RTF-opslaanopties:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.java" >}}
