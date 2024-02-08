---
title: Travailler avec un filigrane dans Python
second_title: Aspose.Words pour Python via .NET
articleTitle: Travailler avec un filigrane
linktitle: Travailler avec un filigrane
description: "Créez et gérez des filigranes dans un document à l'aide de Python."
type: docs
weight: 340
url: /fr/python-net/working-with-watermark/
---

Cette rubrique explique comment utiliser par programmation un filigrane à l'aide de Aspose.Words. Un filigrane est une image d'arrière-plan qui s'affiche derrière le texte d'un document. Un filigrane peut contenir un texte ou une image représentée par la classe [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/).

{{% alert color="primary" %}}

**Essayez en ligne**

Vous pouvez essayer cette fonctionnalité avec notre [Filigrane de document en ligne gratuit](https://products.aspose.app/words/watermark).

{{% /alert %}}

## Comment ajouter un filigrane à un document

Dans Microsoft Word, un filigrane peut facilement être inséré dans un document à l'aide de la commande Insérer un filigrane. Aspose.Words fournit la classe [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) pour ajouter ou supprimer un filigrane dans les documents. Aspose.Words fournit l'énumération [WatermarkType](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/) définissant trois types possibles de filigranes ([TEXT](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#text), [IMAGE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#image) et [NONE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#none)) avec lesquels travailler

### Ajouter un filigrane de texte

L'exemple de code suivant montre comment insérer un filigrane de texte dans un document en définissant [TextWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/textwatermarkoptions/) à l'aide de la méthode [set_text](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_text/).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddTextWatermarkWithSpecificOptions.py" >}}

### Ajouter un filigrane d'image

L'exemple de code suivant montre comment insérer un filigrane d'image dans un document en définissant [ImageWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/imagewatermarkoptions/) à l'aide de la méthode [set_image](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_image/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddImageWatermarkWithSpecificOptions.py" >}}

Le filigrane peut également être inséré à l’aide de la classe de forme. Il est très simple d'insérer n'importe quelle forme ou image dans un en-tête ou un pied de page et ainsi de créer un filigrane de tout type imaginable.

L'exemple de code suivant insère un filigrane dans un document Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddWatermark.py" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple depuis [ici](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)

{{% /alert %}}


## Supprimer le filigrane d'un document

La classe [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) fournit la méthode Remove pour supprimer le filigrane d'un document.

L'exemple de code suivant montre comment supprimer un filigrane des documents:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermarkFromDocument.py" >}}

Si les filigranes sont ajoutés à l'aide de l'objet de classe [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), pour supprimer le filigrane d'un document, vous devez définir uniquement le nom de la forme du filigrane lors de l'insertion, puis supprimer la forme du filigrane en lui attribuant un nom.

L'exemple de code suivant vous montre comment définir le nom de la forme du filigrane et la supprimer du document:

{{< highlight python >}}
# Set name to be able to remove it afterwards
watermark.name = "WaterMark"
{{< /highlight >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermark.py" >}}

## Ajouter un filigrane dans une cellule de tableau

Parfois, vous devez insérer un filigrane/une image dans la cellule d'un tableau et l'afficher en dehors du tableau, vous pouvez utiliser la propriété [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/). Cette propriété obtient ou définit un indicateur indiquant si la forme est affichée à l'intérieur ou à l'extérieur d'un tableau. Notez que cette propriété ne fonctionne que lorsque vous optimisez le document pour Microsoft Word 2010 à l'aide de la méthode [optimize_for](https://reference.aspose.com/words/python-net/aspose.words.settings/compatibilityoptions/optimize_for/).

L'exemple de code suivant montre comment utiliser cette propriété:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}
