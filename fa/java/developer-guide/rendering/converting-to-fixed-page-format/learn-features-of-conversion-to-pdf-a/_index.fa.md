---
title: تبدیل به PDF / A و PDF /UA
second_title: Aspose.Words برای Java
articleTitle: یادگیری ویژگی های تبدیل به PDF / A و PDF /UA
linktitle: یادگیری ویژگی های تبدیل به PDF / A و PDF /UA
description: "تبدیل به PDF / A-1، PDF / A-2، PDF / A-4 و PDF /UA با استفاده از Java... بهترین استاندارد PDF را برای تبدیل یک سند با استفاده از Java..."
type: docs
weight: 25
url: /fa/java/learn-features-of-conversion-to-pdf-a-pdf-ua/
timestamp: 2024-01-31-14-23-37
---

PDF یک فرمت صفحه ثابت است که در میان کاربران بسیار محبوب است و به طور گسترده توسط برنامه های مختلف پشتیبانی می شود، زیرا یک سند PDF در هر دستگاه مشابه به نظر می رسد. به همین دلیل، تبدیل به PDF یک ویژگی مهم است. Aspose.Words...

PDF یک فرمت پیچیده به خودی خود است، زیرا دارای یک ساختار فایل خاص، مدل گرافیکی، جاسازی فونت و برخی از قابلیت های خروجی پیچیده مانند تگ های ساختار سند، رمزگذاری، امضاهای دیجیتال و فرم های قابل ویرایش است. علاوه بر این، تبدیل یک سند به PDF نیازمند چندین مرحله محاسبه است که پیچیده و زمان بر است.

در این بخش، ما مشکلات اصلی را در نظر می گیریم که ممکن است هنگام کار با اسناد در استانداردهای مختلف PDF و توصیف گزینه هایی برای حل آنها بوجود آید.

## کدام PDF استاندارد استاندارد Aspose.Words پشتیبانی

Aspose.Words در حال حاضر به کاربران اجازه می دهد تا با فرمت های PDF/A-1، PDF/A-2 و PDF/A-4 و همچنین PDF/UA-1 کار کنند:

* PDF / A-1 دارای محدودیت های جدی مانند شفافیت و برخی از گزینه های فشرده سازی ممنوع است
* PDF / A-2 برخی از محدودیت های PDF / A-1، مانند حمایت از شفافیت و اثرات لایه یا جاسازی فونت OpenType را از بین می برد
* PDF / A-4 سطح انطباق اصلاح شده را فرض می کند: مطابقت منظم PDF / A-4 معادل با سطح نسخه های قبلی U انطباق است و سطح انطباق A حذف می شود
* محتوای PDF/UA-1 باید با توجه به ISO 32000-1: 2008

PDF/A یک ISO- نسخه استاندارد شده از PDF در نظر گرفته شده برای استفاده در بایگانی و ذخیره سازی طولانی مدت اسناد الکترونیکی. در عین حال، PDF/UA دیگر است. ISO نسخه استاندارد شده از PDF طراحی شده برای اطمینان از دسترسی به افراد معلول که از تکنولوژی کمکی استفاده می کنند. برای مشخص کردن سطح انطباق با استانداردهای PDF، استفاده از [Compliance](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getCompliance) مالکیت با توجه به شرایط ذخیره سازی، سند PDF / A باید تمام فونت ها را جاسازی کند و رمزگذاری را غیرفعال کند، در حالی که PDF /UA فقط باید تمام فونت ها را جاسازی کند.

در این بخش نگاهی دقیق تر به کار با اسناد PDF/A یا PDF/UA-1 خواهیم داشت.

## مناسب ISO برای PDF استانداردهای استاندارد

برای کسب اطلاعات بیشتر در مورد استانداردهای مختلف PDF، بررسی موارد زیر ISOs:

- pdf ۱.۷ = ISO32000-1: 2008
- PDF 2.0 = ISO32000-2: 2020
- PDF/A-1 = ISO- 19005-1: 2005
- PDF/A-2 = ISO- 19005-2: 2011
- PDF/A-4 = ISO- 19005- 2020
- PDF/UA-1 = ISO-14289: 2014

## همچنین ببینید

* [چگونگی ویرایش تگ های ساختار سند در Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html)
* [چگونه زبان متن را بررسی یا ویرایش کنیم Microsoft Word](https://support.microsoft.com/en-us/office/check-spelling-and-grammar-in-a-different-language-667ba67a-a202-42fd-8596-edc1fa320e00)
* [چگونه زبان متن را تغییر دهیم Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)
* [دانلود موسیقی متن فیلم Punch Punch Punch Punch Punch Punch Punch Punch، Thunder، Bastard SmartArt، var Microsoft Word](https://support.microsoft.com/en-us/office/add-alternative-text-to-a-shape-picture-chart-smartart-graphic-or-other-object-44989b2a-903c-4d9a-b742-6a75b451c669)
* [چگونه به اضافه کردن متن جایگزین و اطلاعات تکمیلی به تگ ها](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html) (یا همان اطلاعات را در آن مطالعه کنید. [Adobe Acrobat راهنمای کاربر](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)))
* [چگونه ورود واقعی متن را برای متن تنظیم کنیم](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html), "اضافه کردن متن واقعی برای یک دوره کوتاه، فرمول یا بخش غیر کد نماد"
* [دانلود بازی Britney Punch Windows دانلود موسیقی متن بازی The Punch بازی Punch Punch](http://www.alanwood.net/demos/webdings.html)
