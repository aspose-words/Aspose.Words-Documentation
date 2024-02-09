---
title: کار با سند متنی در C#
second_title: Aspose.Words برای .NET
articleTitle: کار با سند متنی
linktitle: کار با سند متنی
description: "پردازش پیشرفته سند TXT، لیست ها، BiDi، سرصفحه/پانویس، با استفاده از C#."
type: docs
weight: 430
url: /fa/net/working-with-text-document/
---

در این مقاله می آموزیم که چه گزینه هایی می توانند برای کار با یک سند متنی از طریق Aspose.Words مفید باشند. لطفاً توجه داشته باشید که این لیست کاملی از گزینه های موجود نیست، بلکه تنها نمونه ای از کار با برخی از آنها است.

## علامت های دو جهته را اضافه کنید

می‌توانید از ویژگی [AddBidiMarks](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/addbidimarks/) برای تعیین اینکه آیا علامت‌های دوطرفه قبل از هر اجرا BiDi هنگام صادرات در قالب متن ساده اضافه شود یا خیر استفاده کنید. Aspose.Words نویسه یونیکد "علامت راست به چپ" (U+200F) را قبل از هر اجرای دو جهته در متن درج می کند. این گزینه مربوط به گزینه "افزودن علائم دو جهته" در گفتگوی تبدیل فایل MS Word هنگام صادرات به یک قالب متن ساده است. توجه داشته باشید که تنها در صورتی در گفتگو ظاهر می شود که یکی از زبان های ویرایش عربی یا عبری در MS Word اضافه شود.

مثال کد زیر نحوه استفاده از ویژگی **AddBidiMarks** را نشان می دهد. مقدار پیش فرض این ویژگی *false* است:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-AddBidiMarks.cs" >}}

## شناسایی موارد لیست در حین بارگذاری TXT

Aspose.Words می‌تواند مورد فهرست یک فایل متنی را به عنوان شماره فهرست یا متن ساده در مدل شی سند خود وارد کند. ویژگی [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/detectnumberingwithwhitespaces/) اجازه می دهد تا مشخص کنید که چگونه موارد لیست شماره گذاری شده هنگام وارد شدن یک سند از قالب متن ساده شناسایی شوند:

* اگر این گزینه روی *true* تنظیم شده باشد، از فضاهای خالی به عنوان جداکننده اعداد لیست نیز استفاده می شود: الگوریتم تشخیص لیست برای شماره گذاری سبک عربی (1., 1.1.2.) از هر دو علامت فاصله و علامت نقطه (".") استفاده می کند.

* اگر این گزینه روی *false* تنظیم شده باشد، الگوریتم تشخیص لیست پاراگراف های لیست را شناسایی می کند، زمانی که اعداد لیست با علامت های نقطه، براکت راست یا گلوله (مانند "•"، "*"، "-" یا "o") خاتمه می یابند.

مثال کد زیر نحوه استفاده از این ویژگی را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DetectNumberingWithWhitespaces.cs" >}}

## در حین بارگذاری TXT، فضاهای پیشرو و انتهایی را مدیریت کنید

شما می توانید نحوه مدیریت فضاهای پیشرو و انتهایی را در حین بارگذاری فایل TXT کنترل کنید. فضاهای پیشرو را می توان تراش داد، حفظ کرد یا به تورفتگی تبدیل کرد و فضاهای انتهایی را می توان کوتاه یا حفظ کرد.

مثال کد زیر نشان می دهد که چگونه می توان فضاهای اصلی و انتهایی را هنگام وارد کردن فایل TXT برش داد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-HandleSpacesOptions.cs" >}}

## تشخیص جهت متن سند

Aspose.Words ویژگی [DocumentDirection](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/documentdirection/) را در کلاس [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) برای تشخیص جهت متن (RTL / LTR) در سند فراهم می کند. این ویژگی دستورالعمل های متن سند ارائه شده در شمارش [DocumentDirection](https://reference.aspose.com/words/net/aspose.words.loading/documentdirection/) را تنظیم یا دریافت می کند. مقدار پیش فرض به *right* واگذار می شود.

مثال کد زیر نحوه تشخیص جهت متن سند را در هنگام وارد کردن فایل TXT نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DocumentTextDirection.cs" >}}

## هدر و پاورقی را در خروجی TXT صادر کنید

اگر می خواهید سرصفحه و پاورقی را در سند خروجی TXT صادر کنید، می توانید از ویژگی [ExportHeadersFootersMode](https://reference.aspose.com/words/net/aspose.words.saving/exportheadersfootersmode/) استفاده کنید. این ویژگی نحوه صادرات سرصفحه ها و پاورقی ها به قالب متن ساده را مشخص می کند.

مثال کد زیر نحوه صادر کردن سرصفحه ها و پاورقی ها را به قالب متن ساده نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-ExportHeadersFootersMode.cs" >}}

## صادرات تورفتگی لیست در خروجی TXT

Aspose.Words کلاس [TxtListIndentation](https://reference.aspose.com/words/net/aspose.words.saving/txtlistindentation/) را معرفی کرد که امکان تعیین نحوه تورفتگی سطوح لیست را در حین صادرات به قالب متن ساده فراهم می کند. در حین کار با [TxtSaveOption](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/)، ویژگی [ListIndentation](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/listindentation/) برای تعیین کاراکتر مورد استفاده برای تورفتگی سطوح لیست و تعداد کاراکترها به عنوان تورفتگی در هر سطح فهرست ارائه می شود.

مقدار پیش فرض ویژگی کاراکتر '\0' است که نشان می دهد هیچ تورفتگی وجود ندارد. برای ویژگی count، مقدار پیش‌فرض 0 است که به معنای عدم تورفتگی است.

### استفاده از کاراکتر Tab

مثال کد زیر نحوه صادرات سطوح لیست را با استفاده از کاراکترهای برگه نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseTabCharacterPerLevelForListIndentation.cs" >}}

### استفاده از کاراکتر فضایی

مثال کد زیر نحوه صادرات سطوح لیست را با استفاده از کاراکترهای فاصله نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseSpaceCharacterPerLevelForListIndentation.cs" >}}

### استفاده از تورفتگی پیش فرض

مثال کد زیر نحوه صادرات سطوح لیست را با استفاده از تورفتگی پیش فرض نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DefaultLevelForListIndentation.cs" >}}
