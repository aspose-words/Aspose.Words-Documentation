---
title: کار با هدر و فوتر در Java
second_title: Aspose.Words برای Java
articleTitle: کار با هدر و فوتر
linktitle: کار با هدر و فوتر
description: "چگونه با استفاده از Java سر و پای صفحه را دستکاری کنیم."
type: docs
weight: 150
url: /fa/java/working-with-headers-and-footers/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words به کاربران اجازه می دهد تا با سر و پای یک سند کار کنند. هدر متنی است که در بالای یک صفحه قرار می گیرد و پاورقی متنی است که در پایین یک صفحه قرار دارد. به طور معمول، از این مناطق برای درج اطلاعاتی استفاده می شود که باید در تمام یا برخی از صفحات سند تکرار شود، مانند شماره صفحات، تاریخ ایجاد، اطلاعات شرکت و غیره.

## ایجاد هدر یا فوتر با استفاده از DocumentBuilder

اگر می خواهید یک هدر سند یا پاورقی را به صورت برنامه ریزی شده اضافه کنید، ساده ترین راه استفاده از کلاس [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) برای انجام آن است.

مثال کد زیر نشان می دهد که چگونه یک سر و پای صفحه برای صفحات سند اضافه کنید:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "create-header-footer.java" >}}

## گزینه های Header یا Footer را مشخص کنید

وقتی یک هدر یا پای صفحه را به یک سند اضافه می کنید، می توانید برخی از ویژگی های پیشرفته را تنظیم کنید. Aspose.Words به کاربران کلاس های [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) و [HeaderFooterCollection](https://reference.aspose.com/words/java/com.aspose.words/headerfootercollection/) و همچنین [HeaderFooterType](https://reference.aspose.com/words/java/com.aspose.words/headerfootertype/) enumeration را ارائه می دهد که به شما کنترل بیشتری بر روی فرآیند سفارشی سازی سر و پای صفحه می دهد.

### نوع هدر یا پاورقی را مشخص کنید

شما می توانید سه نوع سرصفحه مختلف و سه نوع پای صفحه مختلف را برای یک سند مشخص کنید:

1. سر و یا پای صفحه اول
2. هدر و / یا پاورقی برای حتی صفحات
3. هدر و / یا پاورقی برای صفحات عجیب و غریب

مثال کد زیر نشان می دهد که چگونه یک سرصفحه برای صفحات سند عجیب و غریب اضافه کنید:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "header-footer-type.java" >}}

### مشخص کنید که آیا سرصفحه ها یا پاورقی های مختلف را برای صفحه اول نمایش دهید

همانطور که در بالا گفته شد، شما همچنین می توانید یک هدر یا پاورقی متفاوت برای صفحه اول تنظیم کنید. برای انجام این کار، باید پرچم [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) را به `true` تنظیم کنید و سپس مقدار **HeaderFirst** یا **FooterFirst** را مشخص کنید.

مثال کد زیر نشان می دهد که چگونه سرصفحه را فقط برای صفحه اول تنظیم کنید:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "different-first-page.java" >}}

### مشخص کنید که آیا سرصفحه ها یا پای صفحه های مختلف را برای صفحات عجیب و غریب یا حتی نمایش دهید

 بعد، شما می خواهید سرصفحه ها یا پاورقی های مختلف را برای صفحات عجیب و غریب و یکنواخت در یک سند تنظیم کنید. برای انجام این کار، باید پرچم [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) را به `true` تنظیم کنید و سپس مقادیر **HeaderPrimary** و **HeaderEven** یا **FooterPrimary** و **FooterEven** را مشخص کنید.

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "odd-even-pages.java" >}}

### یک تصویر کاملا قرار گرفته را در هدر قرار دهید

برای قرار دادن یک تصویر در هدر یا فوتر، از نوع هدر **HeaderPrimary** یا نوع فوتر **FooterPrimary** و روش [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) استفاده کنید.

مثال کد زیر نشان می دهد که چگونه یک تصویر را به یک سرصفحه اضافه کنید:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "insert-image.java" >}}

### ویژگی های فونت و پاراگراف را برای متن هدر یا پاورقی تنظیم کنید

با Aspose.Words می توانید ویژگی های فونت و پاراگراف را تنظیم کنید، از نوع سرصفحه **HeaderPrimary** یا نوع پاورقی **FooterPrimary** و همچنین روش ها و ویژگی های کار با فونت ها و پاراگراف هایی که برای بدنه سند استفاده می کنید استفاده کنید.

مثال کد زیر نشان می دهد که چگونه متن را در سرصفحه به Arial، bold، size 14 و center alignment تنظیم کنید:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "font-props.java" >}}

### شماره صفحات را در هدر یا پاورقی قرار دهید

در صورت لزوم، می توانید شماره صفحات را به هدر یا پاورقی اضافه کنید. برای انجام این کار، از نوع **HeaderPrimary** header یا نوع **FooterPrimary** footer و روش [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) برای اضافه کردن فیلد مورد نیاز استفاده کنید.

مثال کد زیر نشان می دهد که چگونه شماره صفحه را به پای صفحه در سمت راست اضافه کنید:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "page-numbers.java" >}}

### از Header یا Footers تعریف شده در بخش قبلی استفاده کنید

اگر نیاز به کپی کردن هدر یا فوتر از بخش قبلی دارید، می توانید این کار را نیز انجام دهید.

مثال کد زیر نشان می دهد که چگونه هدر یا پای صفحه را از بخش قبلی کپی کنید:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "copy-headers-footers-from-previous-section.java" >}}

### هنگام استفاده از جهت گیری های مختلف صفحه و اندازه صفحه، ظاهر Header یا Footer را تضمین کنید

Aspose.Words به شما اجازه می دهد تا ظاهر یک سر یا پای صفحه را هنگام استفاده از جهت گیری های مختلف و اندازه صفحه ارائه دهید.

مثال زیر نشان می دهد که چگونه این کار را انجام دهید:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

## چگونه فقط سرصفحه ها یا فقط پاورقی ها را حذف کنیم

هر بخش در یک سند می تواند تا سه عنوان و تا سه فوت (برای صفحات اول، جفت و عجیب) داشته باشد. اگر می خواهید همه سرصفحه ها یا همه پاورقی ها را در یک سند حذف کنید، باید از طریق تمام بخش ها حلقه بزنید و هر گره سرصفحه یا گره پاورقی مربوطه را حذف کنید.

مثال کد زیر نشان می دهد که چگونه تمام پای صفحه را از تمام بخش ها حذف کنید اما سرصفحه ها را دست نخورده بگذارید. شما می توانید فقط سرصفحه ها را به روشی مشابه حذف کنید:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "remove-footers.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل نمونه این مثال را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Footer.docx).

{{% /alert %}}
