---
title: Vertoon Vorms Afsonderlik van'n Dokument
second_title: Aspose.Words vir Java
articleTitle: Vertoon Vorms Afsonderlik van'n Dokument
linktitle: Vertoon Vorms Afsonderlik van'n Dokument
description: "Onttrek verskeie grafiese voorwerpe, soos beelde, tekskassie met paragrawe, of pylvorms, wanneer'n dokument verwerk word, en voer dit na'n eksterne plek uit met behulp van Java."
type: docs
weight: 40
url: /af/java/rendering-shapes-separately-from-a-document/
timestamp: 2024-01-27-14-07-04
---

Wanneer dokumente verwerk word, is'n algemene taak om al die beelde wat in die dokument gevind word, te onttrek en na'n eksterne plek uit te voer. Hierdie taak word eenvoudig met die Aspose.Words API, wat reeds die funksionaliteit bied vir die onttrekking en stoor van beelddata. Soms wil u egter ook ander soorte grafiese inhoud onttrek wat deur'n ander tipe tekenvoorwerp voorgestel word, byvoorbeeld'n tekskassie met paragrawe, pylvorms en'n klein prent. Daar is geen eenvoudige manier om hierdie voorwerp te lewer nie, aangesien dit'n kombinasie van individuele inhoudelemente is. Jy kan ook'n geval teëkom wanneer die inhoud saam gegroepeer is in die voorwerp wat soos'n enkele prent lyk.

Aspose.Words bied funksionaliteit vir die onttrekking van hierdie tipe inhoud op dieselfde manier as wat jy'n eenvoudige beeld uit vorm as weergegee inhoud kan onttrek. Hierdie artikel beskryf hoe om hierdie funksie te gebruik om vorms onafhanklik van die dokument te lewer.

## Vorm Tipes in Aspose.Words

Al die inhoud in'n dokument tekening laag word verteenwoordig deur die [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) of [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) node in die Aspose.Words Document Object Module (DOM). Sulke inhoud kan teks bokse, beelde, AutoShapes, OLE voorwerpe, ens wees. Sommige velde word ook ingevoer as vorms, byvoorbeeld die `INCLUDEPICTURE` veld.

