---
title: Travailler avec Watermark dans Java
second_title: Aspose.Words pour Java
articleTitle: Travailler avec Watermark
linktitle: Travailler avec Watermark
type: docs
description: "Documenter la manipulation du filigrane en utilisant Java."
weight: 70
url: /fr/java/working-with-watermark/
---

Ce sujet traite de la façon de travailler programmatiquement avec un filigrane utilisant Aspose.Words. Un filigrane est une image de fond qui s'affiche derrière le texte d'un document. Un filigrane peut contenir un texte ou une image [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) En cours.

{{% alert color="primary" %}}

**Essayez en ligne**

Vous pouvez essayer cette fonctionnalité avec notre [Document en ligne gratuit filigrane](https://products.aspose.app/words/watermark).

{{% /alert %}}

## Ajouter un filigrane à un document

En Microsoft Word, un filigrane peut facilement être inséré dans un document en utilisant la commande Insérez le filigrane. Aspose.Words fournit les [watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) classe pour ajouter ou supprimer le filigrane dans les documents. Aspose.Words fournit les [Type de filigrane](https://reference.aspose.com/words/java/com.aspose.words/watermarktype/)énumération définissant trois types possibles de filigranes (Texte, Image et Aucun) avec lesquels travailler

### Ajouter un mot filigrane

L'exemple de code suivant montre comment insérer un filigrane de texte dans un document en définissant [TextWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/textwatermarkoptions/) utilisant les [SetText](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setText-java.lang.String) méthode:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.java" >}}

### Ajouter une image filigrane

L'exemple de code suivant montre comment insérer un filigrane d'image dans un document en définissant [ImageWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/imagewatermarkoptions/) utilisant les [SetImage](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setImage-java.awt.image.BufferedImage) méthode:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.java" >}}

Le filigrane peut également être inséré en utilisant la classe de forme. Il est très facile d'insérer n'importe quelle forme ou image dans un en-tête ou un pied de page et ainsi créer un filigrane de tout type imaginable.

L'exemple de code suivant insère un filigrane dans un document Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-AddWatermarkToADocument-AddWatermarkToADocument.java" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}


## Supprimer le filigrane d'un document

Les [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) classe fournit la `Remove` méthode pour enlever le filigrane d'un document.

Les exemples de codes suivants montrent comment supprimer un filigrane des documents:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-RemoveWatermarkFromDocument.java" >}}

Pour enlever le filigrane d'un document, vous devez définir seulement le nom de la forme du filigrane pendant l'insertion, puis enlever la forme du filigrane par un nom assigné.

L'exemple de code suivant vous montre comment définir le nom de la forme du filigrane et le retirer du document:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-RemoveWatermark-RemoveWatermark.java" >}}

## Ajouter un filigrane dans une cellule de table

Parfois, vous devez insérer un filigrane/image dans la cellule d'une table et l'afficher à l'extérieur de la table, vous pouvez utiliser [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell-boolean) propriété. Cette propriété obtient ou définit un drapeau indiquant si la forme est affichée à l'intérieur ou à l'extérieur d'une table. Notez que cette propriété ne fonctionne que lorsque vous optimisez le document pour Microsoft Word 2010 utilisant [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) méthode

L'exemple de code suivant montre comment utiliser cette propriété:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}
