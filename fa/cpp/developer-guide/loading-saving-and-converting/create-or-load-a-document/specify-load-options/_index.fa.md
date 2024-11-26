---
title: گزینه های بار را در C++مشخص کنید
second_title: Aspose.Words برای C++
articleTitle: گزینه های بار را مشخص کنید
linktitle: گزینه های بار را مشخص کنید
description: "کنترل دقیق تر فرآیند بار."
type: docs
weight: 10
url: /fa/cpp/specify-load-options/
timestamp: 2024-01-30-16-22-34
---

هنگام بارگیری یک سند، می توانید برخی از ویژگی های پیشرفته را تنظیم کنید. Aspose.Words کلاس [LoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/) را برای شما فراهم می کند که اجازه کنترل دقیق تر فرآیند بارگذاری را می دهد. برخی از فرمت های بار دارای یک کلاس مربوطه هستند که گزینه های بار را برای این فرمت بار نگه می دارد، به عنوان مثال، [PdfLoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/pdfloadoptions/) برای بارگذاری به PDF فرمت یا [TxtLoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/) برای بارگذاری به TXT وجود دارد. این مقاله نمونه هایی از کار با گزینه های کلاس **LoadOptions** را ارائه می دهد.

## تنظیم Microsoft Word نسخه برای تغییر ظاهر

نسخه های مختلف برنامه Microsoft Word می توانند اسناد را بی تفاوت نمایش دهند. به عنوان مثال، یک مشکل شناخته شده با اسناد OOXML مانند DOCX یا DOTX با استفاده از WPS Office تولید شده است. در چنین مواردی عناصر نشانه گذاری اسناد ضروری ممکن است از دست رفته باشند یا ممکن است به طور متفاوتی تفسیر شوند که باعث می شود Microsoft Word 2019 چنین سندی را در مقایسه با Microsoft Word 2010 متفاوت نشان دهد.

به طور پیش فرض Aspose.Words اسناد را با استفاده از قوانین Microsoft Word 2019 باز می کند. اگر شما نیاز به بارگذاری اسناد دارید که در یکی از نسخه های قبلی برنامه Microsoft Word اتفاق می افتد، باید نسخه مورد نظر را با استفاده از ویژگی [MswVersion](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_mswversion/) کلاس **LoadOptions** به طور صریح مشخص کنید.

مثال کد زیر نشان می دهد که چگونه نسخه Microsoft Word را با گزینه های بارگذاری تنظیم کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-SetMSWordVersion.cpp" >}}

## تنظیمات زبان را برای تغییر ظاهر تنظیم کنید

جزئیات نمایش یک سند در Microsoft Word نه تنها به نسخه برنامه و ارزش خاصیت **MswVersion** بلکه به تنظیمات زبان نیز بستگی دارد. Microsoft Word ممکن است اسناد را بسته به تنظیمات دیالوگ "Office Language Preferences" که می تواند در "File → Options → Language"یافت شود، متفاوت نشان دهد. با استفاده از این دیالوگ یک کاربر می تواند، به عنوان مثال، زبان اصلی، زبان های اثبات، زبان های نمایش و غیره را انتخاب کند. Aspose.Words ویژگی [LanguagePreferences](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_languagepreferences/) را به عنوان معادل این دیالوگ فراهم می کند. اگر خروجی Aspose.Words با خروجی Microsoft Word متفاوت باشد، مقدار مناسب برای **EditingLanguage** را تنظیم کنید – این می تواند سند خروجی را بهبود بخشد.

مثال کد زیر نشان می دهد که چگونه ژاپنی را به عنوان **EditingLanguage**تنظیم کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cpp" >}}

## برای کنترل مشکلات هنگام بارگذاری یک سند از WarningCallback استفاده کنید

