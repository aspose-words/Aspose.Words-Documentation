---
title: Salvando um documento como TIFF de várias páginas em C#
second_title: Aspose.Words para .NET
articleTitle: Salvando um documento como TIFF de várias páginas
linktitle: Salvando um documento como TIFF de várias páginas
description: "Converta um documento em TIFF de várias páginas usando C#. Para determinar como o documento é exibido na imagem você precisa especificar opções adicionais: resolução, número de páginas, binarização da imagem, etc."
type: docs
weight: 30
url: /pt/net/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-07-10-14-38-57
---

Ao trabalhar com documentos, muitas vezes você precisa converter seu documento em arquivo(s) de imagem raster. Isto é especialmente relevante se você tiver que apresentar seu documento em um formato legível e imprimível, mas não editável. Por exemplo, você pode usar uma imagem raster da primeira página do documento como visualização. Este artigo descreve como converter um documento em uma imagem raster usando o exemplo do formato TIFF – um dos formatos de imagem mais populares.

## Convertendo DOC em TIFF de várias páginas

No Aspose.Words, a conversão de DOC para TIFF pode ser realizada com uma linha de código, simplesmente passando o caminho "salvar em" e a extensão de arquivo relevante para o método [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save). O método **Save** deriva automaticamente o `SaveFormat` da extensão de nome de arquivo especificada no caminho. O exemplo a seguir demonstra como converter um documento para o formato TIFF:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFF.cs" >}}

## Especificando opções adicionais ao renderizar TIFF

Muitas vezes você precisa especificar opções adicionais, que afetam o resultado da renderização. Para isso, utiliza-se a classe [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/), que contém propriedades que determinam como o documento é exibido na imagem. Você pode especificar o seguinte:

- Salvar formato para determinar a lista de opções disponíveis ([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/saveformat))
- Resolução ([HorizontalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/verticalresolution/), [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/resolution))
- Número de páginas ([PageIndex](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/))
- Configurações de cor e iluminação ([PaperColor](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/papercolor/), [ImageColorMode](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecolormode/), [ImageBrightness](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagebrightness/), [ImageContrast](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/imagecontrast))
- Qualidade de imagem ([JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/jpegquality/), [Scale](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/scale/), [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/), [GraphicsQualityOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/graphicsqualityoptions))
- Método utilizado para binarizar a imagem ([TiffBinarizationMethod](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffbinarizationmethod/), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/thresholdforfloydsteinbergdithering))
- Formato pixel para imagens geradas ([PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/pixelformat))
- Manipulação de metarquivos Windows por Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/metafilerenderingoptions/), [UseGdiEmfRenderer](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/usegdiemfrenderer))
- Opções adicionais que você pode ver na classe **ImageSaveOptions**

O exemplo a seguir mostra como converter DOC em TIFF com opções configuradas:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cs" >}}

## Limite para binarização TIFF

Uma imagem TIFF pode ser salva no formato 1bpp p/b definindo a propriedade [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/) como tipo de formato de pixel Format1bppIndexed e a propriedade [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/) como Ccitt3 ou Ccitt4.

Para segmentação de imagens, Aspose.Words usa o método mais simples – limiar. Este método converte uma imagem TIFF em escala de cinza em uma imagem binária, usando um valor limite. Portanto, quando um documento precisa ser convertido para o formato de arquivo TIFF, é possível obter ou definir o limite para binarização TIFF por meio da propriedade [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/thresholdforfloydsteinbergdithering/). O valor padrão desta propriedade é definido como 128 e quanto maior esse valor, mais escura será a imagem.

O exemplo a seguir mostra como executar a binarização TIFF com um limite especificado:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cs" >}}

Abaixo você pode comparar imagens nas quais a binarização TIFF foi realizada em vários valores limite:

<img src="/words/net/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="salvando um documento como um tiff de várias páginas-aspose-words-net" style="width:800px"/>
