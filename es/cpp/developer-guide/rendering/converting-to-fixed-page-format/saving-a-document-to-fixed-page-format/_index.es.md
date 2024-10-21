---
title: Guardar en Formato de página fija en C++
second_title: Aspose.Words para C++
articleTitle: Guardar un documento en Formato de página fija
linktitle: Guardar un documento en Formato de página fija
description: "¿Cómo guardar un documento en un formato de página fija-PDF, XPS, HTML, XAML, PostScript y PCL? Vea las instrucciones."
type: docs
weight: 15
url: /es/cpp/saving-a-document-to-fixed-page-format/
---

Una vez creado el diseño de la página y calculada la geometría de los objetos y su posición en la página, el documento se puede guardar en un formato de página fija compatible con Aspose.Words.

Al guardar documentos en formatos de página fija, se pueden utilizar las opciones de representación comunes a todos estos formatos. Permiten controlar:

- El número y el rango de páginas contenidas en el documento de salida([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/), [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/)).
- Progreso del guardado de documentos página por página ([PageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pagesavingcallback/)).
- Un conjunto de caracteres que se utilizan para representar números ([NumeralFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_numeralformat/)).
- Un reproductor de metarchivos ([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_metafilerenderingoptions/)). Para obtener más detalles, consulte el [Manejo de Metarchivos Windows ](/words/cpp/handling-windows-metafiles/) artículo.
- Una tasa de calidad para recomprimir imágenes JPEG, cuyo valor puede diferir ligeramente, según el formato de guardado seleccionado ([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_jpegquality/)).
- Optimización de gráficos vectoriales en la salida Aspose.Words ([OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/)).
- Opciones de gráficos al guardar en formatos Tiff, Png, Bmp, Jpeg, Emf([UseAntiAliasing](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_useantialiasing/), [UseHighQualityRendering](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_usehighqualityrendering/)).
- Guardar el documento en escala de grises ([ColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_colormode/)).
- Alternar entre la representación de formas DrawingML y formas alternativas ([DmlRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmlrenderingmode/)).
- Cambio entre los modos de renderizado de efectos DML ([DmlEffectsRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmleffectsrenderingmode/)).

El siguiente ejemplo muestra cómo guardar un documento en formato JPEG utilizando el método `Save` y las opciones de representación:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveDocumentToJPEG-SaveDocumentToJPEG.cpp" >}}
