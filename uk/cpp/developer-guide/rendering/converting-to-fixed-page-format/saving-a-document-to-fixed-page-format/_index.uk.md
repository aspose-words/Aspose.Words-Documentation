---
title: Збереження у форматі фіксованої сторінки в C++
second_title: Aspose.Words для C++
articleTitle: Збереження документа у форматі фіксованої сторінки
linktitle: Збереження документа у форматі фіксованої сторінки
description: "Як зберегти документ у форматі з фіксованою сторінкою– PDF, XPS, HTML, XAML, PostScript, і PCL? Дивіться інструкції."
type: docs
weight: 15
url: /uk/cpp/saving-a-document-to-fixed-page-format/
timestamp: 2024-09-24-14-35-44
---

Після побудови макета сторінки та обчислення геометрії об'єктів та їх положення на сторінці документ можна зберегти у форматі фіксованої сторінки, що підтримується Aspose.Words.

При збереженні документів у форматах з фіксованою сторінкою можна використовувати параметри відображення, загальні для всіх цих форматів. Вони дозволяють управляти:

- Кількість і діапазон сторінок, що містяться у вихідному документі ([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/), [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/)).
- Виконання посторінкового збереження документа ([PageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pagesavingcallback/)).
- Набір символів, які використовуються для відображення чисел ([NumeralFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_numeralformat/)).
- Програвач метафайлів ([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_metafilerenderingoptions/)). Більш детальну інформацію дивіться в розділі [Обробка Windows метафайлів](/words/cpp/handling-windows-metafiles/) стаття.
- Коефіцієнт якості при повторному стисненні зображень JPEG, значення якого може незначно відрізнятися в залежності від обраного формату збереження ([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_jpegquality/)).
- Оптимізація векторної графіки у вихідних даних Aspose.Words ([OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/)).
- Параметри графіки при збереженні в форматах Tiff, Png, Bmp, Jpeg, Emf ([UseAntiAliasing](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_useantialiasing/), [UseHighQualityRendering](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_usehighqualityrendering/)).
- Збереження документа у відтінках сірого ([ColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_colormode/)).
- Перемикання між відображенням фігур DrawingML і резервними фігурами ([DmlRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmlrenderingmode/)).
- Перемикання між режимами рендеринга ефектів DML ([DmlEffectsRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmleffectsrenderingmode/)).

У наведеному нижче прикладі показано, як зберегти документ у форматі JPEG, використовуючи метод `Save` та параметри відображення:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveDocumentToJPEG-SaveDocumentToJPEG.cpp" >}}
