---
title: Travailler avec des images dans C#
second_title: Aspose.Words pour .NET
articleTitle: Travailler avec des images
linktitle: Travailler avec des images
description: "Formes d'image en détail et fonctionnalités avancées fournies par Aspose.Words pour .NET."
type: docs
weight: 300
url: /fr/net/working-with-images/
timestamp: 2024-05-02-11-51-44
---

Aspose.Words permet aux utilisateurs de travailler avec des images de manière très flexible. Dans cet article, vous ne pouvez explorer que certaines des possibilités de travail avec des images.

## Comment insérer une image {#insert-an-image}

[DocumentBuilder](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/) fournit plusieurs surcharges de la méthode [InsertImage](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/insertimage/) qui vous permettent d'insérer une image en ligne ou flottante. Si l'image est un métafichier EMF ou WMF, elle sera insérée dans le document au format métafichier. Toutes les autres images seront stockées au format PNG. La méthode **InsertImage** peut utiliser des images provenant de différentes sources:

- Depuis un fichier ou `URL` en passant un paramètre [InsertImage](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/insertimage/) `String`
- Depuis un flux en passant un paramètre `Stream` **InsertImage**
- Depuis un objet Image en passant un paramètre Image **InsertImage**
- Depuis un tableau d'octets en passant un paramètre de tableau d'octets **InsertImage**

Pour chacune des méthodes **InsertImage**, il existe d'autres surcharges qui vous permettent d'insérer une image avec les options suivantes:
- En ligne ou flottant à une position spécifique, par exemple, **InsertImage**
- Échelle de pourcentage ou taille personnalisée, par exemple, **InsertImage** ; de plus, la méthode **InsertImage** renvoie un objet [Shape](https://reference.aspose.com/words/fr/net/aspose.words.drawing/shape/) qui vient d'être créé et inséré afin que vous puissiez modifier davantage les propriétés de la forme

### Comment insérer une image {#insert-an-inline-image} en ligne

Transmettez une seule chaîne représentant un fichier contenant l'image à **InsertImage** pour insérer l'image dans le document en tant que graphique en ligne

L'exemple de code suivant montre comment insérer une image en ligne à la position du curseur dans un document:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cs" >}}

### Comment insérer une image flottante {#insert-a-floating-image}

L'exemple de code suivant montre comment insérer une image flottante à partir d'un fichier ou d'un `URL` à une position et une taille spécifiées:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cs" >}}

## Comment extraire des images d'un document {#how-to-extract-images-from-a-document}

Toutes les images sont stockées dans les nœuds **Shape** dans un [Document](https://reference.aspose.com/words/fr/net/aspose.words/document/). Pour extraire toutes les images ou images d'un type spécifique du document, procédez comme suit:

- Utilisez la méthode [GetChildNodes](https://reference.aspose.com/words/fr/net/aspose.words/compositenode/getchildnodes/) pour sélectionner tous les nœuds **Shape**.
- Parcourez les collections de nœuds résultantes.
- Vérifiez la propriété booléenne [HasImage](https://reference.aspose.com/words/fr/net/aspose.words.drawing/shape/hasimage/).
- Extrayez les données d'image à l'aide de la propriété [ImageData](https://reference.aspose.com/words/fr/net/aspose.words.drawing/shape/imagedata/).
- Enregistrez les données d'image dans un fichier.

L'exemple de code suivant montre comment extraire des images d'un document et les enregistrer sous forme de fichiers:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cs" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Images.docx).

{{% /alert %}}

## Comment insérer un code-barres sur chaque page de document {#how-to-insert-barcode-on-each-documen-page}

Cet exemple vous montre comment ajouter des codes-barres identiques ou différents sur toutes les pages ou des pages spécifiques d'un document Word. Il n'existe pas de moyen direct d'ajouter des codes-barres sur toutes les pages d'un document, mais vous pouvez utiliser les méthodes **MoveToSection**, **MoveToHeaderFooter** et **InsertImage** pour vous déplacer vers n'importe quelle section ou en-têtes/pieds de page et insérer les images de codes-barres comme vous pouvez le voir dans le code suivant.

L'exemple de code suivant montre comment insérer une image de code-barres sur chaque page d'un document:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeImage.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeIntoFooter.cs" >}}

## Verrouiller le rapport hauteur/largeur de l'image {#lock-aspect-ratio-of-image}

Le rapport hauteur/largeur d’une forme géométrique est le rapport de ses tailles dans différentes dimensions. Vous pouvez verrouiller le rapport hauteur/largeur de l'image à l'aide de [AspectRatioLocked](https://reference.aspose.com/words/fr/net/aspose.words.drawing/shapebase/aspectratiolocked/). La valeur par défaut du rapport hauteur/largeur de la forme dépend du [ShapeType](https://reference.aspose.com/words/fr/net/aspose.words.drawing/shapetype/). Il s'agit de *true* pour `ShapeType.Image` et *false* pour les autres types de formes.

L'exemple de code suivant montre comment utiliser les proportions:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## Comment obtenir les limites réelles de la forme en points {#how-to-get-actual-bounds-of-shape-in-points}

Si vous souhaitez que le cadre de délimitation réel de la forme soit rendu sur la page, vous pouvez y parvenir en utilisant la propriété [BoundsInPoints](https://reference.aspose.com/words/fr/net/aspose.words.rendering/noderendererbase/boundsinpoints/).

L'exemple de code suivant montre comment utiliser cette propriété:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## Recadrer les images {#crop-images}

Le recadrage d'une image fait généralement référence à la suppression des parties extérieures indésirables d'une image pour aider à améliorer le cadrage. Il est également utilisé pour supprimer certaines parties d’une image afin d’augmenter la mise au point sur une zone particulière.

L'exemple de code suivant montre comment y parvenir à l'aide de Aspose.Words API:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImageCall.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImage.cs" >}}

## Enregistrer les images au format WMF {#save-images-as-wmf}

Aspose.Words fournit des fonctionnalités pour enregistrer toutes les images disponibles dans un document au format [WMF](https://docs.fileformat.com/image/wmf/) lors de la conversion de DOCX en RTF.

L'exemple de code suivant montre comment enregistrer des images au format WMF avec les options d'enregistrement RTF:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cs" >}}
