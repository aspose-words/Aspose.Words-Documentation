---
title: تبدیل به PDF/A و PDF/UA
second_title: Aspose.Words برای Java
articleTitle: ویژگی های تبدیل به PDF/A و PDF/UAرا بیاموزید
linktitle: ویژگی های تبدیل به PDF/A و PDF/UAرا بیاموزید
description: "تبدیل به PDF/A-1, PDF/A-2, PDF/A-4 و PDF/UA با استفاده از Java. بهترین استاندارد PDF را برای تبدیل یک سند با استفاده از Java انتخاب کنید."
type: docs
weight: 25
url: /fa/java/learn-features-of-conversion-to-pdf-a-pdf-ua/
timestamp: 2024-01-31-14-23-37
---

PDF یک فرمت صفحه ثابت است که در بین کاربران بسیار محبوب است و به طور گسترده ای توسط برنامه های مختلف پشتیبانی می شود، زیرا یک سند PDF در هر دستگاه یکسان به نظر می رسد. به همین دلیل، تبدیل به PDF یک ویژگی مهم Aspose.Words است.

PDF یک فرمت پیچیده به خودی خود است، زیرا دارای یک ساختار فایل خاص، مدل گرافیکی، جاسازی فونت و برخی از قابلیت های خروجی پیچیده مانند برچسب های ساختار سند، رمزگذاری، امضای دیجیتال و فرم های قابل ویرایش است. علاوه بر این، تبدیل یک سند به PDF نیاز به چندین مرحله محاسبه دارد که پیچیده و زمان بر است.

در این بخش، ما مشکلات اصلی را که ممکن است هنگام کار با اسناد در استانداردهای مختلف PDF ایجاد شود، در نظر خواهیم گرفت و گزینه های حل آنها را توصیف خواهیم کرد.

## که PDF استاندارد Aspose.Words پشتیبانی می کند

Aspose.Words اکنون به کاربران اجازه می دهد تا با فرمت های PDF/A-1، PDF/A-2 و PDF/A-4 و همچنین PDF/UA-1کار کنند:

* PDF/A-1 محدودیت های جدی مانند شفافیت دارد و برخی از گزینه های فشرده سازی ممنوع است
* PDF/A-2 برخی از محدودیت های PDF/A-1 را از بین می برد، مانند پشتیبانی از شفافیت و جلوه های لایه ای یا جاسازی فونت های OpenType
* PDF/A-4 فرض می کند که سطوح انطباق اصلاح شده: انطباق منظم PDF/A-4 معادل انطباق سطح U نسخه های قبلی است و انطباق سطح A حذف می شود
* PDF/UA-1 محتوا باید با توجه به ISO 32000-1: 2008 برچسب گذاری و استاندارد شود

PDF/A یک ISO-نسخه استاندارد شده از PDF است که برای استفاده در بایگانی و ذخیره طولانی مدت اسناد الکترونیکی در نظر گرفته شده است. در همان زمان، PDF/UA یکی دیگر از ISO نسخه استاندارد شده PDF است که برای اطمینان از دسترسی افراد دارای معلولیت که از فناوری کمکی استفاده می کنند، طراحی شده است. برای تعیین سطح انطباق با استانداردهای PDF، از ویژگی [Compliance](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getCompliance) استفاده کنید. به دلیل شرایط ذخیره سازی، سند PDF/A باید همه فونت ها را جاسازی کند و رمزگذاری را غیرفعال کند، در حالی که PDF/UA فقط باید همه فونت ها را جاسازی کند.

در این بخش، ما نگاهی دقیق تر به کار با اسناد PDF/A یا PDF/UA-1 خواهیم داشت.

## استانداردهای مربوطه ISO برای PDF

برای کسب اطلاعات بیشتر در مورد استانداردهای مختلف PDF، ISOsزیر را بررسی کنید:

- PDF 1.7 = ISO-32000-1: 2008
- PDF 2.0 = ISO-32000-2: 2020
- PDF/A-1 = ISO-19005-1: 2005
- PDF/A-2 = ISO-19005-2: 2011
- PDF/A-4 = ISO-19005-4: 2020
- PDF/UA-1 = ISO-14289: 2014

## بایگانی برچسب برای:

* [نحوه ویرایش تگ های ساختار سند در Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html)
* [چگونه زبان متن را در Microsoft Wordبررسی یا ویرایش کنیم](https://support.microsoft.com/en-us/office/check-spelling-and-grammar-in-a-different-language-667ba67a-a202-42fd-8596-edc1fa320e00)
* [چگونه زبان متن را در Adobe Acrobatتغییر دهیم](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)
* [چگونه متن جایگزین را به یک شکل، تصویر، نمودار، SmartArt گرافیک یا سایر اشیاء در Microsoft Wordاضافه کنیم](https://support.microsoft.com/en-us/office/add-alternative-text-to-a-shape-picture-chart-smartart-graphic-or-other-object-44989b2a-903c-4d9a-b742-6a75b451c669)
* [چگونه متن جایگزین و اطلاعات مکمل را به برچسب ها اضافه کنیم](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html) (یا همان اطلاعات را در [Adobe Acrobat راهنمای کاربر](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags))
* [نحوه تنظیم ActualText ورودی برای متن](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html)، بخش" اضافه کردن متن واقعی برای یک اصطلاح کوتاه، فرمول یا نماد غیر یونیکد"
* [نقشه برداری یونیکد برای فونت های نمادین رایج Windows](http://www.alanwood.net/demos/webdings.html)
