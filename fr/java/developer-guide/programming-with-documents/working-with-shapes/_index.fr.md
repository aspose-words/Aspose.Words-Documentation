---
title: Travailler avec les formes en Java
second_title: Aspose.Words pour Java
articleTitle: Travailler avec les formes
linktitle: Travailler avec les formes
type: docs
description: "Introduction au langage de balisage de forme, créant des formes de différents types en utilisant Java."
weight: 280
url: /fr/java/working-with-shapes/
---

Ce thème traite de la façon de travailler programmatiquement avec les formes en utilisant Aspose.Words.

Les formes en Aspose.Words représenter un objet dans le calque de dessin, comme une AutoShape, une boîte de texte, un freeform, un objet OLE, un contrôle ActiveX ou une image. Un document Word peut contenir une ou plusieurs formes différentes. Les formes du document sont représentées par [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) En cours.

## Insérer la forme en utilisant le constructeur de document

Vous pouvez insérer la forme en ligne avec le type et la taille spécifiés et la forme flottante libre avec la position, la taille et le type de texte spécifié wrap dans un document en utilisant le [InsertShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertShape-int-double-double) méthode. Les **InsertShape** méthode permet d'insérer la forme DML dans le modèle de document. Le document doit être enregistré dans le format, qui prend en charge les formes DML, sinon, ces nœuds seront convertis en forme VML, pendant l'enregistrement du document.

L'exemple de code suivant montre comment insérer ces types de formes dans le document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

## Régler le rapport d'aspect verrouillé

Utilisation Aspose.Words, vous pouvez spécifier si le rapport d'aspect de la forme est verrouillé [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getAspectRatioLocked) propriété.

L'exemple de code suivant montre comment travailler avec le **AspectRatioLocked** Biens

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.java" >}}

## Définir la forme dans la cellule

Vous pouvez également spécifier si la forme est affichée à l'intérieur ou à l'extérieur d'une table en utilisant la [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell) propriété.

L'exemple de code suivant montre comment travailler avec le **IsLayoutInCell** Biens

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}

## Ajouter Corners Snipped

Vous pouvez créer un rectangle d'angle en utilisant Aspose.Words. Les types de forme sont *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* et *DiagonalCornersRounded.*

La forme DML est créée en utilisant **InsertShape** méthode avec ces types de forme. Ces types ne peuvent pas être utilisés pour créer des formes VML. Tentative de créer la forme en utilisant le constructeur public de la classe "Shape" soulève l'exception "NotSupportedException".

L'exemple de code suivant montre comment insérer ce type de formes dans le document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

## Obtenez des points réels de forme

Utilisation Aspose.Words API, vous pouvez obtenir l'emplacement et la taille de la forme contenant le bloc en points, par rapport à l'ancre de la forme la plus haute. Pour ce faire, utilisez la [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getBoundsInPoints) propriété.

L'exemple de code suivant montre comment travailler avec le **BoundsInPoints** Biens

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Spécifier l'ancrage vertical

Vous pouvez spécifier l'alignement vertical du texte dans une forme en utilisant le [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/textbox/#getVerticalAnchor) propriété.

L'exemple de code suivant montre comment travailler avec le **VerticalAnchor** Biens

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.java" >}}

## Détecter Smart Forme artistique

Aspose.Words permet également de détecter si la forme a un `SmartArt` objet. Pour ce faire, utilisez la [HasSmartArt](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasSmartArt) propriété.

L'exemple de code suivant montre comment travailler avec le **HasSmartArt** Biens

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-DetectSmartArtShape.java" >}}

## Format des règles horizontales

Vous pouvez insérer la forme de règle horizontale dans un document en utilisant [InsertHorizontalRule](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHorizontalRule) méthode.

Aspose.Words API fournit [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/shape/#getHorizontalRuleFormat) propriété pour accéder aux propriétés de la forme de règle horizontale. Les [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/horizontalruleformat/) classe expose les propriétés de base comme Hauteur, Couleur, NoShade etc. pour le formatage d'une règle horizontale.

L'exemple de code suivant montre comment définir **HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-ShapeHorizontalRuleFormat.java" >}}
