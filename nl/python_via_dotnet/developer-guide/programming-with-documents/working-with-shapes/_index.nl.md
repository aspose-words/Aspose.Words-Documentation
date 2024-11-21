---
title: Werken met Vormen in Python
second_title: Aspose.Words voor Python via .NET
articleTitle: Werken met Shapes
linktitle: Werken met Shapes
description: "Vormen aanmaken en beheren, ole objecten in een document gebruiken Python."
type: docs
weight: 280
url: /nl/python-net/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

Dit onderwerp bespreekt hoe je programmatisch te werken met vormen met behulp van Aspose.Words.

De vormen in Aspose.Words vertegenwoordigen een object in de tekenlaag, zoals een AutoShape, tekstvak, vrije vorm, OLE-object, ActiveX-besturing of afbeelding. Een Word-document kan één of meerdere vormen bevatten. Vormen van het document worden vertegenwoordigd door de [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) Klasse.

## Vormen invoegen met behulp van documentbouwer

U kunt inline vorm met opgegeven type en grootte en vrij zwevende vorm met de opgegeven positie, grootte en tekst wrap type in een document met behulp van [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) methode. De [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) methode maakt het invoegen van DML vorm in het document model. Het document moet worden opgeslagen in het formaat, dat DML-vormen ondersteunt, anders worden dergelijke knooppunten omgezet in VML-vorm, terwijl het document wordt opgeslagen.

Het volgende voorbeeld van code laat zien hoe u deze vormen in het document kunt invoegen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-InsertShape.py" >}}

## Aspectratio vergrendeld instellen

Gebruik Aspose.Words, u kunt aangeven of de verhouding van de vorm en het aspect door de [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/) eigendom.

De volgende code voorbeeld laat zien hoe te werken met de **AspectRatioLocked** eigenschap:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AspectRatioLocked.py" >}}

## Vormindeling instellen in cel

U kunt ook aangeven of de vorm wordt weergegeven in een tabel of daarbuiten met behulp van de [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/) eigendom.

De volgende code voorbeeld laat zien hoe te werken met de **IsLayoutInCell** eigenschap:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}

## Kniphoekrek aanmaken

U kunt een kniphoek rechthoek met behulp van Aspose.Words. De vormtypes zijn [SINGLE_CORNER_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_snipped), [TOP_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_snipped), [DIAGONAL_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_snipped), [TOP_CORNERS_ONE_ROUNDED_ONE_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_one_rounded_one_snipped), [SINGLE_CORNER_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_rounded), [TOP_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_rounded), en [DIAGONAL_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_rounded).

De DML vorm wordt gemaakt met behulp van [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) methode met deze vormtypes. Deze types kunnen niet worden gebruikt om VML vormen te maken. Poging om vorm te creëren door gebruik te maken van de openbare constructeur van de [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) De klasse verhoogt de uitzondering op "NotSupported Exception."

Het volgende voorbeeld van de code laat zien hoe u dit soort vormen in het document invoegt:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddCornersSnipped.py" >}}

## Krijg feitelijke vormgrenzen

Gebruik Aspose.Words API, U kunt de locatie en grootte van de vorm met blok in punten, ten opzichte van het anker van de bovenste vorm. Om dit te doen, gebruik de [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/bounds_in_points/) eigendom.

De volgende code voorbeeld laat zien hoe te werken met de **BoundsInPoints** eigenschap:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}

## Verticale anker opgeven

U kunt de tekst verticale uitlijning binnen een vorm met behulp van de [vertical_anchor](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/vertical_anchor/) eigendom.

De volgende code voorbeeld laat zien hoe te werken met de **VerticalAnchor** eigenschap:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-VerticalAnchor.py" >}}

## Smart detecteren Kunstvorm

Aspose.Words kan ook detecteren of de vorm heeft een `SmartArt` object. Om dit te doen, gebruik de [has_smart_art eigenschap](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_smart_art/) eigendom.

De volgende code voorbeeld laat zien hoe te werken met de **HasSmartArt** eigenschap:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-DetectSmartArtShape.py" >}}

## Horizontaal invoegen Regel in document

U kunt horizontale regelvorm invoegen in een document met behulp van de [insert_horizontal_rule](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/) methode.

Het volgende code voorbeeld laat zien hoe dit te doen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHorizontalRule.py" >}}

Aspose.Words API levert de [horizontal_rule_format](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/horizontal_rule_format/) eigenschap om toegang te krijgen tot de eigenschappen van de horizontale regelvorm. De [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/) klasse onthult basiseigenschappen zoals [height](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/height/), [color](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/color/), [no_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/no_shade/) enz. voor de opmaak van een horizontale regel.

Het volgende voorbeeld van code laat zien hoe u kunt instellen [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-HorizontalRuleFormat.py" >}}

## OLE invoegen Object als pictogram

Aspose.Words API levert **Vorm.insert_ole_object_as_icon** functie om een ingebed of gekoppeld OLE-object als pictogram in het document in te voegen. Deze functie maakt het mogelijk om het pictogrambestand en het bijschrift te specificeren. De `OLE` Het objecttype wordt gedetecteerd met behulp van de bestandsextensie.

Het volgende voorbeeld van code laat zien hoe je OLE object als pictogram in het document invoegt:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

{{% alert color="primary" %}}

Maximale grootte van het pictogram moet 32x32 zijn voor het juiste display.

{{% /alert %}}

## Formaten met wiskunde XML importeren als vormen in DOM

U kunt [convert_shape_to_office_math](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/convert_shape_to_office_math/) eigenschap om de vormen te converteren met EquationXML naar Office Math objecten. De standaardwaarde van deze eigenschap komt overeen met MS Word gedrag dwz vormen met vergelijking XML worden niet omgezet naar Office wiskunde objecten.

Het volgende voorbeeld van code laat zien hoe vormen te converteren naar Office Math objecten:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-ConvertShapeToOfficeMath.py" >}}
