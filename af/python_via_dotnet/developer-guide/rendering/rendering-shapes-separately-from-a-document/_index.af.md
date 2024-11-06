---
title: Vorms Afsonderlik Van Dokument
second_title: Aspose.Words vir Python via .NET
articleTitle: Vertoon Vorms Afsonderlik van'n Dokument
linktitle: Vertoon Vorms Afsonderlik van'n Dokument
description: "Onttrek verskeie grafiese voorwerpe, soos beelde, tekskassie met paragrawe, of pylvorms, wanneer'n dokument verwerk word, en voer dit na'n eksterne plek uit met behulp van Python."
type: docs
weight: 40
url: /af/python-net/rendering-shapes-separately-from-a-document/
---

Wanneer dokumente verwerk word, is'n algemene taak om al die beelde wat in die dokument gevind word, te onttrek en na'n eksterne plek uit te voer. Hierdie taak word eenvoudig met die Aspose.Words API, wat reeds die funksionaliteit bied vir die onttrekking en stoor van beelddata. Soms wil u egter ook ander soorte grafiese inhoud onttrek wat deur'n ander tipe tekenvoorwerp voorgestel word, byvoorbeeld'n tekskassie met paragrawe, pylvorms en'n klein prent. Daar is geen eenvoudige manier om hierdie voorwerp te lewer nie, aangesien dit'n kombinasie van individuele inhoudelemente is. Jy kan ook'n geval teëkom wanneer die inhoud saam gegroepeer is in die voorwerp wat soos'n enkele prent lyk.

Aspose.Words bied funksionaliteit vir die onttrekking van hierdie tipe inhoud op dieselfde manier as wat jy'n eenvoudige beeld uit'n vorm as weergegee inhoud kan onttrek. Hierdie artikel beskryf hoe om hierdie funksie te gebruik om vorms onafhanklik van die dokument te lewer.

## Vorm Tipes in Aspose.Words

Al die inhoud in'n dokument tekening laag word verteenwoordig deur die [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) of [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) node in die Aspose.Words Document Object Module (DOM). Sulke inhoud kan teks bokse, beelde, AutoShapes, OLE voorwerpe, ens wees. Sommige velde word ook ingevoer as vorms, byvoorbeeld die `INCLUDEPICTURE` veld.

