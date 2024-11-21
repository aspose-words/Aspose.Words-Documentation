---
title: کار با هدر و پاورقی
second_title: Aspose.Words برای Python via .NET
articleTitle: کار با هدر و پاورقی
linktitle: کار با هدر و پاورقی
description: "ایجاد، مدیریت و حذف سرصفحه ها و پاورقی ها در یک سند با استفاده از Python."
type: docs
weight: 150
url: /fa/python-net/working-with-headers-and-footers/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words به کاربران اجازه می دهد تا با سرصفحه ها و پاورقی ها در یک سند کار کنند. سربرگ متنی است که در بالای صفحه قرار می گیرد و پاورقی متنی در پایین صفحه است. معمولاً از این قسمت ها برای درج اطلاعاتی استفاده می شود که باید در تمام یا برخی از صفحات سند تکرار شود، مانند شماره صفحات، تاریخ ایجاد، اطلاعات شرکت و غیره.

## با استفاده از DocumentBuilder هدر یا پاورقی ایجاد کنید

اگر می خواهید سرصفحه یا پاورقی سند را به صورت برنامه ریزی شده اضافه کنید، ساده ترین راه استفاده از کلاس [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) برای انجام آن است.

مثال کد زیر نحوه افزودن سرصفحه و پاورقی برای صفحات سند را نشان می دهد:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "create-header-footer.py" >}}

## گزینه های Header یا Footer را مشخص کنید

هنگامی که یک سرصفحه یا پاورقی به یک سند اضافه می کنید، می توانید برخی از ویژگی های پیشرفته را تنظیم کنید. Aspose.Words کلاس‌های [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) و [HeaderFooterCollection](https://reference.aspose.com/words/python-net/aspose.words/headerfootercollection/) و همچنین شمارش [HeaderFooterType](https://reference.aspose.com/words/python-net/aspose.words/headerfootertype/) را در اختیار کاربران قرار می‌دهد که به شما کنترل بیشتری بر فرآیند سفارشی‌سازی هدر و پاورقی می‌دهد.

### نوع Header یا Footer را مشخص کنید

شما می توانید سه نوع مختلف سرصفحه و سه نوع پاورقی مختلف را برای یک سند مشخص کنید:

1. سرصفحه و/یا پاورقی برای صفحه اول
2. سرصفحه و/یا پاورقی برای صفحات زوج
3. سرصفحه و/یا پاورقی برای صفحات فرد

مثال کد زیر نحوه اضافه کردن هدر برای صفحات سند فرد را نشان می دهد:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "header-footer-type.py" >}}

### مشخص کنید که آیا سرصفحه یا پاورقی متفاوت برای صفحه اول نمایش داده شود

همانطور که در بالا گفته شد، همچنین می توانید یک هدر یا پاورقی متفاوت برای صفحه اول تنظیم کنید. برای انجام این کار، باید پرچم [different_first_page_header_footer](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/different_first_page_header_footer/) را روی `true` تنظیم کنید و سپس مقدار **HeaderFirst** یا **FooterFirst** را مشخص کنید.

مثال کد زیر نحوه تنظیم هدر فقط برای صفحه اول را نشان می دهد:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "different-first-page.py" >}}

### مشخص کنید که آیا سرصفحه یا پاورقی متفاوت برای صفحات فرد یا زوج نمایش داده شود

 در مرحله بعد، می خواهید سرصفحه ها یا پاورقی های مختلفی را برای صفحات زوج و فرد در یک سند تنظیم کنید. برای این کار باید پرچم [odd_and_even_pages_header_footer](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/odd_and_even_pages_header_footer/) را روی `true` تنظیم کنید و سپس مقادیر **HeaderPrimary** و **HeaderEven** یا **FooterPrimary** و **FooterEven** را مشخص کنید.

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "odd-even-pages.py" >}}

### یک تصویر کاملاً موقعیت‌یافته را در هدر قرار دهید

برای قرار دادن تصویر در هدر یا پاورقی، از نوع هدر **HeaderPrimary** یا نوع فوتر **FooterPrimary** و روش [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) استفاده کنید.

مثال کد زیر نحوه اضافه کردن یک تصویر به هدر را نشان می دهد:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "insert-image.py" >}}

### ویژگی های فونت و پاراگراف را برای متن سرصفحه یا پاورقی تنظیم کنید

با Aspose.Words می‌توانید ویژگی‌های فونت و پاراگراف را تنظیم کنید، از نوع سرصفحه **HeaderPrimary** یا نوع پاورقی **FooterPrimary**، و همچنین روش‌ها و ویژگی‌ها برای کار با فونت‌ها و پاراگراف‌هایی که برای بدنه سند استفاده می‌کنید، استفاده کنید.

مثال کد زیر نحوه تنظیم متن در هدر Arial، پررنگ، اندازه 14 و تراز وسط را نشان می دهد:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "font-props.py" >}}

### اعداد صفحه را در هدر یا پاورقی درج کنید

در صورت لزوم، می توانید شماره صفحه را به هدر یا پاورقی اضافه کنید. برای این کار از نوع هدر **HeaderPrimary** یا نوع فوتر **FooterPrimary** و روش [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) برای اضافه کردن فیلد مورد نیاز استفاده کنید.

مثال کد زیر نحوه اضافه کردن شماره صفحه را به پاورقی سمت راست نشان می دهد:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "page-numbers.py" >}}

### از سرصفحه ها یا پاورقی های تعریف شده در بخش قبلی استفاده کنید

اگر نیاز به کپی کردن سرصفحه یا پاورقی قسمت قبلی دارید، می توانید این کار را نیز انجام دهید.

مثال کد زیر نحوه کپی کردن هدر یا پاورقی از بخش قبلی را نشان می دهد:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "copy-headers-footers-from-previous-section.py" >}}

### هنگام استفاده از جهت گیری های مختلف صفحه و اندازه صفحه، از ظاهر سرصفحه یا پاورقی اطمینان حاصل کنید

Aspose.Words به شما این امکان را می دهد که هنگام استفاده از جهت گیری ها و اندازه های مختلف صفحه، ظاهر یک هدر یا پاورقی را ارائه دهید.

مثال زیر نحوه انجام این کار را نشان می دهد:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "link-to-previous-header-footer.py" >}}

## چگونه فقط هدرها یا فقط پاورقی ها را حذف کنیم

هر بخش در یک سند می تواند تا سه سرصفحه و حداکثر سه پاورقی (برای صفحات اول، زوج و فرد) داشته باشد. اگر می‌خواهید همه سرصفحه‌ها یا تمام پاورقی‌ها را در یک سند حذف کنید، باید تمام بخش‌ها را حلقه بزنید و هر گره سرصفحه یا گره پاورقی مربوطه را حذف کنید.

مثال کد زیر نشان می دهد که چگونه می توان تمام پاورقی ها را از همه بخش ها حذف کرد اما سرصفحه ها را دست نخورده باقی گذاشت. شما می توانید فقط هدرها را به روشی مشابه حذف کنید:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "remove-footers.py" >}}

{{% alert color="primary" %}}

فایل نمونه این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Header%20and%20footer%20types.docx) دانلود کنید.

{{% /alert %}}
