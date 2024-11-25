---
title: Travailler avec des images dans Java
second_title: Aspose.Words pour Java
articleTitle: Travailler avec des Images
linktitle: Travailler avec des Images
type: docs
description: "Formes d'image dans les détails et fonctionnalités avancées fournies par Aspose.Words pour Java."
weight: 300
url: /fr/java/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words permet aux utilisateurs de travailler avec des images de manière très flexible. Dans cet article, vous ne pouvez explorer que certaines des possibilités de travailler avec des images.

## Comment extraire des images d'un Document {#how-to-extract-images-from-a-document}

Toutes les images sont stockées à l'intérieur des nœuds **Shape** d'un document. Pour extraire toutes les images ou les images ayant un type spécifique du document, procédez comme suit:

- Utilisez la méthode [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChildNodes) pour sélectionner tous les nœuds de forme.
- Parcourez les collections de nœuds résultantes.
- Vérifiez la propriété booléenne [hasImage](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasImage).
- Extrayez les données d'image à l'aide de la propriété [ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData).
- Enregistrez les données d'image dans un fichier.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-ExtractImagesToFiles-ExtractImagesToFiles.java" >}}

## Comment insérer un code-barres sur chaque page de document {#how-to-insert-barcode-on-each-documen-page}

Cet exemple vous permet d'ajouter des codes-barres identiques ou différents sur toutes les pages ou sur des pages spécifiques d'un document Word. Il n'existe aucun moyen direct d'ajouter des codes-barres sur toutes les pages d'un document, mais vous pouvez utiliser les méthodes [moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int), [moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) et [insertImage](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertImage(byte[])) pour accéder à n'importe quelle section ou en-têtes/pieds de page et insérer les images de codes-barres comme vous pouvez le voir dans le code suivant.

L'exemple de code suivant montre comment insérer une image de code-barres sur chaque page d'un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeImage.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeIntoFooter.java" >}}

## Verrouiller le rapport hauteur / largeur de l'image {#lock-aspect-ratio-of-image}

Le rapport hauteur / largeur d'une forme géométrique est le rapport de ses tailles dans différentes dimensions. Vous pouvez verrouiller le rapport hauteur / largeur d'une image à l'aide de [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAspectRatioLocked). La valeur par défaut du rapport hauteur / largeur de la forme dépend du [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/). C'est vrai pour `ShapeType.Image` et faux pour les autres types de formes.

L'exemple de code suivant montre comment travailler avec les proportions:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetImageAspectRatioLocked-DocumentBuilderSetImageAspectRatioLocked.java" >}}

## Comment obtenir les Limites réelles de la Forme en Points {#how-to-get-actual-bounds-of-shape-in-points}

Si vous souhaitez que le cadre de délimitation réel de la forme soit rendu sur la page, vous pouvez y parvenir en utilisant la propriété [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getBoundsInPoints).

L'exemple de code suivant montre comment utiliser cette propriété:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Recadrer les Images

Le recadrage d'une image fait généralement référence à la suppression des parties extérieures indésirables d'une image pour aider à améliorer le cadrage. Il est également utilisé pour la suppression de certaines parties d'une image afin d'augmenter la mise au point sur une zone particulière.

L'exemple de code suivant montre comment y parvenir en utilisant Aspose.Words API:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImageCall.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImage.java" >}}

## Enregistrement des images sous WMF

Aspose.Words fournit une fonctionnalité pour enregistrer toutes les images disponibles dans un document dans [WMF](https://docs.fileformat.com/image/wmf/)formatez lors de la conversion de DOCX en RTF.

L'exemple de code suivant montre comment enregistrer des images sous WMF avec RTF options d'enregistrement:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.java" >}}
