---
title: Trabalhar com imagens em C++
second_title: Aspose.Words para C++
articleTitle: Trabalhar com imagens
linktitle: Trabalhar com imagens
type: docs
description: "Introdução ao recurso de imagem, como criar e manipular imagens usando C++."
weight: 300
url: /pt/cpp/working-with-images/
---

Aspose.Words permite aos utilizadores trabalhar com imagens de uma forma muito flexível. Neste artigo, você pode explorar apenas algumas das possibilidades de trabalhar com imagens.

## Como extrair imagens de um documento

Todas as imagens são armazenadas dentro de nós **Shape** em um [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). Para extrair todas as imagens ou imagens com um tipo específico do documento, siga estes passos:

- Use o método [GetChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchildnodes/) para selecionar todos os nós **Shape**.
- Iterar através de coleções de nós resultantes.
- Verifique a propriedade booleana [HasImage](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_hasimage/).
- Extraia dados de imagem usando a propriedade [ImageData](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_imagedata/).
- Salvar dados de imagem em um arquivo.

O exemplo de código a seguir mostra como extrair imagens de um documento e salvá-las como arquivos:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cpp" >}}

## Salvar imagens como WMF

Aspose.Words fornece funcionalidade para salvar todas as imagens disponíveis em um documento [WMF ](https://docs.fileformat.com/image/wmf/)formato durante a conversão de DOCX para RTF.

O exemplo de código a seguir mostra como salvar imagens como WMF com RTF opções de salvamento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cpp" >}}
