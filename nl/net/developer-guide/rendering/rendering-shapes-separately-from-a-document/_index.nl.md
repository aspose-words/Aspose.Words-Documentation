---
title: Vormen renderen Los van document
second_title: Aspose.Words voor .NET
articleTitle: Vormen renderen Los van een document
linktitle: Vormen renderen Los van een document
description: "Uitpakken van verschillende grafische objecten, zoals afbeeldingen, tekstvak met paragrafen, of pijlvormen, bij het verwerken van een document, en exporteren naar een externe locatie met behulp van C#."
type: docs
weight: 40
url: /nl/net/rendering-shapes-separately-from-a-document/
timestamp: 2024-07-10-14-38-57
---

Bij het verwerken van documenten is het een gemeenschappelijke taak om alle afbeeldingen in het document uit te pakken en naar een externe locatie te exporteren. Deze taak wordt eenvoudig met de Aspose.Words API, die al de functionaliteit biedt voor het extraheren en opslaan van afbeeldingsgegevens. Echter, soms wilt u misschien ook andere soorten grafische inhoud die wordt vertegenwoordigd door een ander type tekenobject, bijvoorbeeld een tekstvak met paragrafen, pijlvormen en een kleine afbeelding. Er is geen eenvoudige manier om dit object weer te geven omdat het een combinatie is van individuele inhoudselementen. U kunt ook een geval tegenkomen wanneer de inhoud is gegroepeerd in het object dat lijkt op een enkele afbeelding.

Aspose.Words biedt functionaliteit voor het extraheren van dit soort inhoud op dezelfde manier als u een eenvoudige afbeelding kunt halen uit een vorm als weergegeven inhoud. Dit artikel beschrijft hoe deze functionaliteit te gebruiken om vormen onafhankelijk van het document te maken.

## Vormtypen in Aspose.Words

Alle inhoud in een document tekening laag wordt weergegeven door de [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) of [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) in de Aspose.Words Documentobjectmodule (DOM). Dergelijke inhoud kunnen tekstvakjes, afbeeldingen, AutoShapes, OLE objecten, enz. zijn. Sommige velden worden ook geïmporteerd als vormen, bijvoorbeeld de `INCLUDEPICTURE` veld.

