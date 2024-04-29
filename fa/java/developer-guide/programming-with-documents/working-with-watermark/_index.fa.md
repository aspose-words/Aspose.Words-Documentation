---
title: کار با Watermark Java
second_title: Aspose.Words برای Java
articleTitle: کار با Watermark
linktitle: کار با Watermark
type: docs
description: "دستکاری علامت آب با استفاده از Java..."
weight: 70
url: /fa/java/working-with-watermark/
---

این موضوع بحث می کند که چگونه با استفاده از یک علامت آب کار کنیم Aspose.Words... علامت آب یک تصویر پس زمینه است که پشت متن در یک سند نمایش می دهد. علامت آب می تواند شامل یک متن یا یک تصویر باشد که توسط [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) کلاس

{{% alert color="primary" %}}

**سعی کنید آنلاین**

شما می توانید این قابلیت را با ما امتحان کنید [Free online document Watermark](https://products.aspose.app/words/watermark)...

{{% /alert %}}

## اضافه کردن یک علامت به یک سند

In In In Microsoft Word, علامت آب به راحتی می تواند در یک سند با استفاده از دستور Insert Watermark قرار گیرد. Aspose.Words فراهم می کند [watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) کلاس اضافه کردن یا حذف علامت در اسناد Aspose.Words فراهم می کند [دانلود موسیقی متن بازی The Punch Punch Punch Punch Punch](https://reference.aspose.com/words/java/com.aspose.words/watermarktype/)تکرار سه نوع احتمالی علامت های آب (Text، Image و None) را برای کار با آن تعریف می کند

### اضافه کردن Text Watermark

مثال کد زیر نشان می دهد که چگونه یک علامت آب متن را در یک سند با تعریف [TextWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/textwatermarkoptions/) استفاده از [SetText](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setText-java.lang.String) روش:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.java" >}}

### Add Image Watermark

مثال کد زیر نشان می دهد که چگونه یک علامت آب تصویر را در یک سند با تعریف [ImageWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/imagewatermarkoptions/) استفاده از [SetImage](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setImage-java.awt.image.BufferedImage) روش:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.java" >}}

علامت آب نیز می تواند با استفاده از کلاس شکل وارد شود. بسیار آسان است که هر شکل یا تصویر را به یک هدر یا پاتر وارد کنید و در نتیجه یک علامت آب از هر نوع قابل تصور ایجاد کنید.

مثال کد زیر یک علامت آب را به یک سند Word وارد می کند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-AddWatermarkToADocument-AddWatermarkToADocument.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل نمونه را از این مثال دانلود کنید. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)...

{{% /alert %}}


## حذف Watermark از یک سند

The The The The The The [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) کلاس فراهم می کند `Remove` روش حذف علامت از یک سند

مثال های کد زیر نشان می دهد که چگونه یک علامت آب را از اسناد حذف کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-RemoveWatermarkFromDocument.java" >}}

برای حذف علامت آب از یک سند شما باید فقط نام شکل آبمارک را در هنگام قرار دادن تنظیم کنید و سپس شکل علامت آب را با یک نام مشخص حذف کنید.

مثال کد زیر به شما نشان می دهد که چگونه نام شکل علامت آب را تنظیم کنید و آن را از سند حذف کنید:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-RemoveWatermark-RemoveWatermark.java" >}}

## اضافه کردن علامت به یک جدول سلولی

گاهی اوقات شما باید یک علامت / تصویر را در سلول جدول قرار دهید و آن را در خارج از جدول نمایش دهید، می توانید از آن استفاده کنید. [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell-boolean) مالکیت این ملک یک پرچم را می گیرد که نشان می دهد آیا شکل در داخل یک میز یا خارج از آن نمایش داده می شود یا نه. توجه داشته باشید که این ملک تنها زمانی کار می کند که سند را بهینه سازی کنید. Microsoft Word ۲۰۱۰ استفاده از [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) روش

مثال کد زیر نشان می دهد که چگونه از این ملک استفاده کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}
