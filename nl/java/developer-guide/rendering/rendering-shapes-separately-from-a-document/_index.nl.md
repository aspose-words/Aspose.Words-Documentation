---
title: Vormen renderen Los van een document
second_title: Aspose.Words voor Java
articleTitle: Vormen renderen Los van een document
linktitle: Vormen renderen Los van een document
description: "Uitpakken van verschillende grafische objecten, zoals afbeeldingen, tekstvak met paragrafen, of pijlvormen, bij het verwerken van een document, en exporteren naar een externe locatie met behulp van Java."
type: docs
weight: 40
url: /nl/java/rendering-shapes-separately-from-a-document/
timestamp: 2024-01-27-14-07-04
---

Bij het verwerken van documenten is het een gemeenschappelijke taak om alle afbeeldingen uit het document te halen en naar een externe locatie te exporteren. Deze taak wordt eenvoudig met de Aspose.Words API, die al de functionaliteit biedt voor het extraheren en opslaan van afbeeldingsgegevens. Echter, soms wilt u misschien ook andere soorten grafische inhoud die worden vertegenwoordigd door een ander type tekenobject, bijvoorbeeld een tekstvak met paragrafen, pijlvormen en een kleine afbeelding. Er is geen eenvoudige manier om dit object te renderen omdat het een combinatie is van individuele inhoudselementen. U kunt ook een geval tegenkomen wanneer de inhoud is gegroepeerd in het object dat lijkt op een enkele afbeelding.

Aspose.Words biedt functionaliteit voor het extraheren van dit type inhoud op dezelfde manier als u een eenvoudige afbeelding uit vorm kunt halen als weergegeven inhoud. Dit artikel beschrijft hoe u deze functionaliteit kunt gebruiken om vormen onafhankelijk van het document te maken.

## Vormtypes in Aspose.Words

Alle inhoud in een document tekening laag wordt weergegeven door de [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) of [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) knooppunt in de Aspose.Words Documentobjectmodule (DOM). Dergelijke inhoud kunnen tekstvakjes, afbeeldingen, AutoShapes, OLE objecten, enz. zijn. Sommige velden worden ook geïmporteerd als vormen, bijvoorbeeld de `INCLUDEPICTURE` veld.

