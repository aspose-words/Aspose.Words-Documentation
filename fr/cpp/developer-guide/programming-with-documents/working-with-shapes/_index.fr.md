---
title: Travailler avec des formes en C++
second_title: Aspose.Words pour C++
articleTitle: Travailler avec des Formes
linktitle: Travailler avec des Formes
type: docs
description: "Introduction au langage de balisage de formes, création de formes de différents types à l'aide de C++."
weight: 280
url: /fr/cpp/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

Cette rubrique explique comment travailler par programmation avec des formes à l'aide de Aspose.Words.

Les formes dans Aspose.Words représentent un objet dans le calque de dessin, tel qu'un AutoShape, une zone de texte, une forme libre, un objet OLE, un contrôle ActiveX ou une image. Un document Word peut contenir une ou plusieurs formes différentes. Les formes du document sont représentées par la classe [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/).

## Insérer Une Forme À L'Aide Du Générateur De Documents

Vous pouvez insérer une forme en ligne avec le type et la taille spécifiés et une forme flottante avec la position, la taille et le type d'habillage de texte spécifiés dans un document à l'aide de la méthode [InsertShape](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertshape/). La méthode **InsertShape** permet d'insérer une forme DML dans le modèle de document. Le document doit être enregistré dans le format, qui prend en charge les formes DML, sinon, ces nœuds seront convertis en forme VML, lors de l'enregistrement du document.

L'exemple de code suivant montre comment insérer ces types de formes dans le document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cpp" >}}

## Définir le Rapport Hauteur / Largeur Verrouillé

En utilisant Aspose.Words, vous pouvez spécifier si le rapport hauteur / largeur de la forme est verrouillé via la propriété [AspectRatioLocked](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_aspectratiolocked/).

L'exemple de code suivant montre comment utiliser la propriété **AspectRatioLocked**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cpp" >}}

## Définir La Disposition Des Formes Dans La Cellule

Vous pouvez également spécifier si la forme est affichée à l'intérieur ou à l'extérieur d'un tableau à l'aide de la propriété [IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/).

L'exemple de code suivant montre comment utiliser la propriété **IsLayoutInCell**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}

## Créer un Rectangle d'angle Coupé

Vous pouvez créer un rectangle d'angle en utilisant Aspose.Words. Les types de forme sont *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* et *DiagonalCornersRounded.*

La forme DML est créée à l'aide de la méthode **InsertShape** avec ces types de forme. Ces types ne peuvent pas être utilisés pour créer des formes VML. Tenter de créer une forme en utilisant le constructeur public de la classe "Shape" déclenche l'exception" NotSupportedException".

L'exemple de code suivant montre comment insérer ce type de formes dans le document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cpp" >}}

## Obtenez des Points de Limites de Forme Réels

En utilisant l'API Aspose.Words, vous pouvez obtenir l'emplacement et la taille de la forme contenant le bloc en points, par rapport à l'ancre de la forme la plus haute. Pour ce faire, utilisez la propriété [BoundsInPoints](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_boundsinpoints/).

L'exemple de code suivant montre comment utiliser la propriété **BoundsInPoints**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cpp" >}}

## Format de Règle Horizontale

L'API Aspose.Words fournit la propriété [HorizontalRuleFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_horizontalruleformat/) pour accéder aux propriétés de la forme de règle horizontale. La classe **HorizontalRuleFormat** expose des propriétés de base telles que la Hauteur, la Couleur, l'ombre, etc. pour la mise en forme d'une règle horizontale.

L'exemple de code suivant montre comment définir **HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertHorizontalRule.h" >}}

## Insérer un objet OLE en tant qu'icône

L'API Aspose.Words fournit la fonction **Shape** → **InsertOleObjectAsIcon** pour insérer un objet OLE incorporé ou lié sous forme d'icône dans le document. Cette fonction permet de spécifier le fichier icône et la légende. Le type d'objet `OLE` doit être détecté à l'aide de l'extension de fichier.

L'exemple de code suivant montre comment définir insérer un objet OLE en tant qu'icône dans le document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cpp" >}}

{{% alert color="primary" %}}

La taille maximale de l'icône doit être de 32x32 pour un affichage correct.

{{% /alert %}}
