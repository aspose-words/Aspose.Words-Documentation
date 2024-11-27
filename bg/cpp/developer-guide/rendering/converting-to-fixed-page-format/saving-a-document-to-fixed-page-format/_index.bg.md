---
title: Запазване във формат на фиксирана страница в C++
second_title: Aspose.Words за C++
articleTitle: Записване на документ във формат на фиксирана страница
linktitle: Записване на документ във формат на фиксирана страница
description: "Как да запишете документ във формат с фиксирана страница – PDF, XPS, HTML, XAML, PostScript и PCL? Вижте инструкциите."
type: docs
weight: 15
url: /bg/cpp/saving-a-document-to-fixed-page-format/
timestamp: 2024-09-24-14-35-44
---

След като оформлението на страницата е изградено и геометрията на обектите и тяхната позиция на страницата са изчислени, документът може да бъде записан във формат на фиксирана страница, поддържан от Aspose.Words.

Когато записвате документи във формати на фиксирани страници, могат да се използват опциите за рендиране, общи за всички тези формати. Позволяват да се контролира:

- Броят и обхватът на страниците, съдържащи се в изходния документ ([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/), [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/)).
- Прогрес на записването на документи страница по страница ([PageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pagesavingcallback/)).
- Набор от знаци, които се използват за изобразяване на числа ([NumeralFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_numeralformat/)).
- Метаили плейър ([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_metafilerenderingoptions/)). За повече подробности вижте [Работа С Windows Метафили](/words/cpp/handling-windows-metafiles/) статия.
- Коефициент на качество за прекомпилиране JPEG изображения, чиято стойност може леко да се различава в зависимост от избрания формат за запис ([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_jpegquality/)).
- Оптимизация на векторните графики в Aspose.Words изход ([OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/)).
- Графични опции при запис на тиф, ПНГ, БМП, Джпег, ЕМП формати ([UseAntiAliasing](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_useantialiasing/), [UseHighQualityRendering](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_usehighqualityrendering/)).
- Запис на документа в нива на сивото ([ColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_colormode/)).
- Превключване между рендирането на DrawingML фигури и резервни фигури ([DmlRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmlrenderingmode/)).
- Превключване между режими на рендиране DML ефекти ([DmlEffectsRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmleffectsrenderingmode/)).

Примерът по-долу показва как да запишете документ във формат JPEG, като използвате метода `Save` и опциите за рендиране:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveDocumentToJPEG-SaveDocumentToJPEG.cpp" >}}
