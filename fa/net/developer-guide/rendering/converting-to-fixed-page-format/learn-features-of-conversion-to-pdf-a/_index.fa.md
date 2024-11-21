---
title: تبدیل به PDF/A و PDF/UA
second_title: Aspose.Words برای .NET
articleTitle: با ویژگی های تبدیل به PDF/A و PDF/UA آشنا شوید
linktitle: با ویژگی های تبدیل به PDF/A و PDF/UA آشنا شوید
description: "با استفاده از C# به PDF/A-1، PDF/A-2، PDF/A-4 و PDF/UA تبدیل کنید. بهترین استاندارد PDF را برای تبدیل یک سند با استفاده از C# انتخاب کنید."
type: docs
weight: 25
url: /fa/net/learn-features-of-conversion-to-pdf-a-pdf-ua/
timestamp: 2024-01-31-14-23-37
---

PDF یک فرمت صفحه ثابت است که در بین کاربران بسیار محبوب است و به طور گسترده توسط برنامه های مختلف پشتیبانی می شود، زیرا یک سند PDF در هر دستگاهی یکسان به نظر می رسد. به همین دلیل، تبدیل به PDF یکی از ویژگی های مهم Aspose.Words است.

PDF به خودی خود فرمت پیچیده ای است، زیرا دارای ساختار فایل خاص، مدل گرافیکی، جاسازی فونت و برخی عملکردهای خروجی پیچیده مانند برچسب های ساختار سند، رمزگذاری، امضای دیجیتال و فرم های قابل ویرایش است. علاوه بر این، تبدیل یک سند به PDF نیازمند چندین مرحله محاسبه است که پیچیده و زمان بر است.

در مقالات بعدی، مشکلات اصلی که ممکن است هنگام کار با اسناد در استانداردهای PDF مختلف ایجاد شود را در نظر خواهیم گرفت و گزینه هایی را برای حل آنها شرح خواهیم داد.

## کدام PDF استاندارد Aspose.Words از آن پشتیبانی می کند

اکنون Aspose.Words به کاربران امکان می دهد با فرمت های PDF/A-1، PDF/A-2 و PDF/A-4 و همچنین PDF/UA-1 کار کنند:

* PDF/A-1 دارای محدودیت های جدی مانند شفافیت است و برخی از گزینه های فشرده سازی ممنوع است
* PDF/A-2 برخی از محدودیت های PDF/A-1 مانند پشتیبانی از شفافیت و جلوه های لایه یا جاسازی فونت های OpenType را حذف می کند
* PDF/A-4 سطوح انطباق اصلاح شده را فرض می کند: انطباق معمولی PDF/A-4 معادل انطباق سطح U نسخه های قبلی است و سطح انطباق A حذف می شود
* محتوای PDF/UA-1 باید طبق ISO 32000-1: 2008 برچسب گذاری و استاندارد شود

PDF/A یک نسخه استاندارد ISO از PDF است که برای استفاده در بایگانی و ذخیره طولانی مدت اسناد الکترونیکی در نظر گرفته شده است. در عین حال، PDF/UA یکی دیگر از نسخه های استاندارد شده ISO از PDF است که برای اطمینان از دسترسی افراد دارای معلولیت که از فناوری کمکی استفاده می کنند، طراحی شده است. برای تعیین سطح انطباق با استانداردهای PDF از ویژگی [Compliance](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/compliance/) استفاده کنید. به دلیل شرایط ذخیره سازی، سند PDF/A باید همه فونت ها را جاسازی کند و رمزگذاری را غیرفعال کند، در حالی که PDF/UA فقط باید همه فونت ها را جاسازی کند.

در این بخش، نگاه دقیق تری به کار با اسناد PDF/A یا PDF/UA-1 خواهیم داشت.

## ISO مربوطه برای استانداردهای PDF

برای کسب اطلاعات بیشتر در مورد استانداردهای PDF مختلف، ISO های زیر را بررسی کنید:

* PDF 1.7 = ISO-32000-1: 2008
* PDF 2.0 = ISO-32000-2: 2020
* PDF/A-1 = ISO-19005-1: 2005
* PDF/A-2 = ISO-19005-2: 2011
* PDF/A-4 = ISO-19005-4: 2020
* PDF/UA-1 = ISO-14289: 2014

## همچنین ببینید

* [تبدیل یک سند به PDF](/words/fa/net/convert-a-document-to-pdf/)
* [نحوه ویرایش تگ های ساختار سند در Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html)
* [نحوه بررسی یا ویرایش زبان متن در Microsoft Word](https://support.microsoft.com/en-us/office/check-spelling-and-grammar-in-a-different-language-667ba67a-a202-42fd-8596-edc1fa320e00)
* [نحوه تغییر زبان متن در Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)
* [نحوه اضافه کردن متن جایگزین به شکل، تصویر، نمودار، گرافیک SmartArt یا شیء دیگر در Microsoft Word](https://support.microsoft.com/en-us/office/add-alternative-text-to-a-shape-picture-chart-smartart-graphic-or-other-object-44989b2a-903c-4d9a-b742-6a75b451c669)
* [نحوه اضافه کردن متن جایگزین و اطلاعات تکمیلی به برچسب ها](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html) (یا همان اطلاعات را در [راهنمای کاربر Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags) بخوانید)
* [نحوه تنظیم ورودی ActualText برای متن](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html)، بخش "افزودن متن واقعی برای یک عبارت کوتاه شده، فرمول یا نماد غیر یونیکد"
* [نگاشت یونیکد برای فونت های نمادین رایج Windows](http://www.alanwood.net/demos/webdings.html)