'n eenvoudige beeld word voorgestel deur'n [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) knoop van [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#image). Hierdie vorm node het geen kind nodes maar die beeld data wat binne hierdie vorm node kan verkry word deur die [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/) eiendom. Aan die ander kant kan'n vorm ook uit baie kind-knope bestaan. Byvoorbeeld, 'n teks boks vorm, wat verteenwoordig word deur die [ShapeType.TEXT_BOX](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#text_box) eienskap, kan bestaan uit baie nodes, soos [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) en [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/). Die meeste vorms kan die [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) en [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) blokvlak-knope insluit. Dit is dieselfde nodusse as diegene wat in die hoofliggaam verskyn. Vorms is altyd dele van'n paragraaf, of direk in lyn of veranker aan die [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), maar "dryf" op enige plek in die dokument bladsy.

![rendering-shapes-separately-from-a-document_1](rendering-shapes-separately-from-a-document-1.png)

'n dokument kan ook vorms bevat wat saam gegroepeer is. Groepering kan in Microsoft Word geaktiveer word deur verskeie voorwerpe te kies en op "Groep" in die regskliek-menu te klik.

![rendering-shapes-separately-from-a-document_2](rendering-shapes-separately-from-a-document-2.png)

In Aspose.Words word hierdie groepe vorms voorgestel deur die [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) knoop. Dit kan ook op dieselfde manier opgeroep word om die hele groep na beeld te lewer.

![rendering-shapes-separately-from-a-document_3](rendering-shapes-separately-from-a-document-3.png)

Die DOCX - formaat kan spesiale soorte beelde bevat, soos diagramme of kaarte. Hierdie vorms word ook voorgestel deur die [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) - knooppunt in Aspose.Words, wat ook'n soortgelyke metode bied om dit as beelde te lewer. Volgens ontwerp kan'n vorm nie'n ander vorm as kind bevat nie, tensy daardie vorm'n beeld is ([ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image)). Byvoorbeeld, Microsoft Word laat jou nie toe om'n tekskassie in'n ander tekskassie in te voeg nie.

Die vorm tipes hierbo beskryf bied'n spesiale metode om die vorms te lewer deur die [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) klas. 'n voorbeeld van die [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) klas word verkry vir'n [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) of [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) deur die [get_shape_renderer](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/get_shape_renderer/) metode of deur die [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) aan die konstruktor van die [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) klas te gee. Hierdie klas bied toegang tot lede, wat toelaat dat die lewering van'n vorm aan die volgende:

- Lêer op die skyf
- Stroom

{{% alert color="primary" %}}

Wanneer a [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) weergegee word, moet dit deel uitmaak van die dokumenthiërargie. As die [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) is nie'n deel van die dokument boom dan die weergegee uitset sal leeg wees na die oproep [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) metodes.

{{% /alert %}}

## Rendering Na Lêer of Stroom

Die [save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/) metode bied oorladings wat'n vorm direk aan'n lêer of stroom weergee. Beide oorladings aanvaar'n geval van die [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) klas, wat toelaat om opsies vir die lewering van die vorm te definieer. Dit werk op dieselfde manier as die [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) metode. Selfs al is hierdie parameter vereis, kan jy'n nul waarde slaag, spesifiseer dat daar geen persoonlike opsies.

Die vorm kan uitgevoer word in enige beeld formaat wat in die [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) opsomming. Byvoorbeeld, die beeld kan weergegee word as'n raster beeld, soos JPEG deur die [SaveFormat.JPEG](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#jpeg) opsomming te spesifiseer, of as'n vektor beeld, soos EMF deur die [SaveFormat.EMF](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#emf) te spesifiseer.

Die kode voorbeeld hieronder illustreer die lewering van'n vorm aan'n EMF beeld afsonderlik van dokument, en stoor na skyf:

{{< highlight python >}}
r = shape.get_shape_renderer()

# Define custom options which control how the image is rendered. Render the shape to the JPEG raster format.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.EMF)
imageOptions.scale = 1.5
        
# Save the rendered image to disk.
r.save(docs_base.artifacts_dir + "TestFile.RenderToDisk_out.emf", imageOptions)
{{< /highlight >}}

Die kode voorbeeld hieronder illustreer die lewering van'n vorm aan'n JPEG beeld afsonderlik van dokument, en stoor na'n stroom:

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

Met die [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) - klas kan u'n verskeidenheid opsies spesifiseer wat beheer hoe die beeld weergegee word. Die funksionaliteit hierbo beskryf kan op dieselfde manier toegepas word op die [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) en [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) nodes.

## Vertoon'n Vormbeeld

Die [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) klas verteenwoordig voorwerpe in die tekening laag, soos'n AutoShape, teks boks, vrye vorm, OLE voorwerp, ActiveX beheer, of'n prentjie. Deur die [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) klas te gebruik, kan jy vorms in'n Microsoft Word dokument skep of verander. 'n belangrike eienskap van'n vorm is sy [shape_type](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/shape_type/). Vorms van verskillende tipes kan verskillende vermoëns in'n Word-dokument hê. Byvoorbeeld, slegs beeld en OLE vorms kan beelde binne hulle hê terwyl die meeste van die vorms slegs teks kan hê.

Die volgende voorbeeld toon hoe om'n Vorm beeld te lewer aan'n JPEG beeld afsonderlik van die dokument en stoor dit op die skyf:

{{< highlight python >}}
# Save the rendered image to disk.
shape.get_shape_renderer().save(docs_base.artifacts_dir + "TestFile.RenderShapeImage.jpeg", None)
{{< /highlight >}}

## Verkry'n Vormgrootte

Die [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) klas bied ook funksionaliteit om die grootte van die vorm in pixels te haal deur die [get_size_in_pixels](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/get_size_in_pixels/) metode. Hierdie metode aanvaar twee float (Enkel) parameters die skaal en DPI, wat gebruik word in die berekening van die vorm grootte wanneer die vorm weergegee word. Die metode gee terug die **Size** voorwerp, wat die breedte en hoogte van die berekende grootte bevat. Dit is nuttig wanneer dit nodig is om die grootte van die weergegee vorm vooraf te ken. Die [size_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/size_in_points/) eienskap gee terug Die Vorm grootte gemeet in punte. Die resultaat is'n **SizeF** voorwerp wat die breedte en hoogte bevat. Jy kan ook [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/) eienskap gebruik om werklike grense van die vorm te kry.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}


