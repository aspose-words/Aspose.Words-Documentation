---
title: Load Options را در C# مشخص کنید
second_title: Aspose.Words برای .NET
articleTitle: Load Options را مشخص کنید
linktitle: Load Options را مشخص کنید
description: "با استفاده از C# فرآیند بارگذاری را با دقت بیشتری کنترل کنید."
type: docs
weight: 10
url: /fa/net/specify-load-options/
timestamp: 2024-07-09-19-00-42
---

هنگام بارگیری یک سند، می توانید برخی از ویژگی های پیشرفته را تنظیم کنید. Aspose.Words کلاس [LoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/) را در اختیار شما قرار می دهد که امکان کنترل دقیق تر فرآیند بارگذاری را فراهم می کند. برخی از فرمت‌های بارگذاری یک کلاس مربوطه دارند که گزینه‌های بارگذاری را برای این فرمت بارگذاری نگه می‌دارد، به عنوان مثال، [PdfLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/) برای بارگیری در قالب PDF یا [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) برای بارگیری در TXT وجود دارد. در این مقاله نمونه هایی از کار با گزینه های کلاس **LoadOptions** ارائه شده است.

## نسخه Microsoft Word را برای تغییر ظاهر تنظیم کنید

نسخه های مختلف برنامه Microsoft Word می توانند اسناد را به صورت متفاوتی نمایش دهند. به عنوان مثال، یک مشکل شناخته شده در مورد اسناد OOXML مانند DOCX یا DOTX که با استفاده از WPS Office تولید می شوند وجود دارد. در چنین مواردی ممکن است عناصر نشانه‌گذاری سند ضروری وجود نداشته باشند یا ممکن است متفاوت تفسیر شوند که باعث می‌شود Microsoft Word 2019 چنین سندی را در مقایسه با Microsoft Word 2010 متفاوت نشان دهد.

به طور پیش فرض Aspose.Words اسناد را با استفاده از قوانین Microsoft Word 2019 باز می کند. اگر نیاز دارید تا بارگذاری سند همانطور که در یکی از نسخه های قبلی برنامه Microsoft Word اتفاق می افتاد ظاهر شود، باید به صراحت نسخه مورد نظر را با استفاده از ویژگی [MswVersion](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/mswversion/) کلاس **LoadOptions** مشخص کنید.

مثال کد زیر نحوه تنظیم نسخه Microsoft Word را با گزینه های بارگذاری نشان می دهد:

{{< gist "aspose-words-gists" "62b066455ff6af0e8727e3fddae47aee" "load-docx-with-msword-version.cs" >}}

## تنظیمات زبان را برای تغییر ظاهر تنظیم کنید

جزئیات نمایش یک سند در Microsoft Word نه تنها به نسخه برنامه و مقدار ویژگی **MswVersion** بلکه به تنظیمات زبان نیز بستگی دارد. Microsoft Word ممکن است بسته به تنظیمات گفتگوی "Office Language Preferences" که در "File → Options → Language" یافت می شود، اسناد را متفاوت نشان دهد. با استفاده از این گفتگو، کاربر می تواند به عنوان مثال، زبان اصلی، زبان های تصحیح، زبان های نمایش و غیره را انتخاب کند. Aspose.Words ویژگی [LanguagePreferences](https://reference.aspose.com/words/net/aspose.words.loading/languagepreferences/) را به عنوان معادل این گفتگو ارائه می دهد. اگر خروجی Aspose.Words با خروجی Microsoft Word متفاوت است، مقدار مناسب را برای **EditingLanguage** تنظیم کنید - این می تواند سند خروجی را بهبود بخشد.

مثال کد زیر نحوه تنظیم ژاپنی به عنوان **EditingLanguage** را نشان می دهد:

{{< gist "aspose-words-gists" "5d49772a182a61eac0dcb9c13c98bc6e" "load-docx-with-japanese-as-editing-language.cs" >}}

## از WarningCallback برای کنترل مشکلات هنگام بارگیری یک سند استفاده کنید

برخی از اسناد ممکن است خراب شده باشند، حاوی ورودی های نامعتبر باشند، یا دارای ویژگی هایی باشند که در حال حاضر توسط Aspose.Words پشتیبانی نمی شوند. اگر می خواهید در مورد مشکلاتی که هنگام بارگیری یک سند رخ داده است بدانید، Aspose.Words رابط [IWarningCallback](https://reference.aspose.com/words/net/aspose.words/iwarningcallback/) را ارائه می دهد.

مثال کد زیر اجرای رابط **IWarningCallback** را نشان می دهد:

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "document-loading-warning-callback.cs" >}}

برای دریافت اطلاعات در مورد تمام مشکلات در طول زمان بارگذاری، از ویژگی [WarningCallback](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/warningcallback/) استفاده کنید.

مثال کد زیر نحوه استفاده از این ویژگی را نشان می دهد:

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "load-docx-with-warning-callback.cs" >}}

## از ResourceLoadingCallback برای کنترل بارگیری منابع خارجی استفاده کنید

