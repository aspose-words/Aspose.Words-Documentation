---
title: Werk Met Vorms in C#
second_title: Aspose.Words vir .NET
articleTitle: Werk Met Vorms
linktitle: Werk Met Vorms
description: "Inleiding tot vorm opmerkings taal, die skep van vorms van verskillende tipes met behulp van C#."
type: docs
weight: 280
url: /af/net/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

Hierdie onderwerp bespreek hoe om programmaties te werk met vorms met behulp van Aspose.Words.

Die vorms in Aspose.Words verteenwoordig'n voorwerp in die tekeninglaag, soos'n AutoShape, teksboks, vrye vorm, OLE voorwerp, ActiveX beheer, of prentjie. 'n Word-dokument kan een of meer verskillende vorms bevat. Vorms in Aspose.Words word verteenwoordig deur die [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) klas.

## Voeg Vorms In Met Behulp Van Dokumentbouer

Jy kan inlyn vorm met gespesifiseerde tipe en grootte en vryswewende vorm met die gespesifiseerde posisie, grootte en teks wrap tipe in'n dokument met behulp van die [InsertShape](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertshape/) metode. Die **InsertShape** metode laat toe om DML vorm in die dokument model in te voeg. Die dokument moet gestoor word in die formaat, wat DML vorms ondersteun, anders sal sulke nodusse omgeskakel word na VML vorm, terwyl dokument stoor.

Die volgende kode voorbeeld toon hoe om hierdie tipe vorms in die dokument in te voeg:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cs" >}}

## Stel Aspekverhouding Gesluit

Met behulp van Aspose.Words kan jy spesifiseer of die vorm se aspekverhouding deur die [AspectRatioLocked](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/aspectratiolocked/) eienskap gesluit is.

Die volgende kode voorbeeld toon hoe om te werk met die **AspectRatioLocked** eiendom:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## Stel Vorm Uitleg In Sel

Jy kan ook spesifiseer of die vorm binne'n tabel of buite dit vertoon word deur die [IsLayoutInCell](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/islayoutincell/) eienskap te gebruik.

Die volgende kode voorbeeld toon hoe om te werk met die **IsLayoutInCell** eiendom:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}

## Skep Snip Hoek Reghoek

Jy kan'n snip hoek reghoek te skep met behulp van Aspose.Words. Die vorm tipes is *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* en *DiagonalCornersRounded.*

Die DML vorm word geskep met behulp van **InsertShape** metode met hierdie vorm tipes. Hierdie tipes kan nie gebruik word om VML vorms te skep nie. Probeer om vorm te skep deur die gebruik van die openbare konstruktor van die "Vorm" klas verhoog die "NotSupportedException" uitsondering.

Die volgende kode voorbeeld toon hoe om hierdie tipe vorms in die dokument in te voeg:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cs" >}}

## Kry Werklike Vormgrenspunte

Met behulp van Aspose.Words API kan jy die ligging en grootte van die vorm wat blok in punte bevat, relatief tot die anker van die boonste vorm kry. Om dit te doen, gebruik die [BoundsInPoints](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/boundsinpoints/) eienskap.

Die volgende kode voorbeeld toon hoe om te werk met die **BoundsInPoints** eiendom:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## Spesifiseer Vertikale Anker

U kan die teks vertikale belyning binne'n vorm spesifiseer deur die [VerticalAnchor](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/verticalanchor/) eienskap te gebruik.

Die volgende kode voorbeeld toon hoe om te werk met die **VerticalAnchor** eiendom:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.cs" >}}

## Ontdek SmartArt Vorm

Aspose.Words laat ook toe om te ontdek of die Vorm'n `SmartArt` voorwerp het. Om dit te doen, gebruik die [HasSmartArt](https://reference.aspose.com/words/net/aspose.words.drawing/shape/hassmartart/) eienskap.

Die volgende kode voorbeeld toon hoe om te werk met die **HasSmartArt** eiendom:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-DetectSmartArtShape.cs" >}}

## Voeg Horisontale Reël in Dokument in

Jy kan horisontale reëlvorm in'n dokument invoeg deur die [InsertHorizontalRule](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthorizontalrule/) - metode te gebruik.

Die volgende kode voorbeeld toon hoe om dit te doen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

Aspose.Words API bied die [HorizontalRuleFormat](https://reference.aspose.com/words/net/aspose.words.drawing/shape/horizontalruleformat/) eienskap om toegang te verkry tot die eienskappe van die horisontale reëlvorm. Die [HorizontalRuleFormat](https://reference.aspose.com/words/net/aspose.words.drawing/horizontalruleformat/) klas bloot basiese eienskappe soos Hoogte, Kleur, NoShade ens. vir die opmaak van'n horisontale reël.

Die volgende kode voorbeeld toon hoe om **HorizontalRuleFormat**stel:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderHorizontalRuleFormat.cs" >}}

## Invoer Vorms met Wiskunde XML As Vorms in DOM

Jy kan die [ConvertShapeToOfficeMath](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/convertshapetoofficemath/) eienskap gebruik om die vorms met VergelykingXML om Te skakel Na Kantoor Wiskunde voorwerpe. Die standaard waarde van hierdie eienskap stem ooreen met Microsoft Word gedrag, d.w. s. vorms met vergelyking XML word nie omgeskakel na Kantoor wiskunde voorwerpe.

Die volgende kode voorbeeld toon hoe om vorms Te Omskep In Kantoor Wiskunde voorwerpe:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-ConvertShapeToOfficeMath.cs" >}}
