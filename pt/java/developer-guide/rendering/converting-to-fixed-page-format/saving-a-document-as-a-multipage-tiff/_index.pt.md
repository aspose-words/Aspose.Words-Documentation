---
title: Salvar um documento como um TIFF Multipage em Java
second_title: Aspose.Words para Java
articleTitle: Salvar um documento como um TIFF Multipage
linktitle: Salvar um documento como um TIFF Multipage
description: "Converta um documento para uma imagem raster, que é discutido no exemplo do formato TIFF. Para determinar como o TIFF é exibido, você precisa especificar opções adicionais: resolução, número de páginas, binarização de imagem, etc usando Java."
type: docs
weight: 30
url: /pt/java/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

Ao trabalhar com documentos, você muitas vezes precisa converter seu documento para um arquivo de imagem raster(s). Isso é especialmente relevante se você tiver que apresentar seu documento em um formato legível e imprimível, mas não editável. Por exemplo, você pode usar uma imagem raster da primeira página do seu documento como uma prévia. Este artigo descreve como converter um documento para uma imagem raster usando o exemplo do formato TIFF – um dos formatos de imagem mais populares.

## Convertendo DOC para TIFF de várias páginas

Em Aspose.Words, conversão de DOC para TIFF pode ser realizada com uma linha de código, simplesmente passando o caminho "salvar para" e a extensão de arquivo relevante para o [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) método. O **Save** método deriva automaticamente o `SaveFormat` da extensão de nome de arquivo especificada no caminho. O exemplo a seguir demonstra como converter um documento para o formato TIFF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFF.java" >}}

## Especificando opções adicionais ao renderizar TIFF

Muitas vezes você precisa especificar opções adicionais, que afetam o resultado de renderização. Com esta finalidade, use o [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) classe, que contém propriedades que determinam como o documento é exibido na imagem. Você pode especificar o seguinte:

- Salvar formato para determinar a lista de opções disponíveis ([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/saveformat/))
- Resolução ([HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#Resolution))
- Número de páginas ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PageCount))
- Configurações de cor e iluminação ([PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ImageContrast))
- Qualidade da imagem ([JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression), [GraphicsQualityOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#GraphicsQualityOptions))
- O método usado para binarizar a imagem ([TiffBinarizationMethod](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffBinarizationMethod), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ThresholdForFloydSteinbergDithering))
- Formato Pixel para imagens geradas ([PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PixelFormat))
- Não. Windows tratamento de metafiles por Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions), [UseGdiEmfRenderer](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#UseGdiEmfRenderer))
- Opções adicionais que você pode ver no **ImageSaveOptions** classe

O exemplo a seguir mostra como converter DOC para TIFF com opções configuradas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.java" >}}

## Suporte para TIFF Binarization

Uma imagem TIFF pode ser salva no formato 1bpp b/w, definindo o [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) propriedade para Format1bppIndexed tipo de formato de pixel, e o [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression) propriedade para Ccitt3 ou Ccitt4.

Para segmentação de imagem, Aspose.Words usa o método mais simples - limiar. Este método converte uma imagem TIFF em escala de cinza em uma imagem binária, usando um valor de limiar. Portanto, quando um documento precisa ser convertido para o formato de arquivo TIFF, é possível obter ou definir o limiar para a binarização TIFF através do [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getThresholdForFloydSteinbergDithering) propriedade. O valor padrão desta propriedade é definido para 128, e quanto maior este valor, mais escuro a imagem.

O exemplo a seguir mostra como executar a binarização TIFF com um limite especificado:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.java" >}}

Abaixo você pode comparar imagens em que a binarização TIFF foi realizada em vários valores de limiar:

<img src="/words/java/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-java" style="width:800px"/>
