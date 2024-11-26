---
title: الحفظ إلى تنسيق الصفحة الثابتة في C++
second_title: Aspose.Words ل C++
articleTitle: حفظ مستند بتنسيق صفحة ثابتة
linktitle: حفظ مستند بتنسيق صفحة ثابتة
description: "كيفية حفظ مستند بتنسيق صفحة ثابتة– PDF, XPS, HTML, XAML, PostScript, و PCL? انظر التعليمات."
type: docs
weight: 15
url: /ar/cpp/saving-a-document-to-fixed-page-format/
timestamp: 2024-09-24-14-35-44
---

بعد بناء تخطيط الصفحة وحساب هندسة الكائنات وموقعها على الصفحة، يمكن حفظ المستند بتنسيق صفحة ثابتة مدعوم بـ Aspose.Words.

عند حفظ المستندات بتنسيقات الصفحات الثابتة، يمكن استخدام خيارات العرض الشائعة لجميع هذه التنسيقات. أنها تسمح للسيطرة:

- عدد ونطاق الصفحات الواردة في وثيقة الإخراج([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/), [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/)).
- تقدم حفظ المستندات صفحة بصفحة ([PageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pagesavingcallback/)).
- مجموعة من الأحرف التي تستخدم لتقديم الأرقام ([NumeralFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_numeralformat/)).
- لاعب ملف التعريف ([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_metafilerenderingoptions/)). لمزيد من التفاصيل، راجع [المناولة Windows ملفات التعريف](/words/cpp/handling-windows-metafiles/) المادة.
- معدل جودة لإعادة ضغط JPEG الصور، قد تختلف قيمتها قليلا، اعتمادا على تنسيق الحفظ المحدد ([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_jpegquality/)).
- تحسين الرسومات المتجهة في إخراج Aspose.Words ([OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/)).
- خيارات الرسومات عند حفظ إلى تيف، ينغ، بمب، جبيغ، إمف الأشكال ([UseAntiAliasing](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_useantialiasing/), [UseHighQualityRendering](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_usehighqualityrendering/)).
- حفظ المستند بتدرج الرمادي ([ColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_colormode/)).
- التبديل بين تقديم أشكال الرسم والأشكال الاحتياطية ([DmlRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmlrenderingmode/)).
- التبديل بين DML آثار تقديم وسائط ([DmlEffectsRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmleffectsrenderingmode/)).

يوضح المثال أدناه كيفية حفظ مستند بتنسيق JPEG باستخدام طريقة `Save` وخيارات العرض:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveDocumentToJPEG-SaveDocumentToJPEG.cpp" >}}
