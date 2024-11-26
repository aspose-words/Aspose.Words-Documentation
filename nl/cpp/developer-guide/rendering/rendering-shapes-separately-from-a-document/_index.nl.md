---
title: Shapes afzonderlijk van een Document weergeven
second_title: Aspose.Words voor C++
articleTitle: Shapes afzonderlijk van een Document weergeven
linktitle: Shapes afzonderlijk van een Document weergeven
description: "Pak bij het verwerken van een document verschillende grafische objecten uit, zoals afbeeldingen, tekstvak met alinea ' s of pijlvormen, en exporteer deze naar een externe locatie."
type: docs
weight: 40
url: /nl/cpp/rendering-shapes-separately-from-a-document/
timestamp: 2024-01-27-14-07-04
---

Bij het verwerken van documenten is het een veel voorkomende taak om alle afbeeldingen in het document te extraheren en naar een externe locatie te exporteren. Deze taak wordt eenvoudig met de Aspose.Words API, die al de functionaliteit biedt voor het extraheren en opslaan van afbeeldingsgegevens. Soms wilt u echter op dezelfde manier andere typen grafische inhoud extraheren die worden weergegeven door een ander type tekenobject, bijvoorbeeld een tekstvak met alinea ' s, pijlvormen en een kleine afbeelding. Er is geen eenvoudige manier om dit object weer te geven, omdat het een combinatie is van individuele inhoudselementen. U kunt ook een geval tegenkomen wanneer de inhoud is gegroepeerd in het object dat eruit ziet als een enkele afbeelding.

Aspose.Words biedt functionaliteit voor het extraheren van dit type inhoud op dezelfde manier als u een eenvoudige afbeelding uit shape kunt extraheren als gerenderde inhoud. In dit artikel wordt beschreven hoe u deze functionaliteit kunt gebruiken om shapes onafhankelijk van het document weer te geven.

## Vormtypen in Aspose.Words

Alle inhoud in een documenttekeningslaag wordt weergegeven door het knooppunt [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) of [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/) in de module Aspose.Words Document Object (DOM). Dergelijke inhoud kan tekstvakken, afbeeldingen, AutoShapes, OLE objecten, enz.zijn. Sommige velden worden ook geïmporteerd als shapes, bijvoorbeeld het veld `INCLUDEPICTURE`.

Een eenvoudig beeld wordt weergegeven door een **Shape** knoop van [ShapeType.Image](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/). Deze shape node heeft geen child nodes, maar de afbeeldingsgegevens in deze shape node zijn toegankelijk via de eigenschap [Shape.ImageData](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_imagedata/). Aan de andere kant kan een vorm ook bestaan uit vele kindknopen. Een vorm van een tekstvak, die wordt weergegeven door de Eigenschap [ShapeType.TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/), kan bijvoorbeeld bestaan uit vele knooppunten, zoals [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/) en [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/). De meeste vormen kunnen de **Paragraph** en **Table** Blok-niveau knooppunten bevatten. Dit zijn dezelfde knooppunten als die in het hoofdlichaam. Shapes zijn altijd onderdelen van een bepaalde alinea, ofwel direct inline of verankerd op de **Paragraph,**, maar "zwevend" overal op de documentpagina.

![rendering-shapes-separately-from-a-document-aspose-words-cpp-1](rendering-shapes-separately-from-a-document-1.png)

Een document kan ook vormen bevatten die gegroepeerd zijn. Groepering kan worden ingeschakeld in Microsoft Word door meerdere objecten te selecteren en op "groep" te klikken in het menu met de rechtermuisknop.

![rendering-shapes-separately-from-a-document-aspose-words-cpp-2](rendering-shapes-separately-from-a-document-2.png)

In Aspose.Words worden deze groepen vormen weergegeven door het `GroupShape` knooppunt. Deze kunnen ook op dezelfde manier worden opgeroepen om de hele groep weer te geven aan de afbeelding.

![rendering-shapes-separately-from-a-document-aspose-words-cpp-3](rendering-shapes-separately-from-a-document-3.png)

De indeling DOCX kan speciale typen afbeeldingen bevatten, zoals diagrammen of grafieken. Deze vormen worden ook weergegeven door de **Shape** knoop in Aspose.Words, die ook een vergelijkbare methode biedt om ze als afbeeldingen weer te geven. Een vorm kan geen andere vorm bevatten als een kind, tenzij die vorm een afbeelding (**ShapeType.Image**) is. Microsoft Word staat bijvoorbeeld niet toe dat u een tekstvak in een ander tekstvak invoegt.

De hierboven beschreven vormtypen bieden een speciale methode om de vormen weer te geven via de klasse [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/). Een instantie van de **ShapeRenderer** klasse wordt opgehaald voor een **Shape** of **GroupShape** Via de **GetShapeRenderer** methode of door de **Shape** door te geven aan de constructor van de **ShapeRenderer** klasse. Deze klasse biedt toegang tot leden, waarmee een vorm kan worden weergegeven op de volgende:

- Bestand op de schijf met de methode [Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) overbelasting
- Stream met de [Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) methode overload
- Het `Graphics` Object met behulp van de [RenderToSize](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertosize/) en [RenderToScale](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/) methoden

{{% alert color="primary" %}}

Bij het renderen van een **Shape** moet het deel uitmaken van de documenthiërarchie. Als **Shape** geen deel uitmaakt van de documentstructuur, zal de gerenderde output leeg zijn na het oproepen van **ShapeRenderer** methoden.

{{% /alert %}}

## Renderen naar Bestand of Stream