برخی از اسناد ممکن است خراب شده باشند، حاوی ورودی های نامعتبر باشند یا دارای ویژگی هایی باشند که در حال حاضر توسط Aspose.Words پشتیبانی نمی شوند. اگر می خواهید در مورد مشکلات رخ داده در هنگام بارگذاری یک سند بدانید، Aspose.Words رابط [IWarningCallback](https://reference.aspose.com/words/cpp/aspose.words/iwarningcallback/) را فراهم می کند.

مثال کد زیر پیاده سازی رابط **IWarningCallback** را نشان می دهد:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-DocumentLoadingWarningCallback.cpp" >}}

برای دریافت اطلاعات در مورد تمام مشکلات در طول زمان بارگذاری، از ویژگی `WarningCallback` استفاده کنید.

مثال کد زیر نشان می دهد که چگونه از این ویژگی استفاده کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsWarningCallback.cpp" >}}

## برای کنترل بارگذاری منابع خارجی از ResourceLoadingCallback استفاده کنید

یک سند ممکن است حاوی لینک های خارجی به تصاویر واقع در جایی در یک دیسک محلی، شبکه یا اینترنت باشد. Aspose.Words به طور خودکار چنین تصاویری را در یک سند بارگذاری می کند، اما شرایطی وجود دارد که این فرآیند باید کنترل شود. برای مثال، برای تصمیم گیری در مورد اینکه آیا ما واقعا نیاز به بارگذاری یک تصویر خاص داریم یا شاید آن را حذف کنیم. گزینه ResourceLoadingCallback load به شما امکان می دهد این را کنترل کنید.

مثال کد زیر پیاده سازی رابط IResourceLoadingCallback را نشان می دهد:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-HtmlLinkedResourceLoadingCallback.cpp" >}}

مثال کد زیر نشان می دهد که چگونه از ویژگی **ResourceLoadingCallback** استفاده کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsResourceLoadingCallback.cpp" >}}

## برای جلوگیری از استثنا حافظه از TempFolder استفاده کنید

Aspose.Words از اسناد بسیار بزرگی که هزاران صفحه پر از محتوای غنی دارند پشتیبانی می کند. بارگذاری چنین اسناد ممکن است نیاز به RAM داشته باشد. در فرآیند بارگذاری، Aspose.Words برای نگه داشتن ساختارهای موقت مورد استفاده برای تجزیه یک سند به حافظه بیشتری نیاز دارد.

اگر در هنگام بارگذاری یک سند با استثنا Out Of Memory مشکل دارید، سعی کنید از ویژگی [TempFolder](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_tempfolder/) استفاده کنید. در این حالت، Aspose.Words برخی از داده ها را به جای حافظه در فایل های موقت ذخیره می کند و این می تواند به جلوگیری از چنین استثنایی کمک کند.

مثال کد زیر نشان می دهد که چگونه **TempFolder**را تنظیم کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-SetTempFolder.cpp" >}}

## رمزگذاری را صریحا تنظیم کنید

اکثر فرمت های سند مدرن محتوای خود را در یونیکد ذخیره می کنند و نیازی به دستکاری خاصی ندارند. از سوی دیگر، هنوز اسناد زیادی وجود دارد که از کدگذاری پیش یونیکد استفاده می کنند و گاهی اوقات یا اطلاعات کدگذاری را از دست می دهند یا حتی از اطلاعات کدگذاری به طور طبیعی پشتیبانی نمی کنند. Aspose.Words سعی می کند به طور خودکار کدگذاری مناسب را به طور پیش فرض تشخیص دهد، اما در یک مورد نادر ممکن است شما نیاز به استفاده از کدگذاری متفاوت از آن داشته باشید که توسط الگوریتم تشخیص کدگذاری ما شناسایی شده است. در این مورد، از ویژگی [Encoding](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_encoding/) برای دریافت یا تنظیم کدگذاری استفاده کنید.

مثال کد زیر نشان می دهد که چگونه کدگذاری را برای رد کردن کدگذاری به طور خودکار انتخاب شده تنظیم کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsEncoding.cpp" >}}

## اسناد رمزگذاری شده را بارگیری کنید

شما می توانید اسناد ورد رمزگذاری شده را با یک رمز عبور بارگذاری کنید. برای انجام این کار، از یک اضافه بار سازنده خاص استفاده کنید که یک شی [LoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/) را می پذیرد. این شی شامل ویژگی [Password](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_password/) است که رشته رمز عبور را مشخص می کند.

مثال کد زیر نشان می دهد که چگونه یک سند رمزگذاری شده با رمز عبور را بارگذاری کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-OpenEncryptedDocument-OpenEncryptedDocument.cpp" >}}

اگر از قبل نمی دانید که آیا فایل رمزگذاری شده است، می توانید از کلاس [FileFormatUtil](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/) استفاده کنید که روش های کاربردی برای کار با فرمت های فایل را فراهم می کند، مانند تشخیص فرمت فایل یا تبدیل پسوند فایل به/از شمارش فرمت فایل. برای تشخیص رمزگذاری سند و نیاز به رمز عبور برای باز کردن آن، از ویژگی `IsEncrypted` استفاده کنید.

مثال کد زیر نشان می دهد که چگونه OpenDocument را تأیید کنید یا رمزگذاری شده است یا نه:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-VerifyODTdocument.cpp" >}}
