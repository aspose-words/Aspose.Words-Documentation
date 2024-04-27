---
title: چاپ یک سند
second_title: Aspose.Words برای Java
articleTitle: چاپ یک سند برنامه نویسی یا استفاده از Dialogs
linktitle: چاپ یک سند برنامه نویسی یا استفاده از Dialogs
description: "چاپ یک سند با استفاده از Java از طریق تنظیمات، Print Preview و Print Progress Conversations"
type: docs
weight: 55
url: /fa/java/print-a-document-programmatically-or-using-dialogs/
---

این مقاله توضیح می دهد که چگونه یک سند پردازش کلمه را با استفاده از آن چاپ کنیم. Aspose.Words API... همچنین روش های چاپ یک سند را با تنظیمات، Print Preview و گفتگو های پیشرفت چاپ نشان می دهد.

## چاپ یک سند با تنظیمات و Preview Dialogs

هنگام کار با اسناد، اغلب لازم است آنها را به یک پرینتر انتخاب شده چاپ کنید. مفید است برای استفاده از یک گفتگوی پیش نمایش چاپ برای بررسی بصری چگونه سند چاپ ظاهر خواهد شد و انتخاب گزینه های چاپی مربوطه.

The The The The The The Aspose.Words هیچ گفتمان یا فرم داخلی ندارد، اما پیاده سازی می کند [AsposeWordsPrintDocument](https://reference.aspose.com/words/java/com.aspose.words/asposewordsprintdocument/) کلاس هر دو java.awt.print را متوقف می کند. Printable و java.awt.print صفحه ای

مثال زیر نشان می دهد که چگونه از این کلاس ها برای چاپ یک سند از طریق Aspose.Words از طریق پیش نمایش چاپ و چت تنظیمات:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-DocumentPreviewAndPrint-PrintDialog.java" >}}

{{% alert color="primary" %}} You can download an example of using the **PrintPreviewDialog** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java). {{% /alert %}}

## چندین صفحه در One Sheet

Aspose.Words پیاده سازی **MultipagePrintDocument** کلاس، برای تنظیم عملیات چاپ برای اجرای منطق سفارشی خود را با تعریف نحوه ظاهر سند در صفحه چاپ. The The The The The The **MultipagePrintDocument** کلاس توانایی چاپ چندین صفحه در یک ورق کاغذ را فراهم می کند.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-MultiplePagesOnSheet-MultiplePagesOnSheet.java" >}}

شما می توانید یک مثال از استفاده از **MultipagePrintDocument** کلاس از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/c693ec7a8957051c206edc69612094a4169f6def/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java#L46)..

نتیجه این مثال کد در زیر نشان داده شده است:

![print_several_pages_on_one_sheet_aspose_words_java](/words/java/print-a-document-programmatically-or-using-dialogs/print-several-pages-on-one-sheet.png)/
