---
title: Travailler avec des formes dans Python
second_title: Aspose.Words pour Python via .NET
articleTitle: Travailler avec des formes
linktitle: Travailler avec des formes
description: "Créez et gérez des formes et des objets anciens dans un document à l'aide de Python."
type: docs
weight: 280
url: /fr/python-net/working-with-shapes/
---

Cette rubrique explique comment travailler par programmation avec des formes à l'aide de Aspose.Words.

Les formes dans Aspose.Words représentent un objet dans le calque de dessin, tel qu'une forme automatique, une zone de texte, une forme libre, un objet OLE, un contrôle ActiveX ou une image. Un document Word peut contenir une ou plusieurs formes différentes. Les formes du document sont représentées par la classe [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/).

## Insertion de formes à l'aide de Document Builder

Vous pouvez insérer une forme en ligne avec un type et une taille spécifiés et une forme flottante avec la position, la taille et le type d'habillage de texte spécifiés dans un document à l'aide de la méthode [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/). La méthode [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) permet d'insérer une forme DML dans le modèle de document. Le document doit être enregistré dans un format prenant en charge les formes DML, sinon ces nœuds seront convertis en forme VML lors de l'enregistrement du document.

L'exemple de code suivant montre comment insérer ces types de formes dans le document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-InsertShape.py" >}}

## Définir le format d'image verrouillé

À l'aide de Aspose.Words, vous pouvez spécifier si les proportions de la forme sont verrouillées via la propriété [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/).

L'exemple de code suivant montre comment utiliser la propriété **AspectRatioLocked**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AspectRatioLocked.py" >}}

## Définir la disposition de la forme dans la cellule

Vous pouvez également spécifier si la forme est affichée à l'intérieur ou à l'extérieur d'un tableau à l'aide de la propriété [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/).

L'exemple de code suivant montre comment utiliser la propriété **IsLayoutInCell**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}

## Créer un rectangle de coin de coupe

Vous pouvez créer un rectangle de coin coupé à l'aide de Aspose.Words. Les types de formes sont [SINGLE_CORNER_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_snipped), [TOP_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_snipped), [DIAGONAL_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_snipped), [TOP_CORNERS_ONE_ROUNDED_ONE_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_one_rounded_one_snipped), [SINGLE_CORNER_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_rounded), [TOP_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_rounded) et [DIAGONAL_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_rounded).

La forme DML est créée à l'aide de la méthode [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) avec ces types de forme. Ces types ne peuvent pas être utilisés pour créer des formes VML. Toute tentative de création de forme à l'aide du constructeur public de la classe [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) déclenche l'exception "NotSupportedException".

L'exemple de code suivant montre comment insérer ce type de formes dans le document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddCornersSnipped.py" >}}

## Obtenir les points de limites de forme réels

À l'aide de Aspose.Words API, vous pouvez obtenir l'emplacement et la taille de la forme contenant le bloc en points, par rapport à l'ancre de la forme la plus haute. Pour ce faire, utilisez la propriété [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/bounds_in_points/).

L'exemple de code suivant montre comment utiliser la propriété **BoundsInPoints**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}

## Spécifier l'ancrage vertical

Vous pouvez spécifier l'alignement vertical du texte dans une forme à l'aide de la propriété [vertical_anchor](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/vertical_anchor/).

L'exemple de code suivant montre comment utiliser la propriété **VerticalAnchor**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-VerticalAnchor.py" >}}

## Détecter la forme SmartArt

Aspose.Words permet également de détecter si la Shape possède un objet `SmartArt`. Pour ce faire, utilisez la propriété [Propriété has_smart_art](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_smart_art/).

L'exemple de code suivant montre comment utiliser la propriété **HasSmartArt**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-DetectSmartArtShape.py" >}}

## Insérer une règle horizontale dans le document

Vous pouvez insérer une forme de règle horizontale dans un document à l'aide de la méthode [insert_horizontal_rule](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/).

L'exemple de code suivant montre comment procéder:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHorizontalRule.py" >}}

Aspose.Words API fournit la propriété [horizontal_rule_format](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/horizontal_rule_format/) pour accéder aux propriétés de la forme de la règle horizontale. La classe [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/) expose des propriétés de base comme [height](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/height/), [color](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/color/), [no_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/no_shade/) etc. pour le formatage d'une règle horizontale.

L'exemple de code suivant montre comment définir [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-HorizontalRuleFormat.py" >}}

## Insérer un objet OLE en tant qu'icône

Aspose.Words API fournit une fonction **Shape.insert_ole_object_as_icon** pour insérer un objet OLE incorporé ou lié sous forme d'icône dans le document. Cette fonction permet de spécifier le fichier icône et la légende. Le type d'objet `OLE` doit être détecté à l'aide de l'extension de fichier.

L'exemple de code suivant montre comment définir l'insertion d'un objet OLE en tant qu'icône dans le document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

{{% alert color="primary" %}}

La taille maximale de l'icône doit être de 32x32 pour un affichage correct.

{{% /alert %}}

## Importer des formes avec Math XML en tant que formes dans DOM

Vous pouvez utiliser la propriété [convert_shape_to_office_math](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/convert_shape_to_office_math/) pour convertir les formes avec EquationXML en objets Office Math. La valeur par défaut de cette propriété correspond au comportement de MS Word, c'est-à-dire que les formes avec une équation XML ne sont pas converties en objets mathématiques Office.

L’exemple de code suivant montre comment convertir des formes en objets Office Math:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-ConvertShapeToOfficeMath.py" >}}
