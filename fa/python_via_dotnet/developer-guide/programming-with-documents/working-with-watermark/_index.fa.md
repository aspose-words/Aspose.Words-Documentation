---
title: کار با واترمارک در Python
second_title: Aspose.Words برای Python via .NET
articleTitle: کار با واترمارک
linktitle: کار با واترمارک
description: "ایجاد و مدیریت واترمارک در یک سند با استفاده از Python."
type: docs
weight: 340
url: /fa/python-net/working-with-watermark/
timestamp: 2024-01-27-14-07-04
---

این مبحث نحوه کار برنامه‌نویسی با واترمارک با استفاده از Aspose.Words را مورد بحث قرار می‌دهد. واترمارک یک تصویر پس زمینه است که در پشت متن یک سند نمایش داده می شود. یک واترمارک می تواند حاوی متن یا تصویری باشد که توسط کلاس [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) نمایش داده می شود.

{{% alert color="primary" %}}

**آنلاین امتحان کنید**

می توانید این عملکرد را با [واترمارک سند آنلاین رایگان](https://products.aspose.app/words/watermark) ما امتحان کنید.

{{% /alert %}}

## نحوه اضافه کردن واترمارک به یک سند

در Microsoft Word، با استفاده از دستور Insert Watermark به راحتی می توان یک واترمارک را در یک سند درج کرد. Aspose.Words کلاس [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) را برای افزودن یا حذف واترمارک در اسناد فراهم می کند. Aspose.Words شمارش [WatermarkType](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/) را ارائه می دهد که سه نوع ممکن از واترمارک ([TEXT](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#text)، [IMAGE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#image) و [NONE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#none)) را برای کار با آنها تعریف می کند

### اضافه کردن واترمارک متن

مثال کد زیر نحوه درج واترمارک متنی را با تعریف [TextWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/textwatermarkoptions/) با استفاده از روش [set_text](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_text/) نشان می دهد.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddTextWatermarkWithSpecificOptions.py" >}}

### اضافه کردن واترمارک تصویر

مثال کد زیر نحوه درج واترمارک تصویر را با تعریف [ImageWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/imagewatermarkoptions/) با استفاده از روش [set_image](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_image/) نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddImageWatermarkWithSpecificOptions.py" >}}

واترمارک را می توان با استفاده از کلاس شکل نیز درج کرد. بسیار آسان است که هر شکل یا تصویری را در یک هدر یا پاورقی درج کنید و بنابراین یک واترمارک از هر نوع قابل تصوری ایجاد کنید.

مثال کد زیر یک واترمارک را در یک سند Word وارد می کند:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddWatermark.py" >}}

{{% alert color="primary" %}}

فایل قالب این نمونه را می توانید از [اینجا](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx) دانلود کنید

{{% /alert %}}


## حذف واترمارک از یک سند

کلاس [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) روش حذف را برای حذف واترمارک از یک سند ارائه می کند.

مثال کد زیر نحوه حذف واترمارک از اسناد را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermarkFromDocument.py" >}}

اگر واترمارک ها با استفاده از شی کلاس [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) اضافه می شوند، برای حذف واترمارک از یک سند باید فقط نام شکل واترمارک را در حین درج تنظیم کنید و سپس شکل واترمارک را با نام اختصاص داده شده حذف کنید.

مثال کد زیر به شما نشان می دهد که چگونه نام شکل واترمارک را تنظیم کرده و آن را از سند حذف کنید:

{{< highlight python >}}
# Set name to be able to remove it afterwards
watermark.name = "WaterMark"
{{< /highlight >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermark.py" >}}

## یک واترمارک در سلول جدول اضافه کنید

گاهی اوقات لازم است یک واترمارک/تصویر را در سلول جدول وارد کنید و آن را در خارج از جدول نمایش دهید، می توانید از ویژگی [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/) استفاده کنید. این ویژگی پرچمی را دریافت یا تنظیم می کند که نشان می دهد شکل در داخل جدول یا خارج از آن نمایش داده می شود. توجه داشته باشید که این ویژگی فقط زمانی کار می کند که سند را برای Microsoft Word 2010 با استفاده از روش [optimize_for](https://reference.aspose.com/words/python-net/aspose.words.settings/compatibilityoptions/optimize_for/) بهینه کنید.

مثال کد زیر نحوه استفاده از این ویژگی را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}
