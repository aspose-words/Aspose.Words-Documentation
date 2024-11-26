---
title: Werk Met Beelde in C#
second_title: Aspose.Words vir .NET
articleTitle: Werk Met Beelde
linktitle: Werk Met Beelde
description: "Beeldvorms in besonderhede en gevorderde funksies wat deur Aspose.Words vir .NET."
type: docs
weight: 300
url: /af/net/working-with-images/
timestamp: 2024-05-02-11-51-44
---

Aspose.Words laat gebruikers toe om op'n baie buigsame manier met beelde te werk. In hierdie artikel kan jy slegs sommige van die moontlikhede van werk met beelde verken.

## Hoe Om'n Prent {#insert-an-image}In Te Voeg

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) bied verskeie oorladings van die [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/) metode wat jou toelaat om'n inlyn of drywende beeld in te voeg. As die beeld'n EMF of WMF metafile is, sal dit in die dokument in metafile-formaat ingevoeg word. Alle ander beelde sal in PNG formaat gestoor word. Die **InsertImage** metode kan beelde van verskillende bronne gebruik:

- Van'n lêer of `URL` deur'n `String` parameter [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/)te slaag
- Van'n stroom deur'n `Stream` parameter **InsertImage**
- Van'n Beeld voorwerp deur'n Beeld parameter **InsertImage**
- Van'n byte skikking deur'n byte skikking parameter **InsertImage**

Vir elk van die **InsertImage** metodes, is daar verdere oorladings wat jou toelaat om'n beeld met die volgende opsies in te voeg:
- Inlyn of swaai op'n spesifieke posisie, byvoorbeeld, **InsertImage**
- Persentasie skaal of persoonlike grootte, byvoorbeeld, **InsertImage**; verder, die **InsertImage** metode gee'n [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) voorwerp wat net geskep en ingevoeg sodat jy verder kan verander eienskappe van Die Vorm

### Hoe Om'n Inline Beeld {#insert-an-inline-image}In Te Voeg

Gee'n enkele string wat'n lêer verteenwoordig wat die beeld bevat na **InsertImage** om die beeld in die dokument as'n inlyngrafiek in te voeg.

Die volgende kode voorbeeld toon hoe om'n inline beeld by die wyser posisie in'n dokument in te voeg:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cs" >}}

### Hoe Om'n Drywende Beeld {#insert-a-floating-image}In Te Voeg

Die volgende kode voorbeeld toon hoe om'n drywende beeld van'n lêer of `URL` in'n gespesifiseerde posisie en grootte in te voeg:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cs" >}}

## Hoe Om Beelde uit'n Dokument {#how-to-extract-images-from-a-document}Te Onttrek

Alle beelde word gestoor binne **Shape** nodes in a [Document](https://reference.aspose.com/words/net/aspose.words/document/). Volg hierdie stappe om alle beelde of beelde met spesifieke tipe uit die dokument te onttrek:

- Gebruik die [GetChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/getchildnodes/) metode om alle **Shape** nodes te kies.
- Iterate deur die gevolglike node versamelings.
- Gaan die [HasImage](https://reference.aspose.com/words/net/aspose.words.drawing/shape/hasimage/) booleaanse eienskap na.
- Onttrek beelddata met behulp van die [ImageData](https://reference.aspose.com/words/net/aspose.words.drawing/shape/imagedata/) eienskap.
- Stoor beelddata na'n lêer.

Die volgende kode voorbeeld toon hoe om beelde uit'n dokument te onttrek en stoor hulle as lêers:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cs" >}}

{{% alert color="primary" %}}

U kan die voorbeeldlêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Images.docx).

{{% /alert %}}

## Hoe Om Strepieskode Op elke Dokumentbladsy {#how-to-insert-barcode-on-each-documen-page}In Te Voeg

Hierdie voorbeeld toon dat jy dieselfde of verskillende strepieskode op alle of spesifieke bladsye van'n Word-dokument moet byvoeg. Daar is geen direkte manier om strepieskode op alle bladsye van'n dokument by te voeg nie, maar jy kan die **MoveToSection**, **MoveToHeaderFooter** en **InsertImage** metodes gebruik om na enige afdeling of koptekste/voetskrifte te beweeg en die strepieskode-beelde in te voeg soos jy in die volgende kode kan sien.

Die volgende kode voorbeeld toon hoe om'n barcode beeld in te voeg op elke bladsy van'n dokument:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeImage.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeIntoFooter.cs" >}}

## Sluit Aspekverhouding van Beeld {#lock-aspect-ratio-of-image}

Die aspekverhouding van'n meetkundige vorm is die verhouding van sy groottes in verskillende dimensies. U kan die beeldverhouding met [AspectRatioLocked](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/aspectratiolocked/) sluit. Die standaard waarde van die vorm se aspek verhouding hang af van die [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/). Dit is *true* vir `ShapeType.Image` en *false* vir ander vorm tipes.

Die volgende kode voorbeeld toon hoe om te werk met aspek verhouding:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## Hoe Om Werklike Grense Van Vorm in Punte {#how-to-get-actual-bounds-of-shape-in-points}Te Kry

As jy die werklike grens boks van die vorm wil hê soos op die bladsy weergegee, kan jy dit bereik deur die [BoundsInPoints](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/boundsinpoints/) eienskap te gebruik.

Die volgende kode voorbeeld toon hoe om hierdie eiendom te gebruik:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## Sny Beelde {#crop-images}

Die sny van'n beeld verwys gewoonlik na die verwydering van die ongewenste buitenste dele van'n beeld om die raamwerk te verbeter. Dit word ook gebruik vir die verwydering van sommige van die dele van'n beeld om die fokus op'n spesifieke gebied te verhoog.

Die volgende kode voorbeeld toon hoe om dit te bereik met behulp van Aspose.Words API:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImageCall.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImage.cs" >}}

## Stoor Beelde as WMF {#save-images-as-wmf}

Aspose.Words bied funksionaliteit om al die beskikbare beelde in'n dokument te stoor [WMF](https://docs.fileformat.com/image/wmf/)formaat terwyl die omskakeling van DOCX na RTF.

Die volgende kode voorbeeld toon hoe om beelde te stoor as WMF met RTF stoor opsies:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cs" >}}
