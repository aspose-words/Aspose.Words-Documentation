---
title: گزینه های Load در Java
second_title: Aspose.Words برای Java
articleTitle: گزینه های Load
linktitle: گزینه های Load
description: "تنظیم خواص پیشرفته هنگام بارگیری یک سند با استفاده از Java برای به دست آوردن کنترل دقیق تر فرآیند."
type: docs
weight: 10
url: /fa/java/specify-load-options/
---

هنگام بارگیری یک سند، می توانید برخی از خواص پیشرفته را تنظیم کنید. Aspose.Words شما را با [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) کلاس، که اجازه می دهد کنترل دقیق تر فرآیند بار. برخی از فرمت های بار یک کلاس متناظر دارند که گزینه های بار را برای این فرمت بار نگه می دارد، به عنوان مثال، وجود دارد. [PdfLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfloadoptions/) برای بارگیری به فرمت PDF یا [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) برای بارگیری به TXT این مقاله نمونه هایی از کار با گزینه های **LoadOptions** کلاس

## Set Set Microsoft Word نسخه برای تغییر ظاهر

نسخه های مختلف Microsoft Word برنامه می تواند اسناد را به صورت متفاوتی نمایش دهد. به عنوان مثال، یک مشکل شناخته شده با اسناد OOXML مانند DOCX یا DOCX وجود دارد. DOTX با استفاده از WPS Office در چنین مواردی، عناصر نشانه گذاری اسناد ضروری ممکن است گم شده یا ممکن است به طور متفاوتی تفسیر شوند. Microsoft Word 2019 برای نشان دادن چنین سندی در مقایسه با Microsoft Word ۲۰۱۰

به طور پیش فرض Aspose.Words باز کردن اسناد با استفاده از Microsoft Word قوانین 2019 اگر شما نیاز به بارگذاری سند دارید، به نظر می رسد که در یکی از موارد قبلی اتفاق می افتد. Microsoft Word نسخه های کاربردی، شما باید به طور واضح نسخه مورد نظر را با استفاده از نسخه مورد نظر مشخص کنید. [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) مالکیت **LoadOptions** کلاس

مثال کد زیر نشان می دهد که چگونه تنظیم کنید Microsoft Word نسخه با گزینه های بارگذاری:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetMSWordVersion.java" >}}

## تنظیم ترجیحات زبان برای تغییر ظاهر

جزئیات نمایش یک سند در Microsoft Word نه تنها به نسخه برنامه و **MswVersion** ارزش مالکیت، اما همچنین در تنظیمات زبان. Microsoft Word ممکن است اسناد را به طور متفاوتی با توجه به تنظیمات محاوره ای "Office Language Preferences" نشان دهد که می تواند در "File → Options" پیدا شود. با استفاده از این گفتگو یک کاربر می تواند انتخاب کند، به عنوان مثال، زبان اولیه، اثبات زبان، زبان های نمایش و غیره. Aspose.Words فراهم می کند [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getLanguagePreferences) مالکیت به عنوان معادل این گفتگو اگر Aspose.Words خروجی متفاوت از خروجی Microsoft Word خروجی، تعیین ارزش مناسب برای **EditingLanguage** این می تواند سند خروجی را بهبود بخشد.

مثال زیر نشان می دهد که چگونه ژاپنی را به عنوان ژاپنی تنظیم کنیم **EditingLanguage**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

## استفاده از WarningCallback کنترل مشکلات در حالی که بارگذاری یک سند

برخی از اسناد ممکن است خراب شوند، شامل ورودی های نامعتبر باشند یا ویژگی هایی داشته باشند که در حال حاضر توسط آنها پشتیبانی نمی شود. Aspose.Words... اگر می خواهید در مورد مشکلاتی که در هنگام بارگیری یک سند رخ داده است بدانید، Aspose.Words فراهم می کند [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) رابط

مثال کد زیر نشان دهنده پیاده سازی **IWarningCallback** رابط:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-DocumentLoadingWarningCallback.java" >}}

برای دریافت اطلاعات در مورد تمام مشکلات در طول زمان بارگذاری، استفاده از [WarningCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getWarningCallback) مالکیت

مثال کد زیر نشان می دهد که چگونه از این ملک استفاده کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsWarningCallback.java" >}}

