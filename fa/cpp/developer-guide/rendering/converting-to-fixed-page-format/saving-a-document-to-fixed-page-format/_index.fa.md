---
title: ذخیره به فرمت صفحه ثابت در C++
second_title: Aspose.Words برای C++
articleTitle: ذخیره یک سند به فرمت صفحه ثابت
linktitle: ذخیره یک سند به فرمت صفحه ثابت
description: "چگونه یک سند را به فرمت صفحه ثابت ذخیره کنیم– PDF, XPS, HTML, XAML, PostScript, و PCL? دستورالعمل ها را ببینید."
type: docs
weight: 15
url: /fa/cpp/saving-a-document-to-fixed-page-format/
timestamp: 2024-09-24-14-35-44
---

پس از ساخت طرح صفحه و محاسبه هندسه اشیاء و موقعیت آنها در صفحه، سند را می توان در قالب صفحه ثابت با پشتیبانی Aspose.Words ذخیره کرد.

هنگام ذخیره اسناد به فرمت های صفحه ثابت، می توان از گزینه های رندر مشترک برای همه این فرمت ها استفاده کرد. آنها اجازه می دهند کنترل کنند:

- تعداد و محدوده صفحات موجود در سند خروجی([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/), [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/)).
- پیشرفت ذخیره اسناد صفحه به صفحه ([PageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pagesavingcallback/)).
- مجموعه ای از کاراکترها که برای رندر اعداد استفاده می شوند ([NumeralFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_numeralformat/)).
- یک پخش کننده متافیل ([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_metafilerenderingoptions/)). برای جزئیات بیشتر، به [دست زدن به Windows Metafiles](/words/cpp/handling-windows-metafiles/) مقاله.
- نرخ کیفیت برای فشرده سازی مجدد تصاویر JPEG، که ارزش آن ممکن است کمی متفاوت باشد، بسته به فرمت ذخیره انتخاب شده ([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_jpegquality/)).
- بهینه سازی گرافیک وکتور در خروجی Aspose.Words ([OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/)).
- گزینه های گرافیکی هنگام صرفه جویی در فرمت های Tiff، Png، Bmp، Jpeg، Emf ([UseAntiAliasing](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_useantialiasing/), [UseHighQualityRendering](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_usehighqualityrendering/)).
- ذخیره کردن سند در مقیاس خاکستری ([ColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_colormode/)).
- تغییر بین ارائه اشکال DrawingML و اشکال پشتیبان ([DmlRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmlrenderingmode/)).
- تغییر بین حالت های رندر جلوه های DML ([DmlEffectsRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmleffectsrenderingmode/)).

مثال زیر نشان می دهد که چگونه یک سند را با استفاده از روش `Save` و گزینه های رندر به فرمت JPEG ذخیره کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveDocumentToJPEG-SaveDocumentToJPEG.cpp" >}}
