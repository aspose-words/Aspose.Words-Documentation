---
title: Werken met Shapes in Java
second_title: Aspose.Words voor Java
articleTitle: Werken met Shapes
linktitle: Werken met Shapes
type: docs
description: "Inleiding tot het vormgeven van markup taal, het creëren van vormen van verschillende soorten met behulp van Java."
weight: 280
url: /nl/java/working-with-shapes/
---

Dit onderwerp bespreekt hoe je programmatisch te werken met vormen met behulp van Aspose.Words.

De vormen in Aspose.Words vertegenwoordigen een object in de tekenlaag, zoals een AutoShape, tekstvak, vrije vorm, OLE-object, ActiveX-besturing of afbeelding. Een Word-document kan een of meer verschillende vormen bevatten. Vormen van het document worden vertegenwoordigd door de [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) Klasse.

## Vorm invoegen met behulp van documentbouwer

U kunt inline vorm met opgegeven type en grootte en vrij zwevende vorm met de opgegeven positie, grootte en tekst wrap type in een document met behulp van de [InsertShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertShape-int-double-double) methode. De **InsertShape** methode maakt het invoegen van DML vorm in het document model. Het document moet worden opgeslagen in het formaat, dat DML-vormen ondersteunt, anders zullen dergelijke knooppunten worden omgezet in VML-vorm, terwijl documenten worden opgeslagen.

Het volgende voorbeeld van code laat zien hoe u deze vormen in het document kunt invoegen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

## Aspectratio vergrendeld instellen

Gebruik Aspose.Words, u kunt aangeven of de beeldverhouding van de vorm door de [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getAspectRatioLocked) eigendom.

De volgende code voorbeeld laat zien hoe te werken met de **AspectRatioLocked** eigenschap:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.java" >}}

## Vormindeling instellen in cel

U kunt ook aangeven of de vorm wordt weergegeven in een tabel of daarbuiten met behulp van de [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell) eigendom.

De volgende code voorbeeld laat zien hoe te werken met de **IsLayoutInCell** eigenschap:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}

## Hoeken geknipt toevoegen

U kunt een kniphoek rechthoek met behulp van Aspose.Words. De vormtypes zijn *SingleCornerGesnipt, TopCornersGesnipte, DiagonalCornersGesnipte, TopCornersOneRoundedOneSniped, SingleCornerRounded, TopCornersRounded,* en *DiagonalCornersRounded.*

De DML vorm wordt gemaakt met behulp van **InsertShape** methode met deze vormtypes. Deze types kunnen niet worden gebruikt om VML vormen te maken. Poging om vorm te creëren door gebruik te maken van de publieke constructeur van de "Shape" klasse verhoogt de "NotSupported Exception" uitzondering.

Het volgende voorbeeld van code laat zien hoe je dit soort vormen in het document invoegt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

## Krijg feitelijke vormgrenzen

Gebruik Aspose.Words API, U kunt de locatie en grootte van de vorm met blok in punten, ten opzichte van het anker van de bovenste vorm. Om dit te doen, gebruik de [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getBoundsInPoints) eigendom.

De volgende code voorbeeld laat zien hoe te werken met de **BoundsInPoints** eigenschap:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Verticale anker opgeven

U kunt de tekst verticale uitlijning binnen een vorm met behulp van de [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/textbox/#getVerticalAnchor) eigendom.

De volgende code voorbeeld laat zien hoe te werken met de **VerticalAnchor** eigenschap:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.java" >}}

## Smart detecteren Kunstvorm

Aspose.Words kan ook detecteren of de vorm heeft een `SmartArt` object. Om dit te doen, gebruik de [HasSmartArt](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasSmartArt) eigendom.

De volgende code voorbeeld laat zien hoe te werken met de **HasSmartArt** eigenschap:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-DetectSmartArtShape.java" >}}

## Horizontaal regelformaat

U kunt horizontale regel vorm in te voegen in een document met behulp van de [InsertHorizontalRule](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHorizontalRule) methode.

Aspose.Words API levert [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/shape/#getHorizontalRuleFormat) eigendom om toegang te krijgen tot de eigenschappen van de horizontale regelvorm. De [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/horizontalruleformat/) klasse onthult basiseigenschappen zoals Hoogte, Kleur, NoShade etc. voor het formatteren van een horizontale regel.

Het volgende voorbeeld van de code laat zien hoe u moet instellen **HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-ShapeHorizontalRuleFormat.java" >}}
