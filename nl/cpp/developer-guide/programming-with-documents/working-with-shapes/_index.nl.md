---
title: Werken met Shapes in C++
second_title: Aspose.Words voor C++
articleTitle: Werken met Shapes
linktitle: Werken met Shapes
type: docs
description: "Inleiding tot shape markup language, het maken van vormen van verschillende typen met behulp van C++."
weight: 280
url: /nl/cpp/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

In dit onderwerp wordt besproken hoe u programmatisch kunt werken met shapes met behulp van Aspose.Words.

De shapes in Aspose.Words vertegenwoordigen een object in de tekenlaag, zoals een AutoShape, tekstvak, freeform, OLE object, ActiveX-besturingselement of afbeelding. Een Word document kan een of meer verschillende vormen bevatten. Shapes van het document worden weergegeven door de klasse [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/).

## Vorm Invoegen Met Document Builder

U kunt inline shape met opgegeven type en grootte en free-floating shape met de opgegeven positie, grootte en tekst wrap type invoegen in een document met behulp van de methode [InsertShape](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertshape/). De **InsertShape** methode maakt het mogelijk om DML shape in het documentmodel in te voegen. Het document moet worden opgeslagen in de indeling, Die DML shapes ondersteunt, anders worden dergelijke knooppunten geconverteerd naar VML shape, terwijl het document wordt opgeslagen.

In het volgende codevoorbeeld ziet u hoe u deze typen shapes in het document invoegt:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cpp" >}}

## Beeldverhouding Vergrendeld Instellen

Met Aspose.Words kunt u opgeven of de beeldverhouding van de vorm is vergrendeld via de eigenschap [AspectRatioLocked](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_aspectratiolocked/).

Het volgende codevoorbeeld laat zien hoe te werken met de eigenschap **AspectRatioLocked**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cpp" >}}

## Vormindeling Instellen In Cel

U kunt ook opgeven of de vorm binnen of buiten een tabel wordt weergegeven met behulp van de eigenschap [IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/).

Het volgende codevoorbeeld laat zien hoe te werken met de eigenschap **IsLayoutInCell**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}

## Snip Hoek Rechthoek Maken

U kunt een snip hoek rechthoek maken met Aspose.Words. De vormtypen zijn *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* en *DiagonalCornersRounded.*

De vorm DML wordt gemaakt met behulp van de methode **InsertShape** met deze vormtypen. Deze typen kunnen niet worden gebruikt om VML shapes te maken. Poging om vorm te maken met behulp van de openbare constructor van de klasse "vorm" verhoogt de uitzondering "NotSupportedException".

In het volgende codevoorbeeld ziet u hoe u dit type shapes in het document invoegt:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cpp" >}}

## Get Werkelijke Vorm Grenzen Punten

Met behulp van Aspose.Words API kunt u de locatie en grootte van de vorm met blok in punten krijgen, ten opzichte van het anker van de bovenste vorm. Gebruik hiervoor de eigenschap [BoundsInPoints](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_boundsinpoints/).

Het volgende codevoorbeeld laat zien hoe te werken met de eigenschap **BoundsInPoints**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cpp" >}}

## Horizontale Regelindeling

Aspose.Words API geeft de eigenschap [HorizontalRuleFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_horizontalruleformat/) om toegang te krijgen tot de eigenschappen van de shape horizontale regel. De **HorizontalRuleFormat** - klasse toont basiseigenschappen zoals Hoogte, Kleur, Schaduw, enz. voor de opmaak van een horizontale regel.

Het volgende codevoorbeeld laat zien hoe u **HorizontalRuleFormat**instelt:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertHorizontalRule.h" >}}

## OLE Object invoegen als pictogram

Aspose.Words API biedt de functie **Shape** → **InsertOleObjectAsIcon** om een ingesloten of gekoppeld OLE - object als pictogram in het document in te voegen. Met deze functie kunt u het pictogrambestand en het bijschrift opgeven. Het `OLE` objecttype wordt gedetecteerd met behulp van de bestandsextensie.

Het volgende codevoorbeeld laat zien hoe u OLE object invoegen als pictogram in het document instelt:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cpp" >}}

{{% alert color="primary" %}}

De maximale grootte van het pictogram moet 32x32 zijn voor de juiste weergave.

{{% /alert %}}
