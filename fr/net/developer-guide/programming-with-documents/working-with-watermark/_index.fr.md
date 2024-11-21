---
title: Travailler avec un filigrane dans C#
second_title: Aspose.Words pour .NET
articleTitle: Travailler avec un filigrane
linktitle: Travailler avec un filigrane
description: "Manipulation du filigrane de document à l'aide de C#."
type: docs
weight: 340
url: /fr/net/working-with-watermark/
timestamp: 2024-05-02-11-51-44
---

Cette rubrique explique comment utiliser par programmation un filigrane à l'aide de Aspose.Words. Un filigrane est une image d'arrière-plan qui s'affiche derrière le texte d'un document. Un filigrane peut contenir un texte ou une image représentée par la classe [Watermark](https://reference.aspose.com/words/fr/net/aspose.words/watermark/).

{{% alert color="primary" %}}

**Essayez en ligne**

Vous pouvez essayer cette fonctionnalité avec notre [Filigrane de document en ligne gratuit](https://products.aspose.app/words/watermark).

{{% /alert %}}

## Ajouter un filigrane à un document

Dans Microsoft Word, un filigrane peut facilement être inséré dans un document à l'aide de la commande Insérer un filigrane. Aspose.Words fournit la classe [watermark](https://reference.aspose.com/words/fr/net/aspose.words/watermark/) pour ajouter ou supprimer un filigrane dans les documents. Aspose.Words fournit la liste [Type de filigrane](https://reference.aspose.com/words/fr/net/aspose.words/watermark/type/) définissant trois types possibles de filigranes (Texte, Image et Aucun) avec lesquels travailler

### Ajouter un filigrane de texte

L'exemple de code suivant montre comment insérer un filigrane de texte dans un document en définissant [TextWatermarkOptions](https://reference.aspose.com/words/fr/net/aspose.words/textwatermarkoptions/) à l'aide de la méthode [SetText](https://reference.aspose.com/words/fr/net/aspose.words/watermark/settext/#settext):

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cs" >}}

### Ajouter un filigrane d'image

L'exemple de code suivant montre comment insérer un filigrane d'image dans un document en définissant [ImageWatermarkOptions](https://reference.aspose.com/words/fr/net/aspose.words/imagewatermarkoptions/) à l'aide de la méthode [SetImage](https://reference.aspose.com/words/fr/net/aspose.words/watermark/setimage/#setimage):

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cs" >}}

Le filigrane peut également être inséré à l’aide de la classe de forme. Il est très simple d'insérer n'importe quelle forme ou image dans un en-tête ou un pied de page et ainsi de créer un filigrane de tout type imaginable.

L'exemple de code suivant insère un filigrane dans un document Word:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Images-AddWatermark-AddWatermark.cs" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}


## Supprimer le filigrane d'un document

La classe [Watermark](https://reference.aspose.com/words/fr/net/aspose.words/watermark/) fournit la méthode Remove pour supprimer le filigrane d'un document.

L'exemple de code suivant montre comment supprimer un filigrane des documents:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cs" >}}

Si les filigranes sont ajoutés à l'aide de l'objet de classe [Shape](https://reference.aspose.com/words/fr/net/aspose.words.drawing/shape/), pour supprimer le filigrane d'un document, vous devez définir uniquement le nom de la forme du filigrane lors de l'insertion, puis supprimer la forme du filigrane en lui attribuant un nom.

L'exemple de code suivant vous montre comment définir le nom de la forme du filigrane et la supprimer du document:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cs" >}}

## Ajouter un filigrane dans une cellule de tableau

Parfois, vous devez insérer un filigrane/une image dans la cellule d'un tableau et l'afficher en dehors du tableau, vous pouvez utiliser la propriété [IsLayoutInCell](https://reference.aspose.com/words/fr/net/aspose.words.drawing/shapebase/islayoutincell/). Cette propriété obtient ou définit un indicateur indiquant si la forme est affichée à l'intérieur ou à l'extérieur d'un tableau. Notez que cette propriété ne fonctionne que lorsque vous optimisez le document pour Microsoft Word 2010 à l'aide de la méthode [OptimizeFor](https://reference.aspose.com/words/fr/net/aspose.words.settings/compatibilityoptions/optimizefor/).

L'exemple de code suivant montre comment utiliser cette propriété:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}