## استفاده از sourceLoading بازگشت به کنترل بارگذاری منابع خارجی

یک سند ممکن است شامل لینک های خارجی به تصاویر واقع در جایی در یک دیسک محلی، شبکه یا اینترنت باشد. Aspose.Words به طور خودکار این تصاویر را به یک سند بارگیری می کند، اما شرایطی وجود دارد که این فرآیند باید کنترل شود. به عنوان مثال، برای تصمیم گیری در مورد اینکه آیا واقعا باید یک تصویر خاص را بارگذاری کنیم یا شاید آن را حذف کنیم. The The The The The The [ResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getResourceLoadingCallback) گزینه بارگذاری اجازه می دهد تا شما این را کنترل کنید.

مثال کد زیر نشان دهنده پیاده سازی [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/) رابط:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-HtmlLinkedResourceLoadingCallback.java" >}}

مثال کد زیر نشان می دهد که چگونه از **ResourceLoadingCallback** مالکیت:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsResourceLoadingCallback.java" >}}

## استفاده از TempFolder برای جلوگیری از یک استثناء حافظه

Aspose.Words پشتیبانی از اسناد بسیار بزرگ است که هزاران صفحه پر از محتوای غنی دارند. بارگذاری این اسناد ممکن است نیاز به رم زیادی داشته باشد. در فرایند بارگیری، Aspose.Words حتی نیاز به حافظه بیشتری برای نگه داشتن ساختارهای موقت مورد استفاده برای تجزیه یک سند دارد.

اگر در هنگام بارگیری یک سند مشکل دارید، سعی کنید از آن استفاده کنید. [TempFolder](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getTempFolder) مالکیت در این مورد، Aspose.Words برخی از داده ها را به جای حافظه ذخیره می کند و این می تواند به جلوگیری از چنین استثناءی کمک کند.

مثال کد زیر نشان می دهد که چگونه تنظیم کنیم **TempFolder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetTempFolder.java" >}}

## گزینه Encoding را انتخاب کنید

اکثر فرمت های سند مدرن محتوای خود را در یونیکد ذخیره می کنند و نیازی به مدیریت ویژه ندارند. از سوی دیگر، هنوز اسناد بسیاری وجود دارد که از برخی از رمزگذاری قبل از برنامه نویسی استفاده می کنند و گاهی اوقات اطلاعات رمزگذاری را از دست می دهند یا حتی از اطلاعات رمزگذاری شده توسط طبیعت پشتیبانی نمی کنند. Aspose.Words سعی کنید به طور خودکار رمزگذاری مناسب را به طور پیش فرض تشخیص دهید، اما در یک مورد نادر ممکن است نیاز به استفاده از یک کدگذاری متفاوت از الگوریتم شناسایی ما داشته باشید. در این مورد، استفاده از [Encoding](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getEncoding) مالکیت برای دریافت یا تنظیم رمزگذاری

مثال کد زیر نشان می دهد که چگونه رمزگذاری را تنظیم کنیم تا رمزگذاری خودکار انتخاب شود:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadOptionsEncoding.java" >}}

## بایگانی برچسب ها

می توانید بارگیری کنید اسناد Word با یک رمز عبور رمزگذاری شده اند. برای انجام این کار، از یک بار اضافی سازنده خاص استفاده کنید که یک بار دیگر را می پذیرد. [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) جسم این شی شامل [Password](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPassword) ملک، که رشته رمز عبور را مشخص می کند.

مثال کد زیر نشان می دهد که چگونه یک سند رمزگذاری شده را با یک رمز عبور بارگیری کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenEncryptedDocument.java" >}}

اگر از قبل نمی دانید که فایل رمزگذاری شده است، می توانید از آن استفاده کنید. [FileFormatUtil](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/) کلاس، که ارائه می دهد روش های ابزار برای کار با فرمت فایل، مانند تشخیص فرمت فایل و یا تبدیل پسوند فایل به / از پسوند فرمت فایل فرمت فایل. برای تشخیص اینکه آیا سند رمزگذاری شده است و نیاز به یک رمز عبور برای باز کردن آن دارد، از آن استفاده کنید. [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted) مالکیت

مثال کد زیر نشان می دهد که چگونه OpenDocument را تأیید کنید یا نه:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-VerifyODTdocument.java" >}}
