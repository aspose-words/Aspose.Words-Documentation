---
title: تبدیل یک سند به PDF در Java
second_title: Aspose.Words برای Java
articleTitle: تبدیل یک سند به PDF
linktitle: تبدیل یک سند به PDF
description: "تبدیل یک سند در Word یا هر فرمت پشتیبانی شده دیگر به PDF، که حفظ ظاهر اصلی یک سند در هنگام ارائه آن در سیستم عامل های مختلف با استفاده از سیستم عامل های مختلف با استفاده از آن Java..."
type: docs
weight: 10
url: /fa/java/convert-a-document-to-pdf/
---

توانایی تبدیل آسان و قابل اعتماد اسناد از یک فرمت به فرمت دیگر یک ویژگی کلیدی است. Aspose.Words... یکی از محبوب ترین فرمت ها برای تبدیل، PDF است – یک فرمت ثابت-layout که ظاهر اصلی یک سند را در هنگام ارائه آن در سیستم عامل های مختلف حفظ می کند. اصطلاح "rendering" در Aspose.Words برای توصیف فرایند تبدیل یک سند به یک فرمت فایل است که به تعویق افتاده یا دارای مفهوم صفحات است.

## تبدیل یک Word Document به PDF {#convert-a-word-document-to-pdf}

تبدیل از Word به PDF یک فرایند نسبتا پیچیده است که نیاز به چندین مرحله محاسبه دارد. Aspose.Words طراحی موتور شبیه سازی راه Microsoft Wordموتور چیدمان صفحه کار می کند، ساخت اسناد خروجی PDF تا حد امکان نزدیک به آنچه که می توانید در آن ببینید. Microsoft Word...

با Aspose.Words شما می توانید یک سند را از فرمت DOC یا DOCX به PDF تبدیل کنید بدون استفاده از آن Microsoft دفتر این مقاله توضیح می دهد که چگونه این تبدیل را انجام دهید.

{{% alert color="primary" %}}

توجه داشته باشید که تعداد صفحات در یک سند بر زمان تبدیل تأثیر می گذارد.

{{% /alert %}}

### تبدیل DOCX یا DOC به PDF {#converting-doc-or-docx-to-pdf}

تبدیل از فرمت DOC یا DOCX به فرمت PDF در فرمت pdf Aspose.Words بسیار آسان است و می تواند تنها با دو خط کد انجام شود:

1. سند خود را به یک [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) شی با استفاده از یکی از سازنده های آن با مشخص کردن نام سند با فرمت آن.
1. یکی از [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) روش ها در **Document** شی و فرمت خروجی مورد نظر را به عنوان PDF با ورود به یک نام فایل با پسوند ".PDF" مشخص کنید.

مثال کد زیر نشان می دهد که چگونه یک سند را از DOCX به PDF با استفاده از DOCX تبدیل کنید `Save` روش:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

شما می توانید فایل قالب این مثال را دانلود کنید. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ConvertImageToPdf/Template.doc)...

{{% alert color="primary" %}}

گاهی اوقات لازم است که گزینه های اضافی را مشخص کنید که می تواند بر نتیجه صرفه جویی در یک سند به عنوان یک PDF تاثیر بگذارد. این گزینه ها را می توان با استفاده از [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) کلاس، حاوی خواص است که تعیین می کند که چگونه خروجی PDF نمایش داده خواهد شد.

توجه داشته باشید که با همان تکنیک، می توانید هر سند فرمت جریانی را به فرمت PDF تبدیل کنید.

{{% /alert %}}

### تبدیل به pdf مختلف استانداردهای استاندارد {#converting-to-various-pdf-standards}

Aspose.Words فراهم می کند [PdfCompliace](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/)تزریق برای حمایت از تبدیل DOC یا DOCX به استانداردهای فرمت مختلف PDF (مانند PDF 1.7، PDF 1.5 و غیره)

مثال کد زیر نشان می دهد که چگونه یک سند را به pdf 1.7 تبدیل کنیم. [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) مطابق با PDF17:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "conversion-to-pdf17.java" >}}

## تبدیل تصاویر به PDF

تبدیل به PDF محدود نمی شود Microsoft Word فرمت های سند هر فرمت پشتیبانی شده توسط Aspose.Words, از جمله ایجاد برنامه، همچنین می تواند به PDF تبدیل شود. به عنوان مثال، ما می توانیم تصاویر تک صفحه ای مانند JPEG، PNG، BMP، EMF یا WMF، و همچنین تصاویر چند صفحه ای مانند TIFF و GIF را به PDF تبدیل کنیم.

مثال کد زیر نشان می دهد که چگونه تصاویر JPEG و TIFF را به PDF تبدیل کنیم:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "image-to-pdf.java" >}}

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "convert-image-to-pdf.java" >}}

برای انجام این کار کد، شما باید ارجاعات را اضافه کنید Aspose.Words, Javaawt.image و javax بسته های کلاس تصویری به پروژه شما

## کاهش PDF اندازه خروجی

هنگام صرفه جویی در PDF، می توانید مشخص کنید که آیا می خواهید خروجی را بهینه سازی کنید. برای انجام این کار، شما باید تنظیم کنید [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) پرچم true, و پس از آن، گرد و غبار و پارچه های خالی برداشته خواهد شد، همسایه glyphبا همان قالب بندی ادغام خواهد شد.

مثال کد زیر نشان می دهد که چگونه خروجی را بهینه سازی کنیم:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "optimize-output.java" >}}

{{% alert color="primary" %}}

استفاده از **OptimizeOutput** مالکیت ممکن است بر دقت صفحه نمایش محتوا تأثیر بگذارد.

{{% /alert %}}

## همچنین ببینید

- مقاله [ارائه دهنده](/words/fa/java/rendering/) برای اطلاعات بیشتر در مورد فرمت های ثابت صفحه و جریان
- مقاله [تبدیل به فرمت ثابت صفحه](/words/java/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) برای اطلاعات بیشتر در طرح صفحه
- مقاله [دانلود موسیقی متن بازی The Punch بازی Punch Punch Punch](/words/fa/java/specify-rendering-options-when-converting-to-pdf/) اطلاعات بیشتر در مورد استفاده از `PdfSaveOptions` کلاس
