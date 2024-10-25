---
title: Salvando no formato de página fixa em C++
second_title: Aspose.Words para C++
articleTitle: Salvar um documento no formato de página Fixa
linktitle: Salvar um documento no formato de página Fixa
description: "Como salvar um documento em um formato de página fixa– PDF, XPS, HTML, XAML, PostScript, e PCL? Veja as instruções."
type: docs
weight: 15
url: /pt/cpp/saving-a-document-to-fixed-page-format/
---

Depois que o layout da página é construído e a geometria dos objetos e sua posição na página são calculados, o documento pode ser salvo em um formato de página fixa suportado por Aspose.Words.

Ao salvar documentos em formatos de página fixa, as opções de renderização comuns a todos esses formatos podem ser usadas. Permitem controlar:

- O número e o intervalo de páginas contidos no documento de saída([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/), [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/)).
- Progresso da gravação de documentos página a página ([PageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pagesavingcallback/)).
- Um conjunto de caracteres que são utilizados para a renderização de números ([NumeralFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_numeralformat/)).
- Um reprodutor de metarquivo ([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_metafilerenderingoptions/)). Para mais detalhes, ver o [Manipulação De Windows Metarquivos](/words/cpp/handling-windows-metafiles/) artigo.
- Uma taxa de qualidade para recomprimir JPEG imagens, cujo valor pode diferir ligeiramente, dependendo do formato de gravação seleccionado ([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_jpegquality/)).
- Otimização de gráficos vetoriais em Aspose.Words saída ([OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/)).
- Opções gráficas ao salvar nos formatos Tiff, Png, Bmp, Jpeg, Emf ([UseAntiAliasing](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_useantialiasing/), [UseHighQualityRendering](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_usehighqualityrendering/)).
- Guardar o documento em escala de cinzentos ([ColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_colormode/)).
- Alternar entre a renderização de formas DrawingML e formas de fallback ([DmlRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmlrenderingmode/)).
- Alternar entre DML modos de renderização de efeitos ([DmlEffectsRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmleffectsrenderingmode/)).

O exemplo abaixo demonstra como salvar um documento no formato JPEG usando o método `Save` e as opções de renderização:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveDocumentToJPEG-SaveDocumentToJPEG.cpp" >}}