De methode [Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) biedt overbelastingen die een shape rechtstreeks naar een bestand of stream weergeven. Beide overbelastingen accepteren een instantie van de klasse [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/), waarmee opties voor het weergeven van de vorm kunnen worden gedefinieerd. Dit werkt op dezelfde manier als de [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) methode. Hoewel deze parameter vereist is, kunt u een null-waarde doorgeven, waarbij wordt opgegeven dat er geen aangepaste opties zijn.

De vorm kan worden geëxporteerd in elke afbeeldingsindeling die is opgegeven in de [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) - opsomming. De afbeelding kan bijvoorbeeld worden weergegeven als een rasterafbeelding, zoals JPEG door de `SaveFormat.Jpeg` - opsomming op te geven, of als een vectorafbeelding, zoals EMF door de `SaveFormat.Emf` op te geven.

Het onderstaande codevoorbeeld illustreert het afzonderlijk van het document renderen van een shape naar een EMF - afbeelding en het opslaan op schijf:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToDisk.cpp" >}}

Het onderstaande codevoorbeeld illustreert het afzonderlijk van het document renderen van een shape naar een JPEG - afbeelding en het opslaan in een stream:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToStream.cpp" >}}

Met de klasse **ImageSaveOptions** kunt u verschillende opties opgeven die bepalen hoe de afbeelding wordt weergegeven. De hierboven beschreven functionaliteit kan op dezelfde manier worden toegepast op de **GroupShape** en **Shape** knooppunten.

## Renderen naar een .NET grafisch Object

Als u rechtstreeks naar een **Graphics** object rendert, kunt u uw eigen instellingen en de status voor het **Graphics** object definiëren. Een veel voorkomend scenario is het rechtstreeks weergeven van een vorm in een **Graphics** object dat is opgehaald uit een Windows formulier of een Bitmap. Wanneer het knooppunt **Shape** wordt weergegeven, hebben de Instellingen invloed op het uiterlijk van de vorm. U kunt de vorm bijvoorbeeld roteren of schalen met de methoden **RotateTransform** of **ScaleTransform** Voor het **Graphics** - object.

Het onderstaande voorbeeld laat zien hoe u een vorm kunt renderen naar A .**NET Graphics** object los van het document en rotatie toepassen op de gerenderde afbeelding:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToGraphics.cpp" >}}

Net als bij de [RenderToSize](https://reference.aspose.com/words/cpp/aspose.words/document/rendertosize/) methode is de [RenderToSize ](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertosize/)methode overgenomen van de [NodeRendererBase](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/) nuttig voor het maken van miniaturen van documentinhoud. De vormgrootte wordt gespecificeerd via de constructor. De **RenderToSize** - methode accepteert het **Graphics** - object, de x-en Y-coördinaten van de afbeeldingspositie en de grootte van de afbeelding (breedte en hoogte) die op het **Graphics** - object wordt getekend.

De **Shape** kan op een bepaalde schaal worden weergegeven met behulp van de [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/) methode die is geërfd van de [NodeRendererBase](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/) klasse. Dit is vergelijkbaar met de [Document.RenderToScale](https://reference.aspose.com/words/cpp/aspose.words/document/rendertoscale/) Methode die dezelfde hoofdparameters accepteert. Het verschil tussen deze twee methoden is dat met de methode **ShapeRenderer.RenderToScale**, in plaats van een letterlijke grootte, u een floatwaarde kiest die de vorm schaalt tijdens het renderen. Als de floatwaarde gelijk is aan 1.0, wordt de vorm weergegeven op 100% van de oorspronkelijke grootte. Een floatwaarde van 0.5 zal de afbeeldingsgrootte halveren.

## Een Vormafbeelding weergeven

De klasse [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) vertegenwoordigt objecten in de tekenlaag, zoals een AutoShape, tekstvak, freeform, OLE object, ActiveX-besturingselement of een afbeelding. Met de klasse **Shape** kunt u shapes maken of wijzigen in een Microsoft Word document. Een belangrijke eigenschap van een vorm is de [ShapeType](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/). Vormen van verschillende typen kunnen verschillende mogelijkheden hebben in een Word - document. Bijvoorbeeld, alleen afbeeldingen en OLE shapes kunnen afbeeldingen bevatten, terwijl de meeste shapes alleen tekst kunnen bevatten.

Het volgende voorbeeld laat zien hoe u een Shape-afbeelding afzonderlijk van het document naar een JPEG - afbeelding kunt renderen en deze op de schijf kunt opslaan:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeImage.cpp" >}}

## Een vormgrootte ophalen

De klasse [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/) biedt ook functionaliteit om de grootte van de vorm in pixels op te halen via de methode [GetSizeInPixels](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/getsizeinpixels/). Deze methode accepteert twee float - type (Enkele) parameters-de schaal en DPI, die worden gebruikt bij de berekening van de vormgrootte wanneer de vorm wordt weergegeven. De methode retourneert het `Size` object, dat de breedte en hoogte van de berekende grootte bevat. Dit is handig wanneer het nodig is om de grootte van de gerenderde vorm van tevoren te weten, bijvoorbeeld bij het maken van een nieuwe Bitmap van de gerenderde uitvoer.

Het onderstaande voorbeeld laat zien hoe u een nieuw Bitmap-en grafisch object maakt met de breedte en hoogte van de vorm die moet worden weergegeven:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-FindShapeSizes.cpp" >}}

Bij het gebruik van de methoden **RenderToSize** of **RenderToScale** wordt de gerenderde afbeeldingsgrootte ook geretourneerd in het [SizeF](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/) object. Dit kan aan een variabele worden toegewezen en indien nodig worden gebruikt.

De Eigenschap **SizeInPoints** Geeft als resultaat de vormgrootte gemeten in punten (zie [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/). Een resultaat is een `SizeF` object met de breedte en hoogte.
