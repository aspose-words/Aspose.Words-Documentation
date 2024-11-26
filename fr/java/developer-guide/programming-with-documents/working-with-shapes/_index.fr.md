---
title: Travailler avec des formes dans Java
second_title: Aspose.Words pour Java
articleTitle: Travailler avec des Formes
linktitle: Travailler avec des Formes
type: docs
description: "Introduction au langage de balisage de forme, création de formes de différents types à l'aide de Java."
weight: 280
url: /fr/java/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

Cette rubrique explique comment travailler par programmation avec des formes à l'aide de Aspose.Words.

Les formes dans Aspose.Words représentent un objet dans le calque de dessin, tel qu'un AutoShape, une zone de texte, une forme libre, un objet OLE, un contrôle ActiveX ou une image. Un document Word peut contenir une ou plusieurs formes différentes. Les formes du document sont représentées par la classe [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/).

## Insérer Une Forme À L'Aide Du Générateur De Documents

Vous pouvez insérer une forme en ligne avec le type et la taille spécifiés et une forme flottante avec la position, la taille et le type d'habillage de texte spécifiés dans un document à l'aide de la méthode [InsertShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertShape-int-double-double). La méthode **InsertShape** permet d'insérer une forme DML dans le modèle de document. Le document doit être enregistré dans le format, qui prend en charge les formes DML, sinon, ces nœuds seront convertis en forme VML, lors de l'enregistrement du document.

L'exemple de code suivant montre comment insérer ces types de formes dans le document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

## Définir le Rapport Hauteur / Largeur Verrouillé

En utilisant Aspose.Words, vous pouvez spécifier si le rapport hauteur / largeur de la forme est verrouillé via la propriété [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getAspectRatioLocked).

L'exemple de code suivant montre comment utiliser la propriété **AspectRatioLocked**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.java" >}}

## Définir La Disposition Des Formes Dans La Cellule

Vous pouvez également spécifier si la forme est affichée à l'intérieur ou à l'extérieur d'un tableau à l'aide de la propriété [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell).

L'exemple de code suivant montre comment utiliser la propriété **IsLayoutInCell**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}

## Ajouter Des Coins Coupés

Vous pouvez créer un rectangle d'angle en utilisant Aspose.Words. Les types de forme sont *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* et *DiagonalCornersRounded.*

La forme DML est créée à l'aide de la méthode **InsertShape** avec ces types de forme. Ces types ne peuvent pas être utilisés pour créer VML formes. Tenter de créer une forme en utilisant le constructeur public de la classe "Shape" déclenche l'exception" NotSupportedException".

L'exemple de code suivant montre comment insérer ce type de formes dans le document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

## Obtenez des Points de Limites de Forme Réels

En utilisant Aspose.Words API, vous pouvez obtenir l'emplacement et la taille de la forme contenant le bloc en points, par rapport à l'ancre de la forme la plus haute. Pour ce faire, utilisez la propriété [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getBoundsInPoints).

L'exemple de code suivant montre comment utiliser la propriété **BoundsInPoints**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Spécifier L'Ancrage Vertical

Vous pouvez spécifier l'alignement vertical du texte dans une forme à l'aide de la propriété [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/textbox/#getVerticalAnchor).

L'exemple de code suivant montre comment utiliser la propriété **VerticalAnchor**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.java" >}}

## Détecter SmartArt Forme

Aspose.Words permet également de détecter si la Forme a un objet `SmartArt`. Pour ce faire, utilisez la propriété [HasSmartArt](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasSmartArt).

L'exemple de code suivant montre comment utiliser la propriété **HasSmartArt**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-DetectSmartArtShape.java" >}}

## Format de Règle Horizontale

Vous pouvez insérer une forme de règle horizontale dans un document à l'aide de la méthode [InsertHorizontalRule](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHorizontalRule).

Aspose.Words API fournit la propriété [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/shape/#getHorizontalRuleFormat) pour accéder aux propriétés de la forme de règle horizontale. La classe [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/horizontalruleformat/) expose des propriétés de base comme la Hauteur, la Couleur, NoShade etc. pour la mise en forme d'une règle horizontale.

L'exemple de code suivant montre comment définir **HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-ShapeHorizontalRuleFormat.java" >}}
