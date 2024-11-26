---
title: Trabalhar com imagens em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhar com imagens
linktitle: Trabalhar com imagens
type: docs
description: "Formas de imagem em detalhes e recursos avançados fornecidos por Aspose.Words para Java."
weight: 300
url: /pt/java/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words permite aos utilizadores trabalhar com imagens de uma forma muito flexível. Neste artigo, você pode explorar apenas algumas das possibilidades de trabalhar com imagens.

## Como extrair imagens de um documento {#how-to-extract-images-from-a-document}

Todas as imagens são armazenadas dentro de nós **Shape** em um documento. Para extrair todas as imagens ou imagens com um tipo específico do documento, siga estes passos:

- Use o método [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChildNodes) para selecionar todos os nós de forma.
- Iterar através de coleções de nós resultantes.
- Verifique a propriedade booleana [hasImage](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasImage).
- Extraia dados de imagem usando a propriedade [ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData).
- Salvar dados de imagem em um arquivo.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-ExtractImagesToFiles-ExtractImagesToFiles.java" >}}

## Como Inserir código de barras em cada página do documento {#how-to-insert-barcode-on-each-documen-page}

Este exemplo permite adicionar códigos de barras iguais ou diferentes em todas ou em páginas específicas de um documento do Word. Não existe uma maneira direta de adicionar códigos de barras em todas as páginas de um documento, mas você pode usar os métodos [moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int), [moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) e [insertImage](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertImage(byte[])) para mover para qualquer seção ou cabeçalhos/rodapés e inserir as imagens de código de barras como você pode ver no código a seguir.

O exemplo de código a seguir mostra como inserir uma imagem de código de barras em cada página de um documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeImage.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeIntoFooter.java" >}}

## Relação de aspecto de bloqueio da imagem {#lock-aspect-ratio-of-image}

A proporção de uma forma geométrica é a proporção de seus tamanhos em diferentes dimensões. Você pode bloquear a proporção de uma imagem usando [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAspectRatioLocked). O valor padrão da proporção da forma depende do [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/). É verdadeiro para `ShapeType.Image` e falso para outros tipos de forma.

O exemplo de código a seguir mostra como trabalhar com relação de aspecto:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetImageAspectRatioLocked-DocumentBuilderSetImageAspectRatioLocked.java" >}}

## Como obter limites reais de forma em pontos {#how-to-get-actual-bounds-of-shape-in-points}

Se pretender que a caixa delimitadora real da forma seja apresentada na página, pode fazê-lo utilizando a propriedade [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getBoundsInPoints).

O exemplo de código a seguir mostra como usar essa propriedade:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Cortar Imagens

O corte de uma imagem geralmente se refere à remoção das partes externas indesejadas de uma imagem para ajudar a melhorar o enquadramento. Também é usado para a remoção de algumas partes de uma imagem para aumentar o foco em uma área específica.

O exemplo de código a seguir mostra como fazer isso usando Aspose.Words API:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImageCall.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImage.java" >}}

## Salvar imagens como WMF

Aspose.Words fornece funcionalidade para salvar todas as imagens disponíveis em um documento [WMF](https://docs.fileformat.com/image/wmf/)formato durante a conversão de DOCX para RTF.

O exemplo de código a seguir mostra como salvar imagens como WMF com RTF opções de salvamento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.java" >}}
