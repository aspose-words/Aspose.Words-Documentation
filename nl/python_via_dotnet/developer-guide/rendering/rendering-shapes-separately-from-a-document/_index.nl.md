---
title: Vormen gescheiden van document
second_title: Aspose.Words voor Python via .NET
articleTitle: Vormen renderen Los van een document
linktitle: Vormen renderen Los van een document
description: "Uitpakken van verschillende grafische objecten, zoals afbeeldingen, tekstvak met paragrafen, of pijlvormen, bij het verwerken van een document, en exporteren naar een externe locatie met behulp van Python."
type: docs
weight: 40
url: /nl/python-net/rendering-shapes-separately-from-a-document/
---

Bij het verwerken van documenten is het een gemeenschappelijke taak om alle afbeeldingen in het document uit te pakken en naar een externe locatie te exporteren. Deze taak wordt eenvoudig met de Aspose.Words API, die al de functionaliteit biedt voor het extraheren en opslaan van afbeeldingsgegevens. Echter, soms wilt u misschien ook andere soorten grafische inhoud die wordt vertegenwoordigd door een ander type tekenobject, bijvoorbeeld een tekstvak met paragrafen, pijlvormen en een kleine afbeelding. Er is geen eenvoudige manier om dit object weer te geven omdat het een combinatie is van individuele inhoudselementen. U kunt ook een geval tegenkomen wanneer de inhoud is gegroepeerd in het object dat lijkt op een enkele afbeelding.

Aspose.Words biedt functionaliteit voor het extraheren van dit soort inhoud op dezelfde manier als u een eenvoudige afbeelding kunt halen uit een vorm als weergegeven inhoud. Dit artikel beschrijft hoe deze functionaliteit te gebruiken om vormen onafhankelijk van het document te maken.

## Vormtypen in Aspose.Words

Alle inhoud in een document tekening laag wordt weergegeven door de [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) of [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) in de Aspose.Words Documentobjectmodule (DOM). Dergelijke inhoud kunnen tekstvakjes, afbeeldingen, AutoShapes, OLE objecten, enz. zijn. Sommige velden worden ook geïmporteerd als vormen, bijvoorbeeld de `INCLUDEPICTURE` veld.

