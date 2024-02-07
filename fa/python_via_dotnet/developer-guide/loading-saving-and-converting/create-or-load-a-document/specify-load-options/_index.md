---
title: Load Options را در Python مشخص کنید
second_title: Aspose.Words برای Python via .NET
articleTitle: Load Options را مشخص کنید
linktitle: Load Options را مشخص کنید
description: "با استفاده از Python، فرآیند بارگذاری را با دقت بیشتری کنترل کنید."
type: docs
weight: 10
url: /fa/python-net/specify-load-options/
---

هنگام بارگیری یک سند، می توانید برخی از ویژگی های پیشرفته را تنظیم کنید. Aspose.Words کلاس [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) را در اختیار شما قرار می دهد که امکان کنترل دقیق تر فرآیند بارگذاری را فراهم می کند. برخی از فرمت‌های بارگذاری یک کلاس مربوطه دارند که گزینه‌های بارگذاری را برای این فرمت بارگذاری نگه می‌دارد، به عنوان مثال، [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/) برای بارگیری در قالب PDF یا [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) برای بارگیری در TXT وجود دارد. این مقاله نمونه هایی از کار با گزینه های کلاس [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) را ارائه می دهد.

## نسخه Microsoft Word را برای تغییر ظاهر تنظیم کنید

نسخه های مختلف برنامه Microsoft Word می توانند اسناد را به صورت متفاوتی نمایش دهند. به عنوان مثال، یک مشکل شناخته شده در مورد اسناد OOXML مانند DOCX یا DOTX که با استفاده از WPS Office تولید می شوند وجود دارد. در چنین مواردی ممکن است عناصر نشانه‌گذاری سند ضروری وجود نداشته باشند یا ممکن است متفاوت تفسیر شوند که باعث می‌شود Microsoft Word 2019 چنین سندی را در مقایسه با Microsoft Word 2010 متفاوت نشان دهد.

به طور پیش فرض Aspose.Words اسناد را با استفاده از قوانین Microsoft Word 2019 باز می کند. اگر نیاز دارید تا بارگذاری سند همانطور که در یکی از نسخه های قبلی برنامه Microsoft Word اتفاق می افتاد ظاهر شود، باید به صراحت نسخه مورد نظر را با استفاده از ویژگی [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) کلاس [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) مشخص کنید.

مثال کد زیر نحوه تنظیم نسخه Microsoft Word را با گزینه های بارگذاری نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-SetMSWordVersion.py" >}}

## تنظیمات زبان را برای تغییر ظاهر تنظیم کنید

جزئیات نمایش یک سند در Microsoft Word نه تنها به نسخه برنامه و مقدار ویژگی [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) بلکه به تنظیمات زبان نیز بستگی دارد. Microsoft Word ممکن است بسته به تنظیمات گفتگوی "Office Language Preferences" که در "File → Options → Language" یافت می شود، اسناد را متفاوت نشان دهد. با استفاده از این گفتگو، کاربر می تواند به عنوان مثال، زبان اصلی، زبان های تصحیح، زبان های نمایش و غیره را انتخاب کند. Aspose.Words ویژگی [language_preferences](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/language_preferences/) را به عنوان معادل این گفتگو ارائه می دهد. اگر خروجی Aspose.Words با خروجی Microsoft Word متفاوت است، مقدار مناسب را برای [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/) تنظیم کنید - این می تواند سند خروجی را بهبود بخشد.

مثال کد زیر نحوه تنظیم ژاپنی به عنوان [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/) را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-AddJapaneseAsEditinglanguages.py" >}}

## از TempFolder برای جلوگیری از استثناء حافظه استفاده کنید

Aspose.Words از اسناد بسیار بزرگی که هزاران صفحه پر از محتوای غنی دارند پشتیبانی می کند. بارگیری چنین اسنادی ممکن است به RAM زیادی نیاز داشته باشد. در فرآیند بارگذاری، Aspose.Words به حافظه بیشتری برای نگهداری ساختارهای موقت مورد استفاده برای تجزیه یک سند نیاز دارد.

اگر در حین بارگذاری سند با استثنای خارج از حافظه مشکل دارید، سعی کنید از ویژگی [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/) استفاده کنید. در این حالت، Aspose.Words برخی از داده ها را به جای حافظه در فایل های موقت ذخیره می کند و این می تواند به جلوگیری از چنین استثنایی کمک کند.

مثال کد زیر نحوه تنظیم [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/) را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UseTempFolder.py" >}}

## رمزگذاری را به طور واضح تنظیم کنید

اکثر فرمت های اسناد مدرن محتوای خود را در یونیکد ذخیره می کنند و نیازی به رسیدگی خاصی ندارند. از سوی دیگر، هنوز اسناد بسیاری وجود دارند که از برخی رمزگذاری های پیش از یونیکد استفاده می کنند و گاهی اوقات یا اطلاعات رمزگذاری را از دست می دهند یا حتی طبیعتاً از اطلاعات رمزگذاری پشتیبانی نمی کنند. Aspose.Words به طور پیش‌فرض سعی می‌کند رمزگذاری مناسب را به‌طور خودکار شناسایی کند، اما در موارد نادر ممکن است نیاز داشته باشید از رمزگذاری متفاوت از رمزگذاری شناسایی‌شده توسط الگوریتم تشخیص رمزگذاری ما استفاده کنید. در این مورد، از ویژگی [encoding](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/encoding/) برای دریافت یا تنظیم رمزگذاری استفاده کنید.

مثال کد زیر نشان می دهد که چگونه می توان رمزگذاری را به گونه ای تنظیم کرد که رمزگذاری انتخاب شده به طور خودکار لغو شود:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-LoadWithEncoding.py" >}}

## بارگذاری اسناد رمزگذاری شده

می توانید اسناد Word را که با رمز عبور رمزگذاری شده اند بارگیری کنید. برای انجام این کار، از یک اضافه بار سازنده ویژه استفاده کنید که یک شی [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) را می پذیرد. این شی حاوی ویژگی [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/) است که رشته رمز عبور را مشخص می کند.

مثال کد زیر نحوه بارگیری یک سند رمزگذاری شده با رمز عبور را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-OpenEncryptedDocument.py" >}}

اگر از قبل نمی‌دانید که فایل رمزگذاری شده است یا خیر، می‌توانید از کلاس [FileFormatUtil](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/) استفاده کنید، که روش‌های مفیدی را برای کار با فرمت‌های فایل ارائه می‌دهد، مانند تشخیص فرمت فایل یا تبدیل پسوند فایل به/از شمارش فرمت فایل. برای تشخیص اینکه آیا سند رمزگذاری شده است و برای باز کردن آن نیاز به رمز عبور دارد، از ویژگی [is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/) استفاده کنید.

مثال کد زیر نشان می دهد که چگونه می توان سند رمزگذاری شده یا غیر رمزگذاری شده را تأیید کرد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-VerifyEncryptedDocument.py" >}}
