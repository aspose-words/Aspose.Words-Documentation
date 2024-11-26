---
title: Travailler avec un filigrane en C++
second_title: Aspose.Words pour C++
articleTitle: Travailler avec un filigrane
linktitle: Travailler avec un filigrane
type: docs
description: "Manipulation de filigrane de document à l'aide de C++."
weight: 340
url: /fr/cpp/working-with-watermark/
timestamp: 2024-01-30-16-22-34
---

Cette rubrique explique comment travailler par programmation avec un filigrane à l'aide de Aspose.Words. Un filigrane est une image d'arrière-plan qui s'affiche derrière le texte d'un document. Un filigrane peut contenir un texte ou une image représentée par la classe [Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/).

## Ajouter un filigrane à un document

Dans Microsoft Word, un filigrane peut facilement être inséré dans un document à l'aide de la commande Insérer un filigrane. Aspose.Words fournit la classe [watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/) pour ajouter ou supprimer un filigrane dans les documents. Aspose.Words fournit l'énumération [WatermarkType ](https://reference.aspose.com/words/cpp/aspose.words/)définissant trois types possibles de filigranes (Texte, Image et Aucun) avec lesquels travailler.

### Ajouter Un Filigrane De Texte

L'exemple de code suivant montre comment insérer un filigrane de texte dans un document en définissant [TextWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/textwatermarkoptions/) à l'aide de la méthode [SetText](https://reference.aspose.com/words/cpp/aspose.words/watermark/settext/).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cpp" >}}

### Ajouter Un Filigrane D'Image

L'exemple de code suivant montre comment insérer un filigrane d'image dans un document en définissant [ImageWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/imagewatermarkoptions/) à l'aide de la méthode [SetImage](https://reference.aspose.com/words/cpp/aspose.words/watermark/setimage/).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cpp" >}}

Le filigrane peut également être inséré à l'aide de la classe de forme. Il est très facile d'insérer n'importe quelle forme ou image dans un en-tête ou un pied de page et ainsi créer un filigrane de n'importe quel type imaginable. L'exemple de code suivant insère un filigrane dans un document Word.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-AddWatermark-AddWatermark.cpp" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}


## Supprimer le filigrane d'un document

La classe [Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/) fournit la méthode remove pour supprimer le filigrane d'un document.

L'exemple de code suivant montre comment supprimer un filigrane des documents:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cpp" >}}

Si les filigranes sont ajoutés à l'aide de l'objet de classe [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/), pour supprimer le filigrane d'un document, vous devez définir uniquement le nom de la forme de filigrane lors de l'insertion, puis supprimer la forme de filigrane par un nom attribué.

L'exemple de code suivant vous montre comment définir le nom de la forme de filigrane et la supprimer du document:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark->set_Name(u"WaterMark");
{{< /highlight >}}


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cpp" >}}

## Ajouter un filigrane dans la cellule du tableau

Parfois, vous devez insérer un filigrane/une image dans la cellule d'un tableau et l'afficher en dehors du tableau, vous pouvez utiliser la propriété [IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/). Cette propriété obtient ou définit un indicateur indiquant si la forme est affichée à l'intérieur ou à l'extérieur d'un tableau. Notez que cette propriété ne fonctionne que lorsque vous optimisez le document pour Microsoft Word 2010 à l'aide de la méthode [OptimizeFor](https://reference.aspose.com/words/cpp/aspose.words.settings/compatibilityoptions/optimizefor/).

L'exemple de code suivant montre comment utiliser cette propriété:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}
