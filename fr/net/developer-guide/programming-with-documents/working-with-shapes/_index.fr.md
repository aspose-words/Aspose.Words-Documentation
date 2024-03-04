---
title: Travailler avec des formes dans C#
second_title: Aspose.Words pour .NET
articleTitle: Travailler avec des formes
linktitle: Travailler avec des formes
description: "Introduction au langage de balisage de forme, création de formes de différents types à l'aide de C#."
type: docs
weight: 280
url: /fr/net/working-with-shapes/
---

Cette rubrique explique comment travailler par programmation avec des formes à l'aide de Aspose.Words.

Les formes dans Aspose.Words représentent un objet dans le calque de dessin, tel qu'une forme automatique, une zone de texte, une forme libre, un objet OLE, un contrôle ActiveX ou une image. Un document Word peut contenir une ou plusieurs formes différentes. Les formes dans Aspose.Words sont représentées par la classe [Shape](https://reference.aspose.com/words/fr/net/aspose.words.drawing/shape/).

## Insertion de formes à l'aide de Document Builder

Vous pouvez insérer une forme en ligne avec un type et une taille spécifiés et une forme flottante avec la position, la taille et le type d'habillage de texte spécifiés dans un document à l'aide de la méthode [InsertShape](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/insertshape/). La méthode **InsertShape** permet d'insérer une forme DML dans le modèle de document. Le document doit être enregistré dans un format prenant en charge les formes DML, sinon ces nœuds seront convertis en forme VML lors de l'enregistrement du document.

L'exemple de code suivant montre comment insérer ces types de formes dans le document:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cs" >}}

## Définir le format d'image verrouillé

À l'aide de Aspose.Words, vous pouvez spécifier si les proportions de la forme sont verrouillées via la propriété [AspectRatioLocked](https://reference.aspose.com/words/fr/net/aspose.words.drawing/shapebase/aspectratiolocked/).

L'exemple de code suivant montre comment utiliser la propriété **AspectRatioLocked**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## Définir la disposition de la forme dans la cellule

Vous pouvez également spécifier si la forme est affichée à l'intérieur ou à l'extérieur d'un tableau à l'aide de la propriété [IsLayoutInCell](https://reference.aspose.com/words/fr/net/aspose.words.drawing/shapebase/islayoutincell/).

L'exemple de code suivant montre comment utiliser la propriété **IsLayoutInCell**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}

## Créer un rectangle de coin de coupe

Vous pouvez créer un rectangle de coin coupé à l'aide de Aspose.Words. Les types de forme sont *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded* et *DiagonalCornersRounded.*

La forme DML est créée à l'aide de la méthode **InsertShape** avec ces types de forme. Ces types ne peuvent pas être utilisés pour créer des formes VML. Toute tentative de création de forme à l'aide du constructeur public de la classe "Shape" déclenche l'exception "NotSupportedException".

L'exemple de code suivant montre comment insérer ce type de formes dans le document:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cs" >}}

## Obtenir les points de limites de forme réels

À l'aide de Aspose.Words API, vous pouvez obtenir l'emplacement et la taille de la forme contenant le bloc en points, par rapport à l'ancre de la forme la plus haute. Pour ce faire, utilisez la propriété [BoundsInPoints](https://reference.aspose.com/words/fr/net/aspose.words.drawing/shapebase/boundsinpoints/).

L'exemple de code suivant montre comment utiliser la propriété **BoundsInPoints**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## Spécifier l'ancrage vertical

Vous pouvez spécifier l'alignement vertical du texte dans une forme à l'aide de la propriété [VerticalAnchor](https://reference.aspose.com/words/fr/net/aspose.words.drawing/textbox/verticalanchor/).

L'exemple de code suivant montre comment utiliser la propriété **VerticalAnchor**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.cs" >}}

## Détecter la forme SmartArt

Aspose.Words permet également de détecter si la Shape possède un objet `SmartArt`. Pour ce faire, utilisez la propriété [HasSmartArt](https://reference.aspose.com/words/fr/net/aspose.words.drawing/shape/hassmartart/).

L'exemple de code suivant montre comment utiliser la propriété **HasSmartArt**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-DetectSmartArtShape.cs" >}}

## Insérer une règle horizontale dans le document

Vous pouvez insérer une forme de règle horizontale dans un document à l'aide de la méthode [InsertHorizontalRule](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/inserthorizontalrule/).

L'exemple de code suivant montre comment procéder:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

Aspose.Words API fournit la propriété [HorizontalRuleFormat](https://reference.aspose.com/words/fr/net/aspose.words.drawing/shape/horizontalruleformat/) pour accéder aux propriétés de la forme de la règle horizontale. La classe [HorizontalRuleFormat](https://reference.aspose.com/words/fr/net/aspose.words.drawing/horizontalruleformat/) expose les propriétés de base telles que Height, Color, NoShade, etc. pour le formatage d'une règle horizontale.

L'exemple de code suivant montre comment définir **HorizontalRuleFormat**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderHorizontalRuleFormat.cs" >}}

## Importer des formes avec Math XML en tant que formes dans DOM

Vous pouvez utiliser la propriété [ConvertShapeToOfficeMath](https://reference.aspose.com/words/fr/net/aspose.words.loading/loadoptions/convertshapetoofficemath/) pour convertir les formes avec EquationXML en objets Office Math. La valeur par défaut de cette propriété correspond au comportement Microsoft Word, c'est-à-dire que les formes avec une équation XML ne sont pas converties en objets mathématiques Office.

L’exemple de code suivant montre comment convertir des formes en objets Office Math:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-ConvertShapeToOfficeMath.cs" >}}
