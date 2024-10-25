---
title: Werk Met Vorms in C++
second_title: Aspose.Words vir C++
articleTitle: Werk Met Vorms
linktitle: Werk Met Vorms
type: docs
description: "Inleiding tot vorm opmerkings taal, die skep van vorms van verskillende tipes met behulp van C++."
weight: 280
url: /af/cpp/working-with-shapes/
---

Hierdie onderwerp bespreek hoe om programmaties te werk met vorms met behulp van Aspose.Words.

Die vorms in Aspose.Words verteenwoordig'n voorwerp in die tekeninglaag, soos'n AutoShape, teksboks, vrye vorm, OLE voorwerp, ActiveX beheer, of prentjie. 'n Word-dokument kan een of meer verskillende vorms bevat. Vorms van die dokument word verteenwoordig deur die [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) klas.

## Voeg Vorm In Met Dokumentbouer

Jy kan inlyn vorm met gespesifiseerde tipe en grootte en vryswewende vorm met die gespesifiseerde posisie, grootte en teks wrap tipe in'n dokument met behulp van die [InsertShape](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertshape/) metode. Die **InsertShape** metode laat toe om DML vorm in die dokument model in te voeg. Die dokument moet gestoor word in die formaat, wat DML vorms ondersteun, anders sal sulke nodusse omgeskakel word na VML vorm, terwyl dokument stoor.

Die volgende kode voorbeeld toon hoe om hierdie tipe vorms in die dokument in te voeg:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cpp" >}}

## Stel Aspekverhouding Gesluit

Met behulp van Aspose.Words kan jy spesifiseer of die vorm se aspekverhouding deur die [AspectRatioLocked](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_aspectratiolocked/) eienskap gesluit is.

Die volgende kode voorbeeld toon hoe om te werk met die **AspectRatioLocked** eiendom:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cpp" >}}

## Stel Vorm Uitleg In Sel

Jy kan ook spesifiseer of die vorm binne'n tabel of buite dit vertoon word deur die [IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/) eienskap te gebruik.

Die volgende kode voorbeeld toon hoe om te werk met die **IsLayoutInCell** eiendom:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}

## Skep Snip Hoek Reghoek

Jy kan'n snip hoek reghoek te skep met behulp van Aspose.Words. Die vorm tipes is *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* en *DiagonalCornersRounded.*

Die DML vorm word geskep met behulp van **InsertShape** metode met hierdie vorm tipes. Hierdie tipes kan nie gebruik word om VML vorms te skep nie. Poging om vorm te skep deur die gebruik van die openbare konstruktor van die "Vorm" klas verhoog die "NotSupportedException" uitsondering.

Die volgende kode voorbeeld toon hoe om hierdie tipe vorms in die dokument in te voeg:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cpp" >}}

## Kry Werklike Vormgrenspunte

Met behulp van Aspose.Words API kan jy die ligging en grootte van die vorm wat blok in punte bevat, relatief tot die anker van die boonste vorm kry. Om dit te doen, gebruik die [BoundsInPoints](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_boundsinpoints/) eienskap.

Die volgende kode voorbeeld toon hoe om te werk met die **BoundsInPoints** eiendom:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cpp" >}}

## Horisontale Reël Formaat

Aspose.Words API bied die [HorizontalRuleFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_horizontalruleformat/) eienskap om toegang te verkry tot die eienskappe van die horisontale reëlvorm. Die **HorizontalRuleFormat** klas stel basiese eienskappe soos Hoogte, Kleur, Skaduwee, ens. vir die opmaak van'n horisontale reël.

Die volgende kode voorbeeld demonstreer hoe om **HorizontalRuleFormat**stel:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertHorizontalRule.h" >}}

## Voeg OLE Voorwerp as'n Ikoon in

Aspose.Words API bied **Shape** argentia **InsertOleObjectAsIcon** funksie om'n ingebedde of gekoppelde OLE voorwerp as'n ikoon in die dokument in te voeg. Hierdie funksie kan die ikoon lêer en die onderskrif spesifiseer. Die `OLE` voorwerp tipe moet opgespoor word met behulp van die lêer uitbreiding.

Die volgende kode voorbeeld toon hoe om te stel insert OLE voorwerp as'n Ikoon in die dokument:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cpp" >}}

{{% alert color="primary" %}}

Die maksimum grootte van die ikoon moet 32x32 wees vir die korrekte vertoning.

{{% /alert %}}
