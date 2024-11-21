---
title: کار با واترمارک در C#
second_title: Aspose.Words برای .NET
articleTitle: کار با واترمارک
linktitle: کار با واترمارک
description: "دستکاری واترمارک سند با استفاده از C#."
type: docs
weight: 340
url: /fa/net/working-with-watermark/
timestamp: 2024-05-02-11-51-44
---

این مبحث نحوه کار برنامه‌نویسی با واترمارک با استفاده از Aspose.Words را مورد بحث قرار می‌دهد. واترمارک یک تصویر پس زمینه است که در پشت متن یک سند نمایش داده می شود. یک واترمارک می تواند حاوی متن یا تصویری باشد که توسط کلاس [Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) نمایش داده می شود.

{{% alert color="primary" %}}

**آنلاین امتحان کنید**

می توانید این عملکرد را با [واترمارک سند آنلاین رایگان](https://products.aspose.app/words/watermark) ما امتحان کنید.

{{% /alert %}}

## یک واترمارک به یک سند اضافه کنید

در Microsoft Word، با استفاده از دستور Insert Watermark به راحتی می توان یک واترمارک را در یک سند درج کرد. Aspose.Words کلاس [watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) را برای افزودن یا حذف واترمارک در اسناد فراهم می کند. Aspose.Words شماره [نوع واترمارک](https://reference.aspose.com/words/net/aspose.words/watermark/type/) را ارائه می دهد که سه نوع واترمارک ممکن (متن، تصویر و هیچکدام) را برای کار با آنها تعریف می کند

### اضافه کردن واترمارک متن

مثال کد زیر نحوه درج واترمارک متنی را با تعریف [TextWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/textwatermarkoptions/) با استفاده از روش [SetText](https://reference.aspose.com/words/net/aspose.words/watermark/settext/#settext) نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cs" >}}

### اضافه کردن واترمارک تصویر

مثال کد زیر نحوه درج واترمارک تصویر را با تعریف [ImageWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/imagewatermarkoptions/) با استفاده از روش [SetImage](https://reference.aspose.com/words/net/aspose.words/watermark/setimage/#setimage) نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cs" >}}

واترمارک را می توان با استفاده از کلاس شکل نیز درج کرد. بسیار آسان است که هر شکل یا تصویری را در هدر یا پاورقی درج کنید و بنابراین یک واترمارک از هر نوع قابل تصوری ایجاد کنید.

مثال کد زیر یک واترمارک را در یک سند Word وارد می کند:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Images-AddWatermark-AddWatermark.cs" >}}

{{% alert color="primary" %}}

فایل نمونه این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx) دانلود کنید.

{{% /alert %}}


## حذف واترمارک از یک سند

کلاس [Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) روش حذف را برای حذف واترمارک از یک سند ارائه می دهد.

مثال کد زیر نحوه حذف واترمارک از اسناد را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cs" >}}

اگر واترمارک ها با استفاده از شی کلاس [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) اضافه می شوند، برای حذف واترمارک از یک سند باید فقط نام شکل واترمارک را در حین درج تنظیم کنید و سپس شکل واترمارک را با نام اختصاص داده شده حذف کنید.

مثال کد زیر به شما نشان می دهد که چگونه نام شکل واترمارک را تنظیم کرده و آن را از سند حذف کنید:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cs" >}}

## یک واترمارک به سلول جدول اضافه کنید

گاهی اوقات لازم است یک واترمارک/تصویر را در سلول جدول وارد کنید و آن را در خارج از جدول نمایش دهید، می توانید از ویژگی [IsLayoutInCell](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/islayoutincell/) استفاده کنید. این ویژگی پرچمی را دریافت یا تنظیم می کند که نشان می دهد شکل در داخل جدول یا خارج از آن نمایش داده می شود. توجه داشته باشید که این ویژگی فقط زمانی کار می کند که سند را برای Microsoft Word 2010 با استفاده از روش [OptimizeFor](https://reference.aspose.com/words/net/aspose.words.settings/compatibilityoptions/optimizefor/) بهینه کنید.

مثال کد زیر نحوه استفاده از این ویژگی را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}
