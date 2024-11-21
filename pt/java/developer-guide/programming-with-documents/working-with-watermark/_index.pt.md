---
title: Trabalhando com Watermark em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhando com marca d'água
linktitle: Trabalhando com marca d'água
type: docs
description: "Manipulação da marca d'água do documento usando Java."
weight: 70
url: /pt/java/working-with-watermark/
timestamp: 2024-01-27-14-07-04
---

Este tópico discute como trabalhar programaticamente com uma marca d'água usando Aspose.Words. Uma marca d'água é uma imagem de fundo que exibe atrás do texto em um documento. Uma marca d'água pode conter um texto ou uma imagem representada pelo [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) classe.

{{% alert color="primary" %}}

**Experimente online**

Você pode tentar esta funcionalidade com a nossa [Marcação de água de documento online grátis](https://products.aspose.app/words/watermark).

{{% /alert %}}

## Adicionar uma marca d'água a um documento

Em Microsoft Word, uma marca d'água pode ser facilmente inserida em um documento usando o comando Insert Watermark. Aspose.Words fornece o [watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) classe para adicionar ou remover marca d'água em documentos. Aspose.Words fornece o [Marca da água Tipo](https://reference.aspose.com/words/java/com.aspose.words/watermarktype/)enumeração que define três tipos possíveis de marcas d'água (Texto, Imagem e Nenhum) para trabalhar com

### Adicionar marca de água de texto

O exemplo de código a seguir demonstra como inserir uma marca d'água de texto em um documento definindo [TextWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/textwatermarkoptions/) usando o [SetText](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setText-java.lang.String) método:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.java" >}}

### Adicionar marca de água da imagem

O exemplo de código a seguir demonstra como inserir uma marca d'água de imagem em um documento definindo [ImageWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/imagewatermarkoptions/) usando o [SetImage](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setImage-java.awt.image.BufferedImage) método:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.java" >}}

A marca d'água também pode ser inserida usando a classe de forma. É muito fácil inserir qualquer forma ou imagem em um cabeçalho ou rodapé e, portanto, criar uma marca d'água de qualquer tipo imaginável.

O exemplo de código a seguir insere uma marca d'água em um documento do Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-AddWatermarkToADocument-AddWatermarkToADocument.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo a partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}


## Remover marca d'água de um documento

O [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) classe fornece a `Remove` método para remover a marca d'água de um documento.

Os seguintes exemplos de código mostram como remover uma marca d'água de documentos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-RemoveWatermarkFromDocument.java" >}}

Para remover a marca d'água de um documento, você tem que definir apenas o nome da forma da marca d'água durante a inserção e, em seguida, remover a forma da marca d'água por um nome designado.

O exemplo de código a seguir mostra como definir o nome da marca d'água e removê-lo do documento:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-RemoveWatermark-RemoveWatermark.java" >}}

## Adicionar uma marca de água em uma célula de tabela

Às vezes você precisa inserir uma marca de água / imagem na célula de uma tabela e exibi-la fora da tabela, você pode usar [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell-boolean) propriedade. Esta propriedade recebe ou define uma bandeira indicando se a forma é exibida dentro de uma tabela ou fora dela. Note que esta propriedade funciona apenas quando você otimiza o documento para Microsoft Word 2010 usando o [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) método

O exemplo de código a seguir mostra como usar esta propriedade:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}
