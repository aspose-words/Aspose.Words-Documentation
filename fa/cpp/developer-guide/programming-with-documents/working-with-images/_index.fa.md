---
title: کار با تصاویر در C++
second_title: Aspose.Words برای C++
articleTitle: کار با تصاویر
linktitle: کار با تصاویر
type: docs
description: "مقدمه ای به ویژگی تصویر، نحوه ایجاد و دستکاری تصویر با استفاده از C++."
weight: 300
url: /fa/cpp/working-with-images/
---

Aspose.Words به کاربران اجازه می دهد تا با تصاویر به روشی بسیار انعطاف پذیر کار کنند. در این مقاله فقط می توانید برخی از امکانات کار با تصاویر را بررسی کنید.

## نحوه استخراج تصاویر از یک سند

همه تصاویر در داخل گره های **Shape** در یک [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) ذخیره می شوند. برای استخراج تمام تصاویر یا تصاویر با نوع خاصی از سند، این مراحل را دنبال کنید:

- از روش [GetChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchildnodes/) برای انتخاب تمام گره های **Shape** استفاده کنید.
- از طریق مجموعه گره های حاصل تکرار کنید.
- ویژگی boolean [HasImage](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_hasimage/) را بررسی کنید.
- استخراج اطلاعات تصویر با استفاده از خاصیت [ImageData](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_imagedata/).
- داده های تصویر را در یک فایل ذخیره کنید.

مثال کد زیر نشان می دهد که چگونه تصاویر را از یک سند استخراج کنید و آنها را به عنوان فایل ذخیره کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cpp" >}}

## ذخیره تصاویر به صورت WMF

Aspose.Words قابلیت ذخیره تمام تصاویر موجود در یک سند را برای [WMF ](https://docs.fileformat.com/image/wmf/)فرمت در حالی که تبدیل DOCX به RTF.

مثال کد زیر نشان می دهد که چگونه تصاویر را به عنوان WMF با RTF گزینه های ذخیره ذخیره کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cpp" >}}
