---
title: Werken met Vormen in C#
second_title: Aspose.Words voor .NET
articleTitle: Werken met Shapes
linktitle: Werken met Shapes
description: "Inleiding tot het vormgeven van markup taal, het creëren van vormen van verschillende soorten met behulp van C#."
type: docs
weight: 280
url: /nl/net/working-with-shapes/
---

Dit onderwerp bespreekt hoe je programmatisch te werken met vormen met behulp van Aspose.Words.

De vormen in Aspose.Words vertegenwoordigen een object in de tekenlaag, zoals een AutoShape, tekstvak, vrije vorm, OLE-object, ActiveX-besturing of afbeelding. Een Word-document kan één of meerdere vormen bevatten. Vormen in Aspose.Words worden vertegenwoordigd door de [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) Klasse.

## Vormen invoegen met behulp van documentbouwer

U kunt inline vorm met opgegeven type en grootte en vrij zwevende vorm met de opgegeven positie, grootte en tekst wrap type in een document met behulp van de [InsertShape](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertshape/) methode. De **InsertShape** methode maakt het invoegen van DML vorm in het document model. Het document moet worden opgeslagen in het formaat, dat DML-vormen ondersteunt, anders worden dergelijke knooppunten omgezet in VML-vorm, terwijl het document wordt opgeslagen.

Het volgende voorbeeld van code laat zien hoe u deze vormen in het document kunt invoegen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cs" >}}

## Aspectratio vergrendeld instellen

Gebruik Aspose.Words, u kunt aangeven of de verhouding van de vorm en het aspect door de [AspectRatioLocked](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/aspectratiolocked/) eigendom.

De volgende code voorbeeld laat zien hoe te werken met de **AspectRatioLocked** eigenschap:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## Vormindeling instellen in cel

U kunt ook aangeven of de vorm wordt weergegeven in een tabel of daarbuiten met behulp van de [IsLayoutInCell](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/islayoutincell/) eigendom.

De volgende code voorbeeld laat zien hoe te werken met de **IsLayoutInCell** eigenschap:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}

## Kniphoekrek aanmaken

U kunt een kniphoek rechthoek met behulp van Aspose.Words. De vormtypes zijn *SingleCornerGesnipt, TopCornersGesnipte, DiagonalCornersGesnipte, TopCornersOneRoundedOneSniped, SingleCornerRounded, TopCornersRounded,* en *DiagonalCornersRounded.*

De DML vorm wordt gemaakt met behulp van **InsertShape** methode met deze vormtypes. Deze types kunnen niet worden gebruikt om VML vormen te maken. Poging om vorm te creëren door gebruik te maken van de publieke constructeur van de "Shape" klasse verhoogt de "NotSupportedException" uitzondering.

Het volgende voorbeeld van de code laat zien hoe u dit soort vormen in het document invoegt:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cs" >}}

## Krijg feitelijke vormgrenzen

Gebruik Aspose.Words API, U kunt de locatie en grootte van de vorm met blok in punten, ten opzichte van het anker van de bovenste vorm. Om dit te doen, gebruik de [BoundsInPoints](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/boundsinpoints/) eigendom.

De volgende code voorbeeld laat zien hoe te werken met de **BoundsInPoints** eigenschap:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## Verticale anker opgeven

U kunt de tekst verticale uitlijning binnen een vorm met behulp van de [VerticalAnchor](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/verticalanchor/) eigendom.

De volgende code voorbeeld laat zien hoe te werken met de **VerticalAnchor** eigenschap:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.cs" >}}

## Smart detecteren Kunstvorm

Aspose.Words kan ook detecteren of de vorm heeft een `SmartArt` object. Om dit te doen, gebruik de [HasSmartArt](https://reference.aspose.com/words/net/aspose.words.drawing/shape/hassmartart/) eigendom.

De volgende code voorbeeld laat zien hoe te werken met de **HasSmartArt** eigenschap:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-DetectSmartArtShape.cs" >}}

## Horizontaal invoegen Regel in document

U kunt horizontale regelvorm invoegen in een document met behulp van de [InsertHorizontalRule](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthorizontalrule/) methode.

Het volgende code voorbeeld laat zien hoe dit te doen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

Aspose.Words API levert de [HorizontalRuleFormat](https://reference.aspose.com/words/net/aspose.words.drawing/shape/horizontalruleformat/) eigenschap om toegang te krijgen tot de eigenschappen van de horizontale regelvorm. De [HorizontalRuleFormat](https://reference.aspose.com/words/net/aspose.words.drawing/horizontalruleformat/) klasse onthult basiseigenschappen zoals Hoogte, Kleur, NoShade etc. voor het formatteren van een horizontale regel.

Het volgende code voorbeeld laat zien hoe te instellen **HorizontalRuleFormat**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderHorizontalRuleFormat.cs" >}}

## Formaten met wiskunde XML importeren als vormen in DOM

U kunt de [ConvertShapeToOfficeMath](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/convertshapetoofficemath/) eigenschap om de vormen te converteren met EquationXML naar Office Math objecten. De standaardwaarde van deze eigenschap komt overeen met Microsoft Word gedrag, d.w.z. vormen met vergelijking XML worden niet omgezet naar Office wiskunde objecten.

Het volgende voorbeeld van code laat zien hoe vormen te converteren naar Office Math objecten:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-ConvertShapeToOfficeMath.cs" >}}
