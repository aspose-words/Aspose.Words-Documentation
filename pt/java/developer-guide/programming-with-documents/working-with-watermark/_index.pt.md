---
title: Trabalhando com marca D'água em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhando com marca D'água
linktitle: Trabalhando com marca D'água
type: docs
description: "Manipulação da marca d'água do documento usando Java."
weight: 70
url: /pt/java/working-with-watermark/
timestamp: 2024-01-27-14-07-04
---

Este tópico discute como trabalhar programaticamente com uma marca d'água usando Aspose.Words. Uma marca d'água é uma imagem de fundo que é exibida atrás do texto em um documento. Uma marca d'água pode conter um texto ou uma imagem representada pela classe [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/).

{{% alert color="primary" %}}

**Experimente online**

Pode experimentar esta funcionalidade com o nosso [Marca d'supérflua de Documento on-line gratuito](https://products.aspose.app/words/watermark).

{{% /alert %}}

## Adicionar uma marca D'água a um documento

Em Microsoft Word, uma marca d'água pode ser facilmente inserida em um documento usando o comando Inserir marca d'água. Aspose.Words fornece a classe [watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) para adicionar ou remover marca d'água em documentos. Aspose.Words fornece a enumeração [WatermarkType](https://reference.aspose.com/words/java/com.aspose.words/watermarktype/)definindo três tipos possíveis de marcas d'água (texto, imagem e nenhum) para trabalhar.

### Adicionar Marca D'Água De Texto

O exemplo de código a seguir demonstra como inserir uma marca d'água de texto em um documento definindo [TextWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/textwatermarkoptions/) usando o método [SetText](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setText-java.lang.String):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.java" >}}

### Adicionar Marca D'Água De Imagem

O exemplo de código a seguir demonstra como inserir uma marca d'água de imagem em um documento definindo [ImageWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/imagewatermarkoptions/) usando o método [SetImage](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setImage-java.awt.image.BufferedImage):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.java" >}}

A marca d'água também pode ser inserida usando a classe shape. É muito fácil inserir qualquer forma ou imagem em um cabeçalho ou rodapé e, assim, criar uma marca d'água de qualquer tipo imaginável.

O exemplo de código a seguir insere uma marca d'água em um documento do Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-AddWatermarkToADocument-AddWatermarkToADocument.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de exemplo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}


## Remover marca D'água de um documento

A classe [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) fornece o método `Remove` Para remover a marca d'água de um documento.

Os exemplos de código a seguir mostram como remover uma marca d'água de documentos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-RemoveWatermarkFromDocument.java" >}}

Para remover a marca d'água de um documento, você deve definir apenas o nome da forma da marca d'água durante a inserção e, em seguida, remover a forma da marca d'água por um nome atribuído.

O exemplo de código a seguir mostra como definir o nome da forma da marca d'água e removê-la do documento:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-RemoveWatermark-RemoveWatermark.java" >}}

## Adicionar uma marca D'água a uma célula da tabela

Às vezes, você precisa inserir uma marca d'água/Imagem na célula de uma tabela e exibi-la fora da tabela, você pode usar a propriedade [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell-boolean). Esta propriedade obtém ou define um sinalizador indicando se a forma é exibida dentro ou fora de uma tabela. Observe que essa propriedade só funciona quando você otimiza o documento para Microsoft Word 2010 usando o método [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int).

O exemplo de código a seguir mostra como usar essa propriedade:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}
