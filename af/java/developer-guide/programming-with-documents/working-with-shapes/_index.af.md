---
title: Werk Met Vorms in Java
second_title: Aspose.Words vir Java
articleTitle: Werk Met Vorms
linktitle: Werk Met Vorms
type: docs
description: "Inleiding tot vorm opmerkings taal, die skep van vorms van verskillende tipes met behulp van Java."
weight: 280
url: /af/java/working-with-shapes/
---

Hierdie onderwerp bespreek hoe om programmaties te werk met vorms met behulp van Aspose.Words.

Die vorms in Aspose.Words verteenwoordig'n voorwerp in die tekeninglaag, soos'n AutoShape, teksboks, vrye vorm, OLE voorwerp, ActiveX beheer, of prentjie. 'n Word-dokument kan een of meer verskillende vorms bevat. Vorms van die dokument word verteenwoordig deur die [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) klas.

## Voeg Vorm In Met Dokumentbouer

Jy kan inlyn vorm met gespesifiseerde tipe en grootte en vryswewende vorm met die gespesifiseerde posisie, grootte en teks wrap tipe in'n dokument met behulp van die [InsertShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertShape-int-double-double) metode. Die **InsertShape** metode laat toe om DML vorm in die dokument model in te voeg. Die dokument moet gestoor word in die formaat, wat DML vorms ondersteun, anders sal sulke nodusse omgeskakel word na VML vorm, terwyl dokument stoor.

Die volgende kode voorbeeld toon hoe om hierdie tipe vorms in die dokument in te voeg:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

## Stel Aspekverhouding Gesluit

Met behulp van Aspose.Words kan jy spesifiseer of die vorm se aspekverhouding deur die [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getAspectRatioLocked) eienskap gesluit is.

Die volgende kode voorbeeld toon hoe om te werk met die **AspectRatioLocked** eiendom:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.java" >}}

## Stel Vorm Uitleg In Sel

Jy kan ook spesifiseer of die vorm binne'n tabel of buite dit vertoon word deur die [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell) eienskap te gebruik.

Die volgende kode voorbeeld toon hoe om te werk met die **IsLayoutInCell** eiendom:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}

## Voeg Hoeke Gesny

Jy kan'n snip hoek reghoek te skep met behulp van Aspose.Words. Die vorm tipes is *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* en *DiagonalCornersRounded.*

Die DML vorm word geskep met behulp van **InsertShape** metode met hierdie vorm tipes. Hierdie tipes kan nie gebruik word om VML vorms te skep nie. Probeer om vorm te skep deur die gebruik van die openbare konstruktor van die "Vorm" klas verhoog die "NotSupportedException" uitsondering.

Die volgende kode voorbeeld toon hoe om hierdie tipe vorms in die dokument in te voeg:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

## Kry Werklike Vormgrenspunte

Met behulp van Aspose.Words API kan jy die ligging en grootte van die vorm wat blok in punte bevat, relatief tot die anker van die boonste vorm kry. Om dit te doen, gebruik die [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getBoundsInPoints) eienskap.

Die volgende kode voorbeeld toon hoe om te werk met die **BoundsInPoints** eiendom:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Spesifiseer Vertikale Anker

U kan die teks vertikale belyning binne'n vorm spesifiseer deur die [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/textbox/#getVerticalAnchor) eienskap te gebruik.

Die volgende kode voorbeeld toon hoe om te werk met die **VerticalAnchor** eiendom:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.java" >}}

## Ontdek SmartArt Vorm

Aspose.Words laat ook toe om te ontdek of die Vorm'n `SmartArt` voorwerp het. Om dit te doen, gebruik die [HasSmartArt](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasSmartArt) eienskap.

Die volgende kode voorbeeld toon hoe om te werk met die **HasSmartArt** eiendom:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-DetectSmartArtShape.java" >}}

## Horisontale Reël Formaat

Jy kan horisontale reëlvorm in'n dokument invoeg deur die [InsertHorizontalRule](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHorizontalRule) - metode te gebruik.

Aspose.Words API bied [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/shape/#getHorizontalRuleFormat) eienskap om toegang te verkry tot die eienskappe van die horisontale reëlvorm. Die [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/horizontalruleformat/) klas bloot basiese eienskappe soos Hoogte, Kleur, NoShade ens. vir die opmaak van'n horisontale reël.

Die volgende kode voorbeeld toon hoe om **HorizontalRuleFormat**stel:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-ShapeHorizontalRuleFormat.java" >}}