'n eenvoudige beeld word voorgestel deur'n **Shape** knoop van [ShapeType.Image](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#IMAGE). Hierdie vorm node het geen kind nodes maar die beeld data wat binne hierdie vorm node kan verkry word deur die [Shape.ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData) eiendom. Aan die ander kant kan'n vorm ook uit baie kind-knope bestaan. Byvoorbeeld, 'n teks boks vorm, wat verteenwoordig word deur die [ShapeType.TextBox](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#TEXT-BOX) eienskap, kan bestaan uit baie nodes, soos [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) en [Table](https://reference.aspose.com/words/java/com.aspose.words/table/). Die meeste vorms kan die **Paragraph** en **Table** blokvlak-knope insluit. Dit is dieselfde nodusse as diegene wat in die hoofliggaam verskyn. Vorms is altyd dele van'n paragraaf, of direk in lyn of veranker aan die **Paragraph,** maar "dryf" op enige plek in die dokument bladsy.

![rendering-shapes-separately-from-a-document-aspose-words-java-1](rendering-shapes-separately-from-a-document-1.png)

'n dokument kan ook vorms bevat wat saam gegroepeer is. Groepering kan in Microsoft Word geaktiveer word deur verskeie voorwerpe te kies en op "Groep" in die regskliek-menu te klik.

![rendering-shapes-separately-from-a-document-aspose-words-java-2](rendering-shapes-separately-from-a-document-2.png)

In Aspose.Words word hierdie groepe vorms voorgestel deur die [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) knoop. Dit kan ook op dieselfde manier opgeroep word om die hele groep aan die beeld te gee.

![rendering-shapes-separately-from-a-document-aspose-words-java-3](rendering-shapes-separately-from-a-document-3.png)

Die DOCX - formaat kan spesiale soorte beelde bevat, soos diagramme of kaarte. Hierdie vorms word ook verteenwoordig deur die **Shape** knoop in Aspose.Words, wat ook'n soortgelyke metode bied om hulle as beelde te lewer. Volgens ontwerp kan'n vorm nie'n ander vorm as kind bevat nie, tensy daardie vorm'n beeld is (**ShapeType.Image**). Byvoorbeeld, Microsoft Word laat jou nie toe om'n tekskassie in'n ander tekskassie in te voeg nie.

Die vorm tipes hierbo beskryf bied'n spesiale metode om die vorms te lewer deur die [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) klas. 'n voorbeeld van die **ShapeRenderer** klas word verkry vir a **Shape** of **GroupShape** deur die **GetShapeRenderer** metode of deur die **Shape** aan die konstruktor van die **ShapeRenderer** klas te gee. Hierdie klas bied toegang tot lede, wat toelaat dat die lewering van'n vorm aan die volgende:

- Lêer op die skyf met behulp van die [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) metode oorlading
- Stroom met behulp van die [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.io.OutputStream-com.aspose.words.ImageSaveOptions) metode oorlading
- Grafiese Voorwerp deur die [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToSize-java.awt.Graphics2D-float-float-float-float) en [RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) metodes te gebruik

{{% alert color="primary" %}}

Wanneer a **Shape** weergegee word, moet dit deel uitmaak van die dokumenthiërargie. As die **Shape** is nie'n deel van die dokument boom dan die weergegee uitset sal leeg wees na die oproep **ShapeRenderer** metodes.

{{% /alert %}}

## Rendering Na Lêer of Stroom

Die [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) metode bied oorladings wat'n vorm direk aan'n lêer of stroom weergee. Beide oorladings aanvaar'n geval van die [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) klas, wat toelaat dat die definisie van opsies vir die lewering van die vorm. Dit werk op dieselfde manier as die [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) metode. Selfs al is hierdie parameter vereis, kan jy'n nul waarde slaag, spesifiseer dat daar geen persoonlike opsies.

Die vorm kan uitgevoer word in enige beeld formaat wat in die [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) opsomming. Byvoorbeeld, die beeld kan weergegee word as'n raster beeld, soos JPEG deur die [SaveFormat.Jpeg](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#JPEG) opsomming te spesifiseer, of as'n vektor beeld, soos EMF deur die [SaveFormat.Emf](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#EMF) te spesifiseer.

Die kode voorbeeld hieronder illustreer die lewering van'n vorm aan'n EMF beeld afsonderlik van dokument, en stoor na skyf:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToDisk.java" >}}

Die kode voorbeeld hieronder illustreer die lewering van'n vorm aan'n JPEG beeld afsonderlik van dokument, en stoor na'n stroom:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToStream.java" >}}

Met die **ImageSaveOptions** - klas kan u'n verskeidenheid opsies spesifiseer wat beheer hoe die beeld weergegee word. Die funksionaliteit hierbo beskryf kan op dieselfde manier toegepas word op die **GroupShape** en **Shape** nodes.

## Rendering Na'n `Graphics` Voorwerp

Deur direk na'n **Graphics** voorwerp te lewer, kan jy jou eie instellings en die toestand vir die **Graphics** voorwerp definieer. 'n algemene scenario behels die lewering van'n vorm direk in'n **Graphics** voorwerp verkry uit'n Windows Vorm of'n Bitmap. Wanneer die **Shape** knoop weergegee word, sal die instellings die vorm voorkoms beïnvloed. Byvoorbeeld, jy kan die vorm draai of skaal deur die **RotateTransform** of **ScaleTransform** metodes vir die **Graphics** voorwerp te gebruik.

Die onderstaande voorbeeld toon hoe om'n vorm aan'n **Graphics** voorwerp afsonderlik van die dokument te lewer en rotasie toe te pas op die weergegee beeld:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToGraphics.java" >}}

Net so, om die [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float) metode, die [RenderToSize ](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float)metode geërf van die [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) is nuttig vir die skep van miniatuur van dokument inhoud. Die vorm grootte word gespesifiseer deur die konstruktor. Die **RenderToSize** metode aanvaar die **Graphics** voorwerp, die X en Y koördinate van die beeld posisie, en die grootte van die beeld (breedte en hoogte) wat op die **Graphics** voorwerp geteken sal word.

Die **Shape** kan weergegee word op'n sekere skaal met behulp van die [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) metode geërf van die [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) klas. Dit is soortgelyk aan die [Document.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) metode wat dieselfde hoofparameters aanvaar. Die verskil tussen hierdie twee metodes is dat met die **ShapeRenderer.RenderToScale** metode, in plaas van'n letterlike grootte, kies jy'n drywende waarde wat die vorm skaal tydens sy weergawe. As die drywende waarde gelyk is aan 1.0 veroorsaak dat die vorm weergegee word op 100% van sy oorspronklike grootte. 'n vloot waarde van 0.5 sal die beeld grootte verminder deur die helfte.

## Vertoon'n Vormbeeld

Die [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) klas verteenwoordig voorwerpe in die tekening laag, soos'n AutoShape, teks boks, vrye vorm, OLE voorwerp, ActiveX beheer, of'n prentjie. Deur die **Shape** klas te gebruik, kan jy vorms in'n Microsoft Word dokument skep of verander. 'n belangrike eienskap van'n vorm is sy [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/). Vorms van verskillende tipes kan verskillende vermoëns in'n Word-dokument hê. Byvoorbeeld, slegs beelde en OLE vorms kan beelde binne hulle hê terwyl die meeste van die vorms slegs teks kan hê.

Die volgende voorbeeld toon hoe om'n Vorm beeld te lewer aan'n JPEG beeld afsonderlik van die dokument en stoor dit op die skyf:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeImage.java" >}}

## Verkry'n Vormgrootte

Die [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) klas bied ook funksionaliteit om die grootte van die vorm in pixels te haal deur die [GetSizeInPixels](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float) metode. Hierdie metode aanvaar twee float (Enkel) parameters die skaal en DPI, wat gebruik word in die berekening van die vorm grootte wanneer die vorm weergegee word. Die metode gee terug die [Size](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float) voorwerp, wat die breedte en hoogte van die berekende grootte bevat. Dit is nuttig wanneer dit nodig is om die grootte van die weergegee vorm vooraf te ken, byvoorbeeld wanneer die skep van'n nuwe Bitmap van die weergegee uitset.

Die onderstaande voorbeeld toon hoe om'n Nuwe Bitmap en Grafiese voorwerp te skep met die breedte en hoogte van die vorm wat weergegee moet word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-FindShapeSizes.java" >}}

Wanneer die **RenderToSize** of **RenderToScale** metodes gebruik word, word die weergegee beeld grootte ook teruggestuur in die [SizeF](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#renderToScale-java.awt.Graphics2D-float-float-float) voorwerp. Dit kan aan'n veranderlike toegeken word en gebruik word indien nodig.

Die **SizeInPoints** eienskap gee terug Die Vorm grootte gemeet in punte (sien [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/)). Die resultaat is'n `SizeF` voorwerp wat die breedte en hoogte bevat.
