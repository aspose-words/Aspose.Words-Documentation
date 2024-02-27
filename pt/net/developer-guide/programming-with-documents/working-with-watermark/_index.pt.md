---
title: Trabalhando com marca d'água em C#
second_title: Aspose.Words para .NET
articleTitle: Trabalhando com marca d'água
linktitle: Trabalhando com marca d'água
description: "Manipulação de marca d'água de documentos usando C#."
type: docs
weight: 340
url: /pt/net/working-with-watermark/
---

Este tópico discute como trabalhar programaticamente com marca d'água usando Aspose.Words. Uma marca d'água é uma imagem de fundo exibida atrás do texto em um documento. Uma marca d'água pode conter um texto ou uma imagem representada pela classe [Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/).

{{% alert color="primary" %}}

**Experimente on-line**

Você pode experimentar esta funcionalidade com nosso [Marca d'água de documento online gratuita](https://products.aspose.app/words/watermark).

{{% /alert %}}

## Adicionar uma marca d'água a um documento

No Microsoft Word, uma marca d'água pode ser facilmente inserida em um documento usando o comando Inserir marca d'água. Aspose.Words fornece a classe [watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) para adicionar ou remover marcas d'água em documentos. Aspose.Words fornece a [Tipo de marca d'água](https://reference.aspose.com/words/net/aspose.words/watermark/type/)enumeração que define três tipos possíveis de marcas d'água (Texto, Imagem e Nenhuma) para trabalhar

### Adicionar marca d'água de texto

O exemplo de código a seguir demonstra como inserir uma marca d'água de texto em um documento definindo [TextWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/textwatermarkoptions/) usando o método [SetText](https://reference.aspose.com/words/net/aspose.words/watermark/settext/#settext):

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cs" >}}

### Adicionar marca d'água de imagem

O exemplo de código a seguir demonstra como inserir uma marca d’água de imagem em um documento definindo [ImageWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/imagewatermarkoptions/) usando o método [SetImage](https://reference.aspose.com/words/net/aspose.words/watermark/setimage/#setimage):

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cs" >}}

A marca d'água também pode ser inserida usando a classe de forma. É muito fácil inserir qualquer forma ou imagem em um cabeçalho ou rodapé e assim criar uma marca d'água de qualquer tipo imaginável.

O exemplo de código a seguir insere uma marca d'água em um documento do Word:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Images-AddWatermark-AddWatermark.cs" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}


## Remover marca d'água de um documento

A classe [Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) fornece o método remove para remover a marca d’água de um documento.

O exemplo de código a seguir mostra como remover uma marca d'água de documentos:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cs" >}}

Se as marcas d'água forem adicionadas usando o objeto de classe [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/), para remover a marca d'água de um documento, você deverá definir apenas o nome do formato da marca d'água durante a inserção e, em seguida, remover o formato da marca d'água por um nome atribuído.

O exemplo de código a seguir mostra como definir o nome da forma da marca d'água e removê-la do documento:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cs" >}}

## Adicionar uma marca d’água em uma célula de tabela

Às vezes você precisa inserir uma marca d’água/imagem na célula de uma tabela e exibi-la fora da tabela, você pode usar a propriedade [IsLayoutInCell](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/islayoutincell/). Esta propriedade obtém ou define um sinalizador que indica se a forma é exibida dentro ou fora de uma tabela. Observe que esta propriedade funciona somente quando você otimiza o documento para Microsoft Word 2010 usando o método [OptimizeFor](https://reference.aspose.com/words/net/aspose.words.settings/compatibilityoptions/optimizefor/).

O exemplo de código a seguir mostra como usar essa propriedade:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}
