---
title: Trabalhando com Imagens em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhando com imagens
linktitle: Trabalhando com imagens
type: docs
description: "Formas de imagem em detalhes e recursos avançados fornecidos por Aspose.Words para Java."
weight: 300
url: /pt/java/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words permite que os usuários trabalhem com imagens de forma muito flexível. Neste artigo, você pode explorar apenas algumas das possibilidades de trabalhar com imagens.

## Como Extrair Imagens de um Documento {#how-to-extract-images-from-a-document}

Todas as imagens são armazenadas no interior **Shape** nós em um documento. Para extrair todas as imagens ou imagens com um tipo específico do documento, siga estas etapas:

- Usa o [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChildNodes) método para selecionar todos os nós de forma.
- Itere através de coleções de nó resultantes.
- Verifica o [hasImage](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasImage) propriedade booleana.
- Extrair dados de imagem usando o [ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData) propriedade.
- Salvar dados de imagem em um arquivo.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-ExtractImagesToFiles-ExtractImagesToFiles.java" >}}

## Como inserir o código de barras em cada página do documento {#how-to-insert-barcode-on-each-documen-page}

Este exemplo permite adicionar os mesmos ou diferentes códigos de barras em todas ou páginas específicas de um documento do Word. Não há nenhuma maneira direta de adicionar códigos de barras em todas as páginas de um documento, mas você pode usar [moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int), [moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) e [insertImage](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertImage(byte[])) métodos para mover para qualquer seção ou cabeçalhos / rodapés e inserir as imagens de código de barras como você pode ver no seguinte código

O exemplo de código a seguir mostra como inserir uma imagem de código de barras em cada página de um documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeImage.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeIntoFooter.java" >}}

## Relação de Aspecto de Bloqueio da Imagem {#lock-aspect-ratio-of-image}

A proporção de aspecto de uma forma geométrica é a proporção de seus tamanhos em diferentes dimensões. Você pode bloquear a relação de aspecto de uma imagem usando [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAspectRatioLocked). O valor padrão da relação de aspecto da forma depende do [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/). É. true para `ShapeType.Image` e false para outros tipos de forma.

O exemplo de código a seguir mostra como trabalhar com relação de aspecto:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetImageAspectRatioLocked-DocumentBuilderSetImageAspectRatioLocked.java" >}}

## Como obter reais montes de forma em pontos {#how-to-get-actual-bounds-of-shape-in-points}

Se você quiser a caixa de ligação real da forma como renderizado na página, você pode conseguir isso usando o [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getBoundsInPoints) propriedade.

O exemplo de código a seguir mostra como usar esta propriedade:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Imagens de colheita

O recorte de uma imagem geralmente refere-se à remoção das partes externas indesejadas de uma imagem para ajudar a melhorar o enquadramento. Também é usado para a remoção de algumas das porções de uma imagem para aumentar o foco em uma área específica.

O seguinte exemplo de código mostra como conseguir isso usando Aspose.Words API:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImageCall.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImage.java" >}}

## Salvar imagens como WMF

Aspose.Words fornece funcionalidade para salvar todas as imagens disponíveis em um documento para [WMF](https://docs.fileformat.com/image/wmf/)converter DOCX para RTF.

O exemplo de código a seguir mostra como salvar imagens como WMF com opções de salvamento RTF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.java" >}}
