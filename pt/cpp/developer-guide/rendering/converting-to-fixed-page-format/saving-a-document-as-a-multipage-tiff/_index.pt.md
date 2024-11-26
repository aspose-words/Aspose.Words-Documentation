---
title: Salvando um documento como uma página múltipla TIFF Em C++
second_title: Aspose.Words para C++
articleTitle: Guardar um documento com várias páginas TIFF
linktitle: Guardar um documento com várias páginas TIFF
description: "Converta um documento em um TIFF de várias páginas usando C++. Para determinar como o documento é exibido na imagem, é necessário especificar opções adicionais: Resolução, número de páginas, binarização da imagem, etc."
type: docs
weight: 40
url: /pt/cpp/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

Ao trabalhar com documentos, muitas vezes você precisa converter seu documento em um(S) arquivo (s) de Imagem raster. Isto é especialmente relevante se tiver de apresentar o seu documento num formato legível e imprimível, mas não editável. Por exemplo, pode utilizar uma imagem rasterizada da primeira página do documento como pré-visualização. Este artigo descreve como converter um documento em uma imagem raster usando o exemplo do formato TIFF – um dos formatos de imagem mais populares.

## Convertendo DOC em várias páginas TIFF

Em Aspose.Words, a conversão de DOC para TIFF pode ser realizada com uma linha de código, simplesmente passando o caminho "salvar em" e a extensão de arquivo relevante para o método [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). O método **Save** deriva automaticamente o `SaveFormat` da extensão de nome de ficheiro especificada no caminho. O exemplo a seguir demonstra como converter um documento para o formato TIFF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Save Options-Working with ImageSaveOptions-SaveAsTIFF.h" >}}

## Especificando Opções Adicionais Ao Renderizar TIFF

Muitas vezes, você precisa especificar opções adicionais, que afetam o resultado da renderização. Para esse fim, use a classe [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/), que contém propriedades que determinam como o documento é exibido na imagem. Você pode especificar o seguinte:

- Salvar formato para determinar a lista de opções disponíveis ([SaveFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_saveformat/))
- Resolução ([HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/))
- Número de páginas ([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/), [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/))
- Configurações de cor e iluminação([PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_papercolor/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagebrightness/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagecontrast/))
- Qualidade da imagem([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_jpegquality/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_scale/), [TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/), GraphicsQualityOptions)
- Método utilizado para binarizar a imagem ([TiffBinarizationMethod](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffbinarizationmethod/), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/))
- Formato de Pixel para imagens geradas ([PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/))
- Windows Tratamento de metarquivos por Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_metafilerenderingoptions/), [UseGdiEmfRenderer](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_usegdiemfrenderer/))
- Opções adicionais que você pode ver na classe **ImageSaveOptions**

O exemplo a seguir mostra como converter DOC para TIFF com opções configuradas:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cpp" >}}

## Limiar para TIFF binarização

Uma imagem TIFF pode ser guardada no formato 1 bpp b / w definindo a propriedade [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/) para formatar o tipo de formato de pixel1bppIndexed e a propriedade `TiffCompression` para Ccitt3 ou Ccitt4.

Para a segmentação de imagens, Aspose.Words utiliza o método mais simples - limiar. Este método converte uma imagem em escala de cinza TIFF em uma imagem binária, usando um valor limite. Portanto, quando um documento precisa ser convertido para o formato de arquivo TIFF, é possível obter ou definir o limite para a binarização TIFF através da propriedade [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/). O valor padrão para essa propriedade é definido como 128 e, quanto maior esse valor, mais escura é a imagem.

O exemplo a seguir mostra como executar a binarização TIFF com um limite especificado:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cpp" >}}

Abaixo, você pode comparar imagens nas quais TIFF a binarização foi realizada em vários valores-limite:

![save-a-document-as-a-multipage-tiff-aspose-words-cpp](saving-a-document-as-a-multipage-tiff-1.jpg)
