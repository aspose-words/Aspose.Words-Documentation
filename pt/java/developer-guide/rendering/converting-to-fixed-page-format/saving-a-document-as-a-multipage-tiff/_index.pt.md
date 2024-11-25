---
title: Guardar um documento com várias páginas TIFF em Java
second_title: Aspose.Words para Java
articleTitle: Guardar um documento com várias páginas TIFF
linktitle: Guardar um documento com várias páginas TIFF
description: "Converta um documento em uma imagem raster, que é discutida no exemplo do formato TIFF. Para determinar como TIFF é exibido, você precisa especificar opções adicionais: Resolução, número de páginas, binarização de imagens, etc.usando Java."
type: docs
weight: 30
url: /pt/java/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

Ao trabalhar com documentos, muitas vezes você precisa converter seu documento em um(S) arquivo (s) de Imagem raster. Isto é especialmente relevante se tiver de apresentar o seu documento num formato legível e imprimível, mas não editável. Por exemplo, pode utilizar uma imagem rasterizada da primeira página do documento como pré-visualização. Este artigo descreve como converter um documento em uma imagem raster usando o exemplo do formato TIFF – um dos formatos de imagem mais populares.

## Convertendo DOC em várias páginas TIFF

Em Aspose.Words, a conversão de DOC para TIFF pode ser realizada com uma linha de código, simplesmente passando o caminho "salvar em" e a extensão de arquivo relevante para o método [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions). O método **Save** deriva automaticamente o `SaveFormat` da extensão de nome de ficheiro especificada no caminho. O exemplo a seguir demonstra como converter um documento para o formato TIFF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFF.java" >}}

## Especificando Opções Adicionais Ao Renderizar TIFF

Muitas vezes, você precisa especificar opções adicionais, que afetam o resultado da renderização. Para esse fim, use a classe [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), que contém propriedades que determinam como o documento é exibido na imagem. Você pode especificar o seguinte:

- Salvar formato para determinar a lista de opções disponíveis ([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/saveformat/))
- Resolução ([HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#Resolution))
- Número de Páginas ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PageCount))
- Configurações de cor e iluminação([PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ImageContrast))
- Qualidade da imagem([JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression), [GraphicsQualityOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#GraphicsQualityOptions))
- O método utilizado para binarizar a imagem ([TiffBinarizationMethod](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffBinarizationMethod), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ThresholdForFloydSteinbergDithering))
- Formato de Pixel para imagens geradas ([PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PixelFormat))
- Windows Tratamento de metarquivos por Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions), [UseGdiEmfRenderer](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#UseGdiEmfRenderer))
- Opções adicionais que você pode ver na classe **ImageSaveOptions**

O exemplo a seguir mostra como converter DOC para TIFF com opções configuradas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.java" >}}

## Limiar para TIFF binarização

Uma imagem TIFF pode ser salva no formato 1bpp b / w definindo a propriedade [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) para o tipo de formato Format1bppIndexed pixel e a propriedade [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression) para Ccitt3 ou Ccitt4.

Para a segmentação de imagens, Aspose.Words utiliza o método mais simples - limiar. Este método converte uma imagem em escala de cinza TIFF em uma imagem binária, usando um valor limite. Portanto, quando um documento precisa ser convertido para o formato de arquivo TIFF, é possível obter ou definir o limite para a binarização TIFF através da propriedade [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getThresholdForFloydSteinbergDithering). O valor padrão para essa propriedade é definido como 128 e, quanto maior esse valor, mais escura é a imagem.

O exemplo a seguir mostra como executar a binarização TIFF com um limite especificado:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.java" >}}

Abaixo, você pode comparar imagens nas quais TIFF a binarização foi realizada em vários valores-limite:

<img src="/words/java/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-java" style="width:800px"/>
