---
title: Сохранение в формате фиксированной страницы на C++
second_title: Aspose.Words для C++
articleTitle: Сохранение документа в формате фиксированной страницы
linktitle: Сохранение документа в формате фиксированной страницы
description: "Как сохранить документ в формате с фиксированной страницей - PDF, XPS, HTML, XAML, PostScript и PCL? Смотрите инструкции."
type: docs
weight: 15
url: /ru/cpp/saving-a-document-to-fixed-page-format/
timestamp: 2024-09-24-14-35-44
---

После построения макета страницы и расчета геометрии объектов и их положения на странице документ можно сохранить в формате фиксированной страницы, поддерживаемом Aspose.Words.

При сохранении документов в форматах с фиксированными страницами можно использовать параметры отображения, общие для всех этих форматов. Они позволяют управлять:

- Количество и диапазон страниц, содержащихся в выходном документе ([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/), [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/)).
- Выполнение постраничного сохранения документа ([PageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pagesavingcallback/)).
- Набор символов, которые используются для отображения чисел ([NumeralFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_numeralformat/)).
- Проигрыватель метафайлов ([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_metafilerenderingoptions/)). Более подробную информацию смотрите в разделе [Обработка метафайлов Windows](/words/cpp/handling-windows-metafiles/) статья.
- Коэффициент качества при повторном сжатии изображений в формате JPEG, значение которого может незначительно отличаться в зависимости от выбранного формата сохранения ([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_jpegquality/)).
- Оптимизация векторной графики в выходных данных Aspose.Words ([OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/)).
- Параметры графики при сохранении в форматах Tiff, Png, Bmp, Jpeg, Emf ([UseAntiAliasing](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_useantialiasing/), [UseHighQualityRendering](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_usehighqualityrendering/)).
- Сохранение документа в оттенках серого ([ColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_colormode/)).
- Переключение между отображением фигур DrawingML и резервными фигурами ([DmlRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmlrenderingmode/)).
- Переключение между режимами рендеринга эффектов DML ([DmlEffectsRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmleffectsrenderingmode/)).

В приведенном ниже примере показано, как сохранить документ в формате JPEG, используя метод `Save` и параметры рендеринга:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveDocumentToJPEG-SaveDocumentToJPEG.cpp" >}}
