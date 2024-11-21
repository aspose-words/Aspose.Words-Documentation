---
title: کار با Headers و Footers Java
second_title: Aspose.Words برای Java
articleTitle: کار با Headers و Footers
linktitle: کار با Headers و Footers
description: "چگونه به دستکاری هدر ها و عابران با استفاده از Java..."
type: docs
weight: 150
url: /fa/java/working-with-headers-and-footers/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words اجازه می دهد تا کاربران با هدر و پا در یک سند کار کنند. یک هدر متنی است که در بالای یک صفحه قرار می گیرد و یک پابر در پایین صفحه متن است. به طور معمول، از این مناطق برای قرار دادن اطلاعات استفاده می شود که باید در همه یا برخی از صفحات سند، مانند شماره صفحه، تاریخ ایجاد، اطلاعات شرکت و غیره تکرار شود.

## ایجاد Headers یا Footers با استفاده از DocumentBuilder

اگر می خواهید یک هدر سند یا برنامه نویس پا اضافه کنید، ساده ترین راه استفاده از آن است. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) کلاس برای انجام آن

مثال کد زیر نشان می دهد که چگونه یک header و Footer را برای صفحات سند اضافه کنیم:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "create-header-footer.java" >}}

## گزینه های Header یا Footer

هنگامی که یک هدر یا پا را به یک سند اضافه می کنید، می توانید برخی از خواص پیشرفته را تنظیم کنید. Aspose.Words کاربران را با [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) و [HeaderFooterCollection](https://reference.aspose.com/words/java/com.aspose.words/headerfootercollection/) کلاس ها، و همچنین [HeaderFooterType](https://reference.aspose.com/words/java/com.aspose.words/headerfootertype/) تکرار که به شما کنترل بیشتری بر روند سفارشی سازی سر و پا می دهد.

### ویژگی های Header یا Footer Type

شما می توانید سه نوع مختلف هدر و سه نوع مختلف برای یک سند را مشخص کنید:

1. Header و / یا Footer برای صفحه اول
2. سرسر و / یا پا برای حتی صفحات
3. Header و / یا Footer برای صفحات عجیب

مثال کد زیر نشان می دهد که چگونه یک هدر برای صفحات سند عجیب اضافه کنیم:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "header-footer-type.java" >}}

### مشخص کنید که آیا برای نمایش سرسرهای مختلف یا Footers برای صفحه اول

همانطور که در بالا گفته شد، شما همچنین می توانید یک هدر یا پا را برای صفحه اول تنظیم کنید. برای انجام این کار، شما باید تنظیم کنید [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) پرچم `true` و پس از آن، **HeaderFirst** یا **FooterFirst** ارزش

مثال کد زیر نشان می دهد که چگونه هدر را برای صفحه اول تنظیم کنیم:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "different-first-page.java" >}}

### مشخص کنید که آیا برای نمایش سرسرهای مختلف یا پا برای عجیب و غریب یا حتی صفحات

 سپس، شما می خواهید برای قرار دادن سر و کله های مختلف برای صفحات عجیب و حتی در یک سند. برای انجام این کار، شما باید تنظیم کنید [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) پرچم `true` و سپس ارزش ها را درک کنید **HeaderPrimary** و **HeaderEven**, یا **FooterPrimary** و **FooterEven**...

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "odd-even-pages.java" >}}

### یک موقعیت کاملا مشخص را وارد کنید تصویر در Header

برای قرار دادن یک تصویر در یک هدر یا پادار، استفاده از **HeaderPrimary** نوع هدر یا **FooterPrimary** نوع پا و [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) روش

مثال کد زیر نشان می دهد که چگونه یک تصویر را به یک هدر اضافه کنید:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "insert-image.java" >}}

### تنظیم فونت و خواص پاراگراف برای Header یا Footer Text

با Aspose.Words شما می توانید ویژگی های فونت و پاراگراف را تنظیم کنید، از آن استفاده کنید. **HeaderPrimary** نوع هدر یا **FooterPrimary** نوع پا، و همچنین روش ها و خواص برای کار با فونت ها و پاراگراف هایی که برای بدن سند استفاده می کنید.

مثال کد زیر نشان می دهد که چگونه متن را در هدر به Arial، جسور، اندازه 14 و تراز مرکزی تنظیم کنیم:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "font-props.java" >}}

### شماره های صفحه را به Header یا Footer وارد کنید

در صورت لزوم، می توانید شماره صفحه را به هدر یا پادار اضافه کنید. برای انجام این کار، استفاده از **HeaderPrimary** نوع هدر یا **FooterPrimary** نوع پا و [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) روش اضافه کردن زمینه مورد نیاز

مثال کد زیر نشان می دهد که چگونه اعداد صفحه را به سمت راست اضافه کنید:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "page-numbers.java" >}}

### استفاده از Headers یا Footers تعریف شده در بخش قبلی

اگر شما باید هدر یا پا را از بخش قبلی کپی کنید، می توانید این کار را نیز انجام دهید.

مثال کد زیر نشان می دهد که چگونه header یا Footer را از بخش قبلی کپی کنید:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "copy-headers-footers-from-previous-section.java" >}}

### اطمینان حاصل کنید که Header یا Footer هنگام استفاده از Orientations مختلف صفحه و اندازه صفحه

Aspose.Words اجازه می دهد تا شما را به ارائه ظاهر یک سر یا پا در هنگام استفاده از جهت گیری های مختلف و اندازه صفحه.

مثال زیر نشان می دهد که چگونه این کار را انجام دهید:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

## چگونه فقط سرسرها یا فقط پا را حذف کنیم

هر بخش در یک سند می تواند تا سه هدر و حداکثر سه پا (برای اولین، حتی صفحات عجیب و غریب) داشته باشد. اگر می خواهید تمام هدرها یا تمام پاها را در یک سند حذف کنید، باید از تمام بخش ها دور شوید و هر گره سر یا پا را حذف کنید.

مثال کد زیر نشان می دهد که چگونه تمام پاها را از تمام بخش ها حذف کنیم اما هدرها را دست نخورده رها کنید. شما می توانید فقط هدرها را به روشی مشابه حذف کنید:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "remove-footers.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل نمونه را از این مثال دانلود کنید. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Footer.docx)...

{{% /alert %}}
