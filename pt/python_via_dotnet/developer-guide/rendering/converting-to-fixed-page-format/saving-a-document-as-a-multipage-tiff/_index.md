---
title: Salvando um documento como TIFF de várias páginas
second_title: Aspose.Words para Python via .NET
articleTitle: Salvando um documento como TIFF de várias páginas
linktitle: Salvando um documento como TIFF de várias páginas
description: "Converta um documento em TIFF de várias páginas usando Python. Para determinar como o documento é exibido na imagem você precisa especificar opções adicionais: resolução, número de páginas, binarização da imagem, etc."
type: docs
weight: 30
url: /pt/python-net/saving-a-document-as-a-multipage-tiff/
---

Ao trabalhar com documentos, muitas vezes você precisa converter seu documento em arquivo(s) de imagem raster. Isto é especialmente relevante se você tiver que apresentar seu documento em um formato legível e imprimível, mas não editável. Por exemplo, você pode usar uma imagem raster da primeira página do documento como visualização. Este artigo descreve como converter um documento em uma imagem raster usando o exemplo do formato TIFF – um dos formatos de imagem mais populares.

## Convertendo DOC em TIFF de várias páginas

No Aspose.Words, a conversão de DOC para TIFF pode ser realizada com uma linha de código, simplesmente passando o caminho "salvar em" e a extensão de arquivo relevante para o método [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/). O método [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) deriva automaticamente o [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) da extensão de nome de arquivo especificada no caminho. O exemplo a seguir demonstra como converter um documento para o formato TIFF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-SaveAsTIFF.py" >}}

## Especificando opções adicionais ao renderizar TIFF

Muitas vezes você precisa especificar opções adicionais, que afetam o resultado da renderização. Para isso, utiliza-se a classe [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/), que contém propriedades que determinam como o documento é exibido na imagem. Você pode especificar o seguinte:

- Salvar formato para determinar a lista de opções disponíveis ([save_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/save_format/))
- Resolução ([horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/), [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/))
- Número de páginas ([page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/))
- Configurações de cor e iluminação ([paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/), [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/), [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/), [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/))
- Qualidade de imagem ([jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/), [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/), [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/))
- Método utilizado para binarizar a imagem ([tiff_binarization_method](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_binarization_method/), [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/))
- Formato pixel para imagens geradas ([pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/))
- Manipulação de metarquivos Windows por Aspose.Words ([metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/metafile_rendering_options/), [use_gdi_emf_renderer](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/use_gdi_emf_renderer/))
- Opções adicionais que você pode ver na classe [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/)

O exemplo a seguir mostra como converter DOC em TIFF com opções configuradas:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetTiffPageRange.py" >}}

## Limite para binarização TIFF

Uma imagem TIFF pode ser salva no formato 1bpp p/b configurando a propriedade [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) para o tipo de formato de pixel [FORMAT1BPP_INDEXED](https://reference.aspose.com/words/python-net/aspose.words.saving/imagepixelformat/#format1bpp_indexed) e a propriedade [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/) para [CCITT3](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt3) ou [CCITT4](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt4).

Para segmentação de imagens, Aspose.Words usa o método mais simples – limiar. Este método converte uma imagem TIFF em escala de cinza em uma imagem binária, usando um valor limite. Portanto, quando um documento precisa ser convertido para o formato de arquivo TIFF, é possível obter ou definir o limite para binarização TIFF por meio da propriedade [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/). O valor padrão desta propriedade é definido como 128 e quanto maior esse valor, mais escura será a imagem.

O exemplo a seguir mostra como executar a binarização TIFF com um limite especificado:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-ExposeThresholdControlForTiffBinarization.py" >}}

Abaixo você pode comparar imagens nas quais a binarização TIFF foi realizada em vários valores limite:

<img src="/words/python-net/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="salvando um documento como um tiff de várias páginas-aspose-words-net" style="width:800px"/>
