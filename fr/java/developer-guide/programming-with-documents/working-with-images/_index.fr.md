---
title: Travailler avec Images en Java
second_title: Aspose.Words pour Java
articleTitle: Travailler avec des images
linktitle: Travailler avec des images
type: docs
description: "Formes d'image dans les détails et fonctionnalités avancées fournies par Aspose.Words pour Java."
weight: 300
url: /fr/java/working-with-images/
---

Aspose.Words permet aux utilisateurs de travailler avec les images de manière très flexible. Dans cet article, vous pouvez explorer seulement quelques-unes des possibilités de travailler avec des images.

## Comment extraire des images d'un document {#how-to-extract-images-from-a-document}

Toutes les images sont stockées à l'intérieur **Shape** noeuds dans un document. Pour extraire toutes les images ayant un type spécifique du document, suivez les étapes suivantes:

- Utilisez le [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChildNodes) méthode pour sélectionner tous les nœuds de forme.
- Il s'agit de collections de nœuds.
- Vérifiez [hasImage](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasImage) propriété booléenne.
- Extraire les données d'image en utilisant la [ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData) propriété.
- Enregistrer les données d'image dans un fichier.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-ExtractImagesToFiles-ExtractImagesToFiles.java" >}}

## Comment insérer le code à barres sur chaque page de document {#how-to-insert-barcode-on-each-documen-page}

Cet exemple vous permet d'ajouter des codes-barres identiques ou différents sur toutes les pages ou des pages spécifiques d'un document Word. Il n'y a pas de moyen direct d'ajouter des codes-barres sur toutes les pages d'un document, mais vous pouvez utiliser [moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int), [moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) et [insertImage](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertImage(byte[])) les méthodes pour passer à n'importe quelle section ou en-têtes/pieds et insérer les images de code-barres comme vous pouvez le voir dans le code suivant

L'exemple de code suivant montre comment insérer une image de code-barres sur chaque page d'un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeImage.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeIntoFooter.java" >}}

## Rapport d'angle de verrouillage de l'image {#lock-aspect-ratio-of-image}

Le rapport d'aspect d'une forme géométrique est le rapport de ses tailles dans différentes dimensions. Vous pouvez verrouiller le rapport d'aspect d'une image en utilisant [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAspectRatioLocked). La valeur par défaut du rapport d'aspect de la forme dépend de la [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/). C'est true pour `ShapeType.Image` et false pour les autres types de forme.

L'exemple de code suivant montre comment travailler avec le rapport d'aspect:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetImageAspectRatioLocked-DocumentBuilderSetImageAspectRatioLocked.java" >}}

## Comment obtenir des Bounds réels de la forme dans les points {#how-to-get-actual-bounds-of-shape-in-points}

Si vous voulez la boîte de délimitation réelle de la forme telle que rendue sur la page, vous pouvez atteindre ceci en utilisant le [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getBoundsInPoints) propriété.

L'exemple de code suivant montre comment utiliser cette propriété:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Crop Images

Le recadrage d'une image fait généralement référence à la suppression des parties extérieures indésirables d'une image pour aider à améliorer le cadrage. Il est également utilisé pour enlever certaines parties d'une image afin d'accroître l'attention sur une zone particulière.

L'exemple de code suivant montre comment y parvenir en utilisant Aspose.Words API:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImageCall.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImage.java" >}}

## Enregistrer des images comme WMF

Aspose.Words fournit des fonctionnalités pour enregistrer toutes les images disponibles dans un document à [WMF](https://docs.fileformat.com/image/wmf/)format tout en convertissant DOCX en RTF.

L'exemple de code suivant montre comment enregistrer des images en tant que WMF avec les options de sauvegarde RTF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.java" >}}