یک سند ممکن است حاوی پیوندهای خارجی به تصاویری باشد که در جایی روی دیسک محلی، شبکه یا اینترنت قرار دارند. Aspose.Words به طور خودکار چنین تصاویری را در یک سند بارگیری می کند، اما شرایطی وجود دارد که این فرآیند باید کنترل شود. به عنوان مثال، برای تصمیم گیری در مورد اینکه آیا واقعاً نیاز به بارگذاری یک تصویر خاص داریم یا شاید از آن بگذریم. گزینه [ResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/resourceloadingcallback/) load به شما امکان می دهد این را کنترل کنید.

مثال کد زیر اجرای رابط [IResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/iresourceloadingcallback/) را نشان می دهد:

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "html-linked-resource-loading-callback.cs" >}}

مثال کد زیر نحوه استفاده از ویژگی **ResourceLoadingCallback** را نشان می دهد:

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "load-html-with-resource-loading-callback.cs" >}}

## از TempFolder برای جلوگیری از استثناء حافظه استفاده کنید

Aspose.Words از اسناد بسیار بزرگی که هزاران صفحه پر از محتوای غنی دارند پشتیبانی می کند. بارگیری چنین اسنادی ممکن است به RAM زیادی نیاز داشته باشد. در فرآیند بارگذاری، Aspose.Words به حافظه بیشتری برای نگهداری ساختارهای موقت مورد استفاده برای تجزیه یک سند نیاز دارد.

اگر در حین بارگیری سند با استثنای خارج از حافظه مشکل دارید، سعی کنید از ویژگی [TempFolder](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/tempfolder/) استفاده کنید. در این حالت، Aspose.Words برخی از داده ها را به جای حافظه در فایل های موقت ذخیره می کند و این می تواند به جلوگیری از چنین استثنایی کمک کند.

مثال کد زیر نحوه تنظیم **TempFolder** را نشان می دهد:

{{< gist "aspose-words-gists" "80fb635124a6afc0e75b9f17d1eab40c" "load-docx-using-temp-folder.cs" >}}

## رمزگذاری را به طور واضح تنظیم کنید

اکثر فرمت های اسناد مدرن محتوای خود را در یونیکد ذخیره می کنند و نیازی به رسیدگی خاصی ندارند. از سوی دیگر، هنوز اسناد بسیاری وجود دارند که از برخی رمزگذاری های پیش از یونیکد استفاده می کنند و گاهی اوقات یا اطلاعات رمزگذاری را از دست می دهند یا حتی طبیعتاً از اطلاعات رمزگذاری پشتیبانی نمی کنند. Aspose.Words به طور پیش‌فرض سعی می‌کند رمزگذاری مناسب را به‌طور خودکار شناسایی کند، اما در موارد نادر ممکن است نیاز داشته باشید از رمزگذاری متفاوت از رمزگذاری شناسایی‌شده توسط الگوریتم تشخیص رمزگذاری ما استفاده کنید. در این مورد، از ویژگی [Encoding](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/encoding/) برای دریافت یا تنظیم رمزگذاری استفاده کنید.

مثال کد زیر نشان می دهد که چگونه می توان رمزگذاری را به گونه ای تنظیم کرد که رمزگذاری انتخاب شده به طور خودکار لغو شود:

{{< gist "aspose-words-gists" "507181f2c99ba13012c441f1c436d9a7" "load-txt-using-encoding.cs" >}}

## بارگذاری اسناد رمزگذاری شده

می توانید اسناد Word را که با رمز عبور رمزگذاری شده اند بارگیری کنید. برای انجام این کار، از یک اضافه بار سازنده ویژه استفاده کنید که یک شی [LoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/) را می پذیرد. این شی حاوی ویژگی [Password](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/password/) است که رشته رمز عبور را مشخص می کند.

مثال کد زیر نحوه بارگیری یک سند رمزگذاری شده با رمز عبور را نشان می دهد:

{{< gist "aspose-words-gists" "5b929b4208996737657de94443bc2852" "load-encrypted-docx.cs" >}}

اگر از قبل نمی‌دانید که فایل رمزگذاری شده است، می‌توانید از کلاس [FileFormatUtil](https://reference.aspose.com/words/net/aspose.words/fileformatutil/) استفاده کنید، که روش‌های مفیدی را برای کار با فرمت‌های فایل ارائه می‌کند، مانند تشخیص فرمت فایل یا تبدیل پسوند فایل به/از شمارش فرمت فایل. برای تشخیص اینکه آیا سند رمزگذاری شده است و برای باز کردن آن نیاز به رمز عبور دارد، از ویژگی [IsEncrypted](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/isencrypted/) استفاده کنید.

مثال کد زیر نشان می دهد که چگونه می توان OpenDocument رمزگذاری شده یا غیر رمزگذاری شده را تأیید کرد:

{{< gist "aspose-words-gists" "935e41f0f59c7d8bd8a082ccc14f6b84" "verify-odt-is-encrypted.cs" >}}
