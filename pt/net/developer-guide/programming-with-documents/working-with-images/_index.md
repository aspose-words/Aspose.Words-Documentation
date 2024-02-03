---
title: Trabalhando com imagens em C#
second_title: Aspose.Words para .NET
articleTitle: Trabalhando com imagens
linktitle: Trabalhando com imagens
description: "Formas de imagem em detalhes e recursos avançados fornecidos pelo Aspose.Words para .NET."
type: docs
weight: 300
url: /pt/net/working-with-images/
---

Aspose.Words permite aos usuários trabalhar com imagens de uma forma muito flexível. Neste artigo você poderá explorar apenas algumas das possibilidades de trabalhar com imagens.

## Como inserir uma imagem {#insert-an-image}

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) fornece diversas sobrecargas do método [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/) que permitem inserir uma imagem embutida ou flutuante. Se a imagem for um metarquivo EMF ou WMF, ela será inserida no documento no formato metarquivo. Todas as outras imagens serão armazenadas no formato PNG. O método **InsertImage** pode usar imagens de diferentes fontes:

- A partir de um arquivo ou `URL` passando um parâmetro `String` [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/)
- De um stream passando um parâmetro `Stream` **InsertImage**
- A partir de um objeto Image passando um parâmetro Image **InsertImage**
- A partir de uma matriz de bytes, passando um parâmetro de matriz de bytes **InsertImage**

Para cada um dos métodos **InsertImage**, existem sobrecargas adicionais que permitem inserir uma imagem com as seguintes opções:
- Inline ou flutuante em uma posição específica, por exemplo, **InsertImage**
- Escala percentual ou tamanho personalizado, por exemplo, **InsertImage**; além disso, o método **InsertImage** retorna um objeto [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) que acabou de ser criado e inserido para que você possa modificar ainda mais as propriedades do Shape

### Como inserir uma imagem embutida {#insert-an-inline-image}

Passe uma única string representando um arquivo que contém a imagem para **InsertImage** para inserir a imagem no documento como um gráfico embutido

O exemplo de código a seguir mostra como inserir uma imagem embutida na posição do cursor em um documento:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cs" >}}

### Como inserir uma imagem flutuante {#insert-a-floating-image}

O exemplo de código a seguir mostra como inserir uma imagem flutuante de um arquivo ou `URL` em uma posição e tamanho especificados:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cs" >}}

## Como extrair imagens de um documento {#how-to-extract-images-from-a-document}

Todas as imagens são armazenadas dentro de nós **Shape** em um [Document](https://reference.aspose.com/words/net/aspose.words/document/). Para extrair todas as imagens ou imagens de tipo específico do documento, siga estas etapas:

- Use o método [GetChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/getchildnodes/) para selecionar todos os nós **Shape**.
- Iterar pelas coleções de nós resultantes.
- Verifique a propriedade booleana [HasImage](https://reference.aspose.com/words/net/aspose.words.drawing/shape/hasimage/).
- Extraia dados de imagem usando a propriedade [ImageData](https://reference.aspose.com/words/net/aspose.words.drawing/shape/imagedata/).
- Salve os dados da imagem em um arquivo.

O exemplo de código a seguir mostra como extrair imagens de um documento e salvá-las como arquivos:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cs" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Images.docx).

{{% /alert %}}

## Como inserir código de barras em cada página do documento {#how-to-insert-barcode-on-each-documen-page}

Este exemplo demonstra como adicionar códigos de barras iguais ou diferentes em todas ou páginas específicas de um documento do Word. Não existe uma maneira direta de adicionar códigos de barras em todas as páginas de um documento, mas você pode usar os métodos **MoveToSection**, **MoveToHeaderFooter** e **InsertImage** para mover para qualquer seção ou cabeçalhos/rodapés e inserir as imagens de código de barras como você pode ver no código a seguir.

O exemplo de código a seguir mostra como inserir uma imagem de código de barras em cada página de um documento:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeImage.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeIntoFooter.cs" >}}

## Bloquear proporção da imagem {#lock-aspect-ratio-of-image}

A proporção de uma forma geométrica é a proporção de seus tamanhos em diferentes dimensões. Você pode bloquear a proporção da imagem usando [AspectRatioLocked](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/aspectratiolocked/). O valor padrão da proporção da forma depende do [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/). É *true* para `ShapeType.Image` e *false* para outros tipos de formas.

O exemplo de código a seguir mostra como trabalhar com proporção:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## Como obter limites reais de forma em pontos {#how-to-get-actual-bounds-of-shape-in-points}

Se desejar que a caixa delimitadora real da forma seja renderizada na página, você pode fazer isso usando a propriedade [BoundsInPoints](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/boundsinpoints/).

O exemplo de código a seguir mostra como usar essa propriedade:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## Cortar imagens {#crop-images}

O corte de uma imagem geralmente se refere à remoção das partes externas indesejadas de uma imagem para ajudar a melhorar o enquadramento. Também é usado para remover algumas partes de uma imagem para aumentar o foco em uma área específica.

O exemplo de código a seguir mostra como fazer isso usando Aspose.Words API:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImageCall.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImage.cs" >}}

## Salvar imagens como WMF {#save-images-as-wmf}

Aspose.Words fornece funcionalidade para salvar todas as imagens disponíveis em um documento no formato [WMF](https://docs.fileformat.com/image/wmf/) enquanto converte DOCX em RTF.

O exemplo de código a seguir mostra como salvar imagens como WMF com opções de salvamento RTF:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cs" >}}
