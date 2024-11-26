---
title: کار با واترمارک در Java
second_title: Aspose.Words برای Java
articleTitle: کار با واترمارک
linktitle: کار با واترمارک
type: docs
description: "دستکاری علامت آبی سند با استفاده از Java."
weight: 70
url: /fa/java/working-with-watermark/
timestamp: 2024-01-27-14-07-04
---

این موضوع در مورد چگونگی کار برنامه نویسی با یک علامت آبی با استفاده از Aspose.Words بحث می کند. علامت آبی یک تصویر پس زمینه است که در پشت متن در یک سند نمایش داده می شود. یک علامت آبی می تواند حاوی یک متن یا یک تصویر باشد که توسط کلاس [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) نشان داده شده است.

{{% alert color="primary" %}}

**سعی کنید آنلاین**

شما می توانید این قابلیت را با ما امتحان کنید [علامت آبی سند آنلاین رایگان](https://products.aspose.app/words/watermark).

{{% /alert %}}

## یک علامت آبی به یک سند اضافه کنید

در Microsoft Word، یک علامت آبی را می توان به راحتی در یک سند با استفاده از دستور Insert Watermark وارد کرد. Aspose.Words کلاس [watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) را برای اضافه کردن یا حذف علامت آبی در اسناد فراهم می کند. Aspose.Words شمارش [WatermarkType](https://reference.aspose.com/words/java/com.aspose.words/watermarktype/)را فراهم می کند که سه نوع ممکن از علامت های آبی (متن، تصویر و هیچ) را برای کار با آن تعریف می کند.

### اضافه کردن علامت آبی متن

مثال کد زیر نشان می دهد که چگونه یک علامت آبی متن را در یک سند با تعریف [TextWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/textwatermarkoptions/) با استفاده از روش [SetText](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setText-java.lang.String) وارد کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.java" >}}

### علامت آب تصویر را اضافه کنید

مثال کد زیر نشان می دهد که چگونه یک علامت آبی تصویر را در یک سند با تعریف [ImageWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/imagewatermarkoptions/) با استفاده از روش [SetImage](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setImage-java.awt.image.BufferedImage) وارد کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.java" >}}

علامت آبی را می توان با استفاده از کلاس شکل نیز وارد کرد. بسیار آسان است که هر شکل یا تصویر را در یک سر یا پای صفحه قرار دهید و بنابراین یک علامت آبی از هر نوع قابل تصور ایجاد کنید.

مثال کد زیر یک علامت آبی را در یک سند ورد قرار می دهد:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-AddWatermarkToADocument-AddWatermarkToADocument.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل نمونه این مثال را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}


## علامت آب را از یک سند حذف کنید

کلاس [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) روش `Remove` را برای حذف علامت آبی از یک سند فراهم می کند.

نمونه های کد زیر نشان می دهد که چگونه یک علامت آبی را از اسناد حذف کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-RemoveWatermarkFromDocument.java" >}}

برای حذف علامت آبی از یک سند شما باید فقط نام شکل علامت آبی را در هنگام قرار دادن تنظیم کنید و سپس شکل علامت آبی را با یک نام اختصاص داده شده حذف کنید.

مثال کد زیر به شما نشان می دهد که چگونه نام شکل علامت آبی را تنظیم کنید و آن را از سند حذف کنید:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-RemoveWatermark-RemoveWatermark.java" >}}

## یک علامت آبی به یک سلول میز اضافه کنید

گاهی اوقات شما باید یک علامت/تصویر را در سلول جدول قرار دهید و آن را در خارج از جدول نمایش دهید، می توانید از ویژگی [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell-boolean) استفاده کنید. این ویژگی یک پرچم را دریافت یا تنظیم می کند که نشان می دهد آیا شکل در داخل یک جدول یا خارج از آن نمایش داده می شود. توجه داشته باشید که این ویژگی تنها زمانی کار می کند که شما سند را برای Microsoft Word 2010 با استفاده از روش [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) بهینه سازی کنید.

مثال کد زیر نشان می دهد که چگونه از این ویژگی استفاده کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}
