---
title: Utilisation du filigrane dans Java
second_title: Aspose.Words pour Java
articleTitle: Travailler avec un filigrane
linktitle: Travailler avec un filigrane
type: docs
description: "Manipulation du filigrane du document à l'aide de Java."
weight: 70
url: /fr/java/working-with-watermark/
timestamp: 2024-01-27-14-07-04
---

Cette rubrique explique comment travailler par programmation avec un filigrane à l'aide de Aspose.Words. Un filigrane est une image d'arrière-plan qui s'affiche derrière le texte d'un document. Un filigrane peut contenir un texte ou une image représentée par la classe [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/).

{{% alert color="primary" %}}

**Essayez en ligne**

Vous pouvez essayer cette fonctionnalité avec notre [Filigrane de document en ligne gratuit](https://products.aspose.app/words/watermark).

{{% /alert %}}

## Ajouter un filigrane à un document

Dans Microsoft Word, un filigrane peut facilement être inséré dans un document à l'aide de la commande Insérer un filigrane. Aspose.Words fournit la classe [watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) pour ajouter ou supprimer un filigrane dans les documents. Aspose.Words fournit l'énumération [WatermarkType](https://reference.aspose.com/words/java/com.aspose.words/watermarktype/)définissant trois types de filigranes possibles (Texte, Image et Aucun) avec lesquels travailler.

### Ajouter Un Filigrane De Texte

L'exemple de code suivant montre comment insérer un filigrane de texte dans un document en définissant [TextWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/textwatermarkoptions/) à l'aide de la méthode [SetText](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setText-java.lang.String):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.java" >}}

### Ajouter Un Filigrane D'Image

L'exemple de code suivant montre comment insérer un filigrane d'image dans un document en définissant [ImageWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/imagewatermarkoptions/) à l'aide de la méthode [SetImage](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setImage-java.awt.image.BufferedImage):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.java" >}}

Le filigrane peut également être inséré à l'aide de la classe de forme. Il est très facile d'insérer n'importe quelle forme ou image dans un en-tête ou un pied de page et ainsi créer un filigrane de n'importe quel type imaginable.

L'exemple de code suivant insère un filigrane dans un document Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-AddWatermarkToADocument-AddWatermarkToADocument.java" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier d'exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}


## Supprimer le filigrane d'un document

La classe [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) fournit la méthode `Remove` pour supprimer le filigrane d'un document.

Les exemples de code suivants montrent comment supprimer un filigrane des documents:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-RemoveWatermarkFromDocument.java" >}}

Pour supprimer le filigrane d'un document, vous devez définir uniquement le nom de la forme du filigrane lors de l'insertion, puis supprimer la forme du filigrane par un nom attribué.

L'exemple de code suivant vous montre comment définir le nom de la forme de filigrane et la supprimer du document:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-RemoveWatermark-RemoveWatermark.java" >}}

## Ajouter un filigrane dans une cellule de tableau

Parfois, vous devez insérer un filigrane/une image dans la cellule d'un tableau et l'afficher en dehors du tableau, vous pouvez utiliser la propriété [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell-boolean). Cette propriété obtient ou définit un indicateur indiquant si la forme est affichée à l'intérieur ou à l'extérieur d'un tableau. Notez que cette propriété ne fonctionne que lorsque vous optimisez le document pour Microsoft Word 2010 à l'aide de la méthode [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int).

L'exemple de code suivant montre comment utiliser cette propriété:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}