Een eenvoudige afbeelding wordt weergegeven door een [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) knooppunt van [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#image). Deze vorm knooppunt heeft geen kind knooppunten, maar de afbeelding gegevens in deze vorm knooppunt kan worden benaderd door de [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/) eigendom. Aan de andere kant kan een vorm ook worden opgebouwd uit vele kindknooppunten. Bijvoorbeeld, een tekst box vorm, die wordt vertegenwoordigd door de [ShapeType.TEXT_BOX](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#text_box) eigendom, kan bestaan uit vele knooppunten, zoals [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) en [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/). De meeste vormen kunnen de [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) en [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) blok-level knooppunten. Dit zijn dezelfde knooppunten als die in het hoofdlichaam. Vormen zijn altijd deel van een alinea, hetzij direct in de lijn of verankerd aan de [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), maar "floating" overal in het document pagina.

![rendering-shapes-separately-from-a-document_1](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Een document kan ook vormen bevatten die gegroepeerd zijn. Groupkan worden ingeschakeld in Microsoft Word door meerdere objecten te selecteren en te klikkenGroupIn het rechterklikmenu.

![rendering-shapes-separately-from-a-document_2](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

In Aspose.Words, Deze groepen vormen worden vertegenwoordigd door de [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) Node. Deze kunnen ook op dezelfde manier worden aangeroepen om de hele groep aan afbeelding te geven.

![rendering-shapes-separately-from-a-document_3](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

Het DOCX-formaat kan speciale soorten afbeeldingen bevatten, zoals diagrammen of grafieken. Deze vormen zijn ook vertegenwoordigd door de [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) knooppunt in Aspose.Words, die ook een vergelijkbare methode biedt om ze als afbeeldingen te maken. Door design kan een vorm geen andere vorm als kind bevatten, tenzij die vorm een afbeelding is ([ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image)). Bijvoorbeeld, Microsoft Word u kunt geen tekstvak in een ander tekstvak plaatsen.

De hierboven beschreven vormen bieden een speciale methode om de vormen door de [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) Klasse. Een voorbeeld van de [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) klasse is opgehaald voor een [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) of [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) door de [get_shape_renderer](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/get_shape_renderer/) methode of door de [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) aan de constructeur van de [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) Klasse. Deze klasse biedt toegang tot leden, die het mogelijk maken een vorm te geven aan het volgende:

- Bestand op de schijf
- Stream

{{% alert color="primary" %}}

Wanneer een <span notrans="<span notrans=" [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)"=""></span>,"> het moet deel uitmaken van de documenthiërarchie. Indien de [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) is geen deel van de documentboom dan zal de weergegeven uitvoer leeg zijn na aanroepen [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) methoden.

{{% /alert %}}

## Renderen naar bestand of stroom

De [save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/) methode biedt overbelasting die een vorm direct aan een bestand of stroom. Beide overbelasting accepteren een geval van de [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) klasse, die het mogelijk maakt om opties voor het renderen van de vorm te definiëren. Dit werkt op dezelfde manier als de [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) methode. Hoewel deze parameter vereist is, kunt u een nulwaarde doorgeven, met vermelding dat er geen aangepaste opties zijn.

De vorm kan worden geëxporteerd in elk afbeeldingsformaat dat in de [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) Lijst. Bijvoorbeeld, de afbeelding kan worden weergegeven als een raster afbeelding, zoals JPEG door het specificeren van de [SaveFormat.JPEG](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#jpeg) opsomming, of als vectorafbeelding, zoals EMF door het specificeren van de [SaveFormat.EMF](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#emf).

Het onderstaande voorbeeld illustreert het renderen van een vorm naar een EMF-afbeelding apart van het document, en opslaan naar schijf:

{{< highlight python >}}
r = shape.get_shape_renderer()

# Define custom options which control how the image is rendered. Render the shape to the JPEG raster format.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.EMF)
imageOptions.scale = 1.5
        
# Save the rendered image to disk.
r.save(docs_base.artifacts_dir + "TestFile.RenderToDisk_out.emf", imageOptions)
{{< /highlight >}}

Het onderstaande codevoorbeeld illustreert het renderen van een vorm naar een JPEG-afbeelding apart van het document en opslaan naar een stream:

{{< highlight python >}}
r = shape.get_shape_renderer()

# Define custom options which control how the image is rendered. Render the shape to the vector format EMF.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.JPEG)
        
# Output the image in gray scale
imageOptions.image_color_mode = aw.saving.ImageColorMode.GRAYSCALE

# Reduce the brightness a bit (default is 0.5f).
imageOptions.image_brightness = 0.45
        
stream =  io.FileIO(docs_base.artifacts_dir + "TestFile.RenderToStream_out.jpg", "w+b")

# Save the rendered image to the stream using different options.
r.save(stream, imageOptions)

# Close the stream
stream.close()
{{< /highlight >}}

De [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) klasse kunt u een verscheidenheid van opties die bepalen hoe de afbeelding wordt weergegeven. De hierboven beschreven functionaliteit kan op dezelfde wijze op de [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) en [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) knooppunten.

## Een vormafbeelding renderen

De [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) klasse representeert objecten in de tekenlaag, zoals een AutoShape, tekstvak, vrije vorm, OLE object, ActiveX controle, of een afbeelding. Gebruik van de [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) klasse, kunt u vormen maken of wijzigen in een Microsoft Word document. Een belangrijke eigenschap van een vorm is zijn [shape_type](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/shape_type/). Vormen van verschillende soorten kunnen verschillende mogelijkheden hebben in een Word-document. Zo kunnen alleen afbeeldingen en OLE-vormen beelden bevatten, terwijl de meeste vormen alleen tekst kunnen hebben.

Het volgende voorbeeld laat zien hoe je een vormafbeelding aan een JPEG-afbeelding apart van het document kunt renderen en opslaan op de schijf:

{{< highlight python >}}
# Save the rendered image to disk.
shape.get_shape_renderer().save(docs_base.artifacts_dir + "TestFile.RenderShapeImage.jpeg", None)
{{< /highlight >}}

## Een vormgrootte ophalen

De [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) klasse biedt ook functionaliteit om de grootte van de vorm in pixels op te halen via de [get_size_in_pixels](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/get_size_in_pixels/) methode. Deze methode accepteert twee float (Single) parameters, de schaal en DPI, die worden gebruikt bij de berekening van de vormgrootte wanneer de vorm wordt weergegeven. De methode geeft de **Size** object, dat de breedte en hoogte van de berekende grootte bevat. Dit is handig wanneer het nodig is om de grootte van de weergegeven vorm van tevoren te weten. De [size_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/size_in_points/) eigenschap geeft de vorm grootte gemeten in punten terug. Het resultaat is een **SizeF** object met de breedte en hoogte. Ook kunt u [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/) eigendom om werkelijke grenzen van de vorm te krijgen.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}


