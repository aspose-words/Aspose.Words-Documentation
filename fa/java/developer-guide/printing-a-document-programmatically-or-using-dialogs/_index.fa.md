---
title: چاپ سند
second_title: Aspose.Words برای Java
articleTitle: چاپ یک سند به صورت برنامه ریزی شده یا با استفاده از دیالوگ ها
linktitle: چاپ یک سند به صورت برنامه ریزی شده یا با استفاده از دیالوگ ها
description: "یک سند را با استفاده از Java از طریق تنظیمات، پیش نمایش چاپ و دایالوگ های پیشرفت چاپ چاپ کنید."
type: docs
weight: 55
url: /fa/java/print-a-document-programmatically-or-using-dialogs/
timestamp: 2024-01-27-14-07-04
---

این مقاله نحوه چاپ یک سند پردازش متن با استفاده از Aspose.Words API را توصیف می کند. همچنین روش های چاپ یک سند با تنظیمات، پیش نمایش چاپ و دیالوگ های پیشرفت چاپ را نشان می دهد.

## چاپ سند با تنظیمات و دیالوگ های پیش نمایش چاپ

هنگام کار با اسناد، اغلب لازم است آنها را به چاپگر انتخاب شده چاپ کنید. استفاده از یک دیالوگ پیش نمایش چاپ برای بررسی بصری نحوه ظاهر شدن سند چاپ شده و انتخاب گزینه های چاپ مربوطه مفید است.

Aspose.Words هیچ دیالوگ یا فرم داخلی ندارد اما کلاس [AsposeWordsPrintDocument](https://reference.aspose.com/words/java/com.aspose.words/asposewordsprintdocument/) را اجرا می کند که هر دو جاوا را رد می کند.آوتچاپ.قابل چاپ و جاواآوتچاپ.قابل صفحه بندی

مثال زیر نشان می دهد که چگونه از این کلاس ها برای چاپ یک سند از Aspose.Words از طریق پیش نمایش چاپ و دایالوگ های تنظیمات استفاده کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-DocumentPreviewAndPrint-PrintDialog.java" >}}

{{% alert color="primary" %}} You can download an example of using the **PrintPreviewDialog** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java). {{% /alert %}}

## چاپ چند صفحه در یک صفحه

Aspose.Words کلاس **MultipagePrintDocument** را اجرا می کند، برای تنظیم دقیق عملیات چاپ برای پیاده سازی منطق سفارشی شما با تعریف نحوه ظاهر شدن سند در صفحه چاپ شده. کلاس **MultipagePrintDocument** امکان چاپ چند صفحه بر روی یک ورق کاغذ را فراهم می کند.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-MultiplePagesOnSheet-MultiplePagesOnSheet.java" >}}

شما می توانید یک مثال از استفاده از کلاس **MultipagePrintDocument** را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/c693ec7a8957051c206edc69612094a4169f6def/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java#L46).

نتیجه این مثال کد در زیر نشان داده شده است:

![print_several_pages_on_one_sheet_aspose_words_java](/words/java/print-a-document-programmatically-or-using-dialogs/print-several-pages-on-one-sheet.png)/