Een eenvoudige afbeelding wordt weergegeven door een **Shape** knooppunt van [ShapeType.Image](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#IMAGE). Deze vorm knooppunt heeft geen dochter knooppunten, maar de afbeelding gegevens in deze vorm knooppunt kan worden benaderd door de [Shape.ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData) eigendom. Aan de andere kant kan een vorm ook worden opgebouwd uit vele kindknooppunten. Bijvoorbeeld, een tekst box vorm, die wordt vertegenwoordigd door de [ShapeType.TextBox](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#TEXT-BOX) eigendom, kan bestaan uit vele knooppunten, zoals [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) en [Table](https://reference.aspose.com/words/java/com.aspose.words/table/). De meeste vormen kunnen de **Paragraph** en **Table** blok-level knooppunten. Dit zijn dezelfde knooppunten als die in het hoofdlichaam. Vormen zijn altijd onderdelen van een alinea, ofwel direct in de lijn of verankerd aan de **Paragraaf** maar op de documentpagina.

![rendering-shapes-separately-from-a-document-aspose-words-java-1](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Een document kan ook vormen bevatten die gegroepeerd zijn. Groupkan worden ingeschakeld in Microsoft Word door meerdere objecten te selecteren en te klikkenGroupIn het rechterklikmenu.

![rendering-shapes-separately-from-a-document-aspose-words-java-2](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

In Aspose.Words, Deze groepen vormen worden vertegenwoordigd door de [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) Node. Deze kunnen ook op dezelfde manier worden aangeroepen om de hele groep aan de afbeelding te geven.

![rendering-shapes-separately-from-a-document-aspose-words-java-3](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

Het DOCX-formaat kan speciale soorten afbeeldingen bevatten, zoals diagrammen of grafieken. Deze vormen zijn ook vertegenwoordigd door de **Shape** knooppunt in Aspose.Words, die ook een vergelijkbare methode voor het renderen van hen als beelden biedt. Door ontwerp kan een vorm geen andere vorm als kind bevatten, tenzij die vorm een afbeelding is (**ShapeType.Image**). Bijvoorbeeld, Microsoft Word staat niet toe dat u een tekstvak in een ander tekstvak plaatst.

De hierboven beschreven vormen bieden een speciale methode om de vormen door de [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) Klasse. Een voorbeeld van de **ShapeRenderer** klasse is opgehaald voor een **Shape** of **GroupShape** door de **GetShapeRenderer** methode of door de **Shape** aan de constructeur van de **ShapeRenderer** Klasse. Deze klasse biedt toegang tot leden, die het mogelijk maken een vorm te geven aan het volgende:

- Bestand op de schijf met behulp van de [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) methode overbelasting
- Stream met de [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.io.OutputStream-com.aspose.words.ImageSaveOptions) methode overbelasting
- Graphics Object door de [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToSize-java.awt.Graphics2D-float-float-float-float) en [RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) methoden

{{% alert color="primary" %}}

Wanneer een <span notrans="<span notrans=" **Shape**"=""></span>,"> het moet deel uitmaken van de documenthiërarchie. Indien de **Shape** is geen deel van de documentboom dan zal de weergegeven uitvoer leeg zijn na aanroepen **ShapeRenderer** methoden.

{{% /alert %}}

## Renderen naar bestand of stroom

De [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) methode biedt overbelasting die een vorm direct aan een bestand of stroom. Beide overbelasting accepteren een geval van de [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) klasse, die het definiëren van opties voor het renderen van de vorm mogelijk maakt. Dit werkt op dezelfde manier als de [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) methode. Hoewel deze parameter vereist is, kunt u een nulwaarde doorgeven, waarbij wordt aangegeven dat er geen aangepaste opties zijn.

De vorm kan worden geëxporteerd in elk afbeeldingsformaat dat in de [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) Samenvatting. Bijvoorbeeld, de afbeelding kan worden weergegeven als een raster afbeelding, zoals JPEG door het specificeren van de [SaveFormat.Jpeg](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#JPEG) opsomming, of als vectorbeeld, zoals EMF door het specificeren van de [SaveFormat.Emf](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#EMF).

Het onderstaande codevoorbeeld illustreert het renderen van een vorm naar een EMF-afbeelding apart van het document, en opslaan naar schijf:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToDisk.java" >}}

Het onderstaande voorbeeld illustreert het renderen van een vorm naar een JPEG-afbeelding apart van het document, en opslaan naar een stroom:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToStream.java" >}}

De **ImageSaveOptions** klasse kunt u een verscheidenheid aan opties die bepalen hoe de afbeelding wordt weergegeven. De hierboven beschreven functionaliteit kan op dezelfde wijze worden toegepast op de **GroupShape** en **Shape** knooppunten.

## Renderen naar een `Graphics` Object

Direct naar een **Graphics** object kunt u uw eigen instellingen en de status voor de **Graphics** object. Een gemeenschappelijk scenario houdt in dat een vorm direct in een **Graphics** object opgehaald uit a Windows Vorm of een Bitmap. Wanneer de **Shape** knooppunt wordt weergegeven, de instellingen zullen invloed hebben op het uiterlijk van de vorm. U kunt bijvoorbeeld de vorm draaien of schalen door gebruik te maken van de **RotateTransform** of **ScaleTransform** methoden voor de **Graphics** object.

Het voorbeeld hieronder laat zien hoe een vorm aan een **Graphics** object apart van het document en draai op de weergegeven afbeelding:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToGraphics.java" >}}

De Voorzitter. - Aan de orde is het gecombineerd debat over [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float) methode, de [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float)methode geërfd van de [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) is nuttig voor het maken van miniaturen van documentinhoud. De vormgrootte wordt gespecificeerd door de constructeur. De **RenderToSize** methode accepteert de **Graphics** object, de X en Y coördinaten van de afbeelding positie, en de grootte van de afbeelding (breedte en hoogte) die zal worden getrokken op de **Graphics** object.

De **Shape** kan met behulp van de [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) methode geërfd van de [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) Klasse. Dit is vergelijkbaar met de [Document.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) methode die dezelfde belangrijke parameters accepteert. Het verschil tussen deze twee methoden is dat met de **ShapeRenderer.RenderToScale** methode, in plaats van een letterlijke grootte, kies je een float waarde die de vorm schalen tijdens de weergave. Als de floatwaarde gelijk is aan 1.0 zorgt ervoor dat de vorm wordt weergegeven op 100% van de oorspronkelijke grootte. Een floatwaarde van 0,5 zal de afbeeldingsgrootte met de helft verminderen.

## Een vormafbeelding renderen

De [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) klasse representeert objecten in de tekenlaag, zoals een AutoShape, tekstvak, vrije vorm, OLE-object, ActiveX-besturing of een afbeelding. Gebruik van de **Shape** klasse, kunt u vormen maken of wijzigen in een Microsoft Word document. Een belangrijke eigenschap van een vorm is zijn [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/). Vormen van verschillende soorten kunnen verschillende mogelijkheden hebben in een Word-document. Bijvoorbeeld, alleen afbeeldingen en OLE-vormen kunnen beelden in zich hebben, terwijl de meeste vormen alleen tekst kunnen hebben.

Het volgende voorbeeld laat zien hoe je een vormafbeelding apart van het document naar een JPEG-afbeelding kunt renderen en opslaan op de schijf:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeImage.java" >}}

## Een vormgrootte ophalen

De [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) klasse biedt ook functionaliteit om de grootte van de vorm in pixels op te halen via de [GetSizeInPixels](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float) methode. Deze methode accepteert twee float (Single) parameters, de schaal en DPI, die worden gebruikt bij de berekening van de vormgrootte wanneer de vorm wordt weergegeven. De methode geeft de [Size](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float) object, dat de breedte en hoogte van de berekende grootte bevat. Dit is handig wanneer het nodig is om de grootte van de weergegeven vorm van tevoren te weten, bijvoorbeeld bij het maken van een nieuwe Bitmap van de weergegeven uitvoer.

Het onderstaande voorbeeld laat zien hoe je een nieuw Bitmap en Graphics object kunt maken met de breedte en hoogte van de te renderen vorm:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-FindShapeSizes.java" >}}

Bij gebruik van de **RenderToSize** of **RenderToScale** methoden, de weergegeven afbeelding grootte wordt ook teruggegeven in de [SizeF](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#renderToScale-java.awt.Graphics2D-float-float-float) object. Dit kan aan een variabele worden toegewezen en indien nodig worden gebruikt.

De **SizeInPoints** eigenschap geeft de vormgrootte terug gemeten in punten (zie [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/)). Het resultaat is een `SizeF` object met de breedte en hoogte.