Een eenvoudige afbeelding wordt weergegeven door een **Shape** knooppunt van [ShapeType.Image](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/). Deze vorm knooppunt heeft geen kind knooppunten, maar de afbeelding gegevens in deze vorm knooppunt kan worden benaderd door de [Shape.ImageData](https://reference.aspose.com/words/net/aspose.words.drawing/shape/imagedata/) eigendom. Aan de andere kant kan een vorm ook worden opgebouwd uit vele kindknooppunten. Bijvoorbeeld, een tekst box vorm, die wordt vertegenwoordigd door de [ShapeType.TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/) eigendom, kan bestaan uit vele knooppunten, zoals [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) en [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/). De meeste vormen kunnen de **Paragraph** en **Table** blok-level knooppunten. Dit zijn dezelfde knooppunten als die in het hoofdlichaam. Vormen zijn altijd deel van een alinea, hetzij direct in de lijn of verankerd aan de **Paragraaf** maar op de documentpagina.

![rendering-shapes-separately-from-a-document_1](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Een document kan ook vormen bevatten die gegroepeerd zijn. Groupkan worden ingeschakeld in Microsoft Word door meerdere objecten te selecteren en te klikkenGroupIn het rechterklikmenu.

![rendering-shapes-separately-from-a-document_2](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

In Aspose.Words, Deze groepen vormen worden vertegenwoordigd door de [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) Node. Deze kunnen ook op dezelfde manier worden aangeroepen om de hele groep aan afbeelding te geven.

![rendering-shapes-separately-from-a-document_3](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

Het DOCX-formaat kan speciale soorten afbeeldingen bevatten, zoals diagrammen of grafieken. Deze vormen zijn ook vertegenwoordigd door de **Shape** knooppunt in Aspose.Words, die ook een vergelijkbare methode biedt om ze als afbeeldingen te maken. Door design kan een vorm geen andere vorm als kind bevatten, tenzij die vorm een afbeelding is (**ShapeType.Image**). Bijvoorbeeld, Microsoft Word u kunt geen tekstvak in een ander tekstvak plaatsen.

De hierboven beschreven vormen bieden een speciale methode om de vormen door de [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/) Klasse. Een voorbeeld van de **ShapeRenderer** klasse is opgehaald voor een **Shape** of **GroupShape** door de **GetShapeRenderer** methode of door de **Shape** aan de constructeur van de **ShapeRenderer** Klasse. Deze klasse biedt toegang tot leden, die het mogelijk maken een vorm te geven aan het volgende:

- Bestand op de schijf met behulp van de [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) methode overbelasting
- Stream met de [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) methode overbelasting
- .NET Grafieken Object door de [RenderToSize](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertosize/) en [RenderToScale](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/) methoden

{{% alert color="primary" %}}

Wanneer een <span notrans="<span notrans=" **Shape**"=""></span>,"> het moet deel uitmaken van de documenthiërarchie. Indien de **Shape** is geen deel van de documentboom dan zal de weergegeven uitvoer leeg zijn na aanroepen **ShapeRenderer** methoden.

{{% /alert %}}

## Renderen naar bestand of stroom

De [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) methode biedt overbelasting die een vorm direct aan een bestand of stroom. Beide overbelasting accepteren een geval van de [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) klasse, die het mogelijk maakt om opties voor het renderen van de vorm te definiëren. Dit werkt op dezelfde manier als de [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save) methode. Hoewel deze parameter vereist is, kunt u een nulwaarde doorgeven, met vermelding dat er geen aangepaste opties zijn.

De vorm kan worden geëxporteerd in elk afbeeldingsformaat dat in de [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/) Lijst. Bijvoorbeeld, de afbeelding kan worden weergegeven als een raster afbeelding, zoals JPEG door het specificeren van de [SaveFormat.Jpeg](https://reference.aspose.com/words/net/aspose.words/saveformat/) opsomming, of als vectorafbeelding, zoals EMF door het specificeren van de [SaveFormat.Emf](https://reference.aspose.com/words/net/aspose.words/saveformat/).

Het onderstaande voorbeeld illustreert het renderen van een vorm naar een EMF-afbeelding apart van het document, en opslaan naar schijf:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToDisk.cs" >}}

Het onderstaande codevoorbeeld illustreert het renderen van een vorm naar een JPEG-afbeelding apart van het document en opslaan naar een stream:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToStream.cs" >}}

De **ImageSaveOptions** klasse kunt u een verscheidenheid van opties die bepalen hoe de afbeelding wordt weergegeven. De hierboven beschreven functionaliteit kan op dezelfde wijze op de **GroupShape** en **Shape** knooppunten.

## Renderen naar een .NET Grafisch object

Direct naar een **Graphics** object kunt u uw eigen instellingen en de status voor de **Graphics** object. Een gemeenschappelijk scenario houdt in dat een vorm direct in een **Graphics** object opgehaald uit een Windows Vorm of een Bitmap. Wanneer de **Shape** knooppunt wordt weergegeven, de instellingen zullen de vorm verschijning beïnvloeden. U kunt bijvoorbeeld de vorm draaien of schalen door gebruik te maken van de **RotateTransform** of **ScaleTransform** methoden voor de **Graphics** object.

Het voorbeeld hieronder laat zien hoe je een vorm aan een .**NET Graphics** object apart van het document en draai op de weergegeven afbeelding:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToGraphics.cs" >}}

De Voorzitter. - Het debat is gesloten. [RenderToSize](https://reference.aspose.com/words/net/aspose.words/document/rendertosize/) methode, de [RenderToSize](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertosize/)methode geërfd van de [NodeRendererBase](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/) is nuttig voor het maken van miniaturen van een documentinhoud. De vormgrootte wordt gespecificeerd door de constructeur. De **RenderToSize** methode accepteert de **Graphics** object, de X en Y coördinaten van de afbeelding positie, en de grootte van de afbeelding (breedte en hoogte) die zal worden getrokken op de **Graphics** object.

De **Shape** kan worden weergegeven naar een bepaalde schaal met behulp van de [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/) methode geërfd van de [NodeRendererBase](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/) Klasse. Dit is vergelijkbaar met de [Document.RenderToScale](https://reference.aspose.com/words/net/aspose.words/document/rendertoscale/) methode die dezelfde belangrijke parameters accepteert. Het verschil tussen deze twee methoden is dat met de **ShapeRenderer.RenderToScale** methode, in plaats van een letterlijke grootte, kies je een float waarde die de vorm schalen tijdens de weergave. Als de floatwaarde gelijk is aan 1.0 zorgt ervoor dat de vorm wordt weergegeven op 100% van de oorspronkelijke grootte. Een floatwaarde van 0,5 zal de afbeeldingsgrootte met de helft verminderen.

## Een vormafbeelding renderen

De [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) klasse representeert objecten in de tekenlaag, zoals een AutoShape, tekstvak, vrije vorm, OLE object, ActiveX controle, of een afbeelding. Gebruik van de **Shape** klasse, kunt u vormen maken of wijzigen in een Microsoft Word document. Een belangrijke eigenschap van een vorm is zijn [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shape/base/properties/shapetype). Vormen van verschillende soorten kunnen verschillende mogelijkheden hebben in een Word-document. Zo kunnen alleen afbeeldingen en OLE-vormen beelden bevatten, terwijl de meeste vormen alleen tekst kunnen hebben.

Het volgende voorbeeld laat zien hoe je een vormafbeelding aan een JPEG-afbeelding apart van het document kunt renderen en opslaan op de schijf:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeImage.cs" >}}

## Een vormgrootte ophalen

De [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/) klasse biedt ook functionaliteit om de grootte van de vorm in pixels op te halen via de [GetSizeInPixels](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/getsizeinpixels/) methode. Deze methode accepteert twee float (Single) parameters, de schaal en DPI, die worden gebruikt bij de berekening van de vormgrootte wanneer de vorm wordt weergegeven. De methode geeft de [Size](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/getsizeinpixels/) object, dat de breedte en hoogte van de berekende grootte bevat. Dit is handig wanneer het nodig is om de grootte van de weergegeven vorm van tevoren te kennen, bijvoorbeeld bij het maken van een nieuwe Bitmap van de weergegeven uitvoer.

Het onderstaande voorbeeld laat zien hoe je een nieuw Bitmap en Graphics object kunt maken met de breedte en hoogte van de te maken vorm:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-FindShapeSizes.cs" >}}

Bij gebruik van de **RenderToSize** of **RenderToScale** methoden, de weergegeven afbeelding grootte wordt ook teruggegeven in de [SizeF](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/) object. Dit kan aan een variabele worden toegewezen en indien nodig worden gebruikt.

De **SizeInPoints** eigenschap geeft de vormgrootte terug gemeten in punten (zie [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/). Het resultaat is een `SizeF` object met de breedte en hoogte.
