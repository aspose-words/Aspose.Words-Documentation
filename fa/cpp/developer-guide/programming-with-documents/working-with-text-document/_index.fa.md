---
title: کار با سند متنی در C++
second_title: Aspose.Words برای C++
articleTitle: کار با سند متنی
linktitle: کار با سند متنی
description: "پیشرفته TXT پردازش اسناد، لیست ها، BiDi، سرصفحه ها/پای صفحه، با استفاده از C++."
type: docs
weight: 430
url: /fa/cpp/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

در این مقاله، ما یاد خواهیم گرفت که چه گزینه هایی می تواند برای کار با یک سند متنی از طریق Aspose.Words مفید باشد. لطفا توجه داشته باشید که این لیست کامل گزینه های موجود نیست، بلکه فقط نمونه ای از کار با برخی از آنها است.

## علامت های دو طرفه اضافه کنید

شما می توانید از ویژگی [AddBidiMarks](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_addbidimarks/) برای مشخص کردن اینکه آیا قبل از هر BiDi اجرا در هنگام صادرات در قالب متن ساده، علامت های دو طرفه اضافه کنید، استفاده کنید. Aspose.Words کاراکتر یونیکد را وارد می کند'RIGHT-TO-LEFT MARK' (U+200F) قبل از هر اجرا دو طرفه در متن. این گزینه با گزینه "Add bi-directional marks" در MS Word File Conversion dialogue مطابقت دارد وقتی به یک فرمت متن ساده صادر می کنید. توجه داشته باشید که این در گفت وگو تنها در صورتی ظاهر می شود که هر یک از زبان های ویرایش عربی یا عبری در کلمه MS اضافه شود.

مثال کد زیر نشان می دهد که چگونه از ویژگی **AddBidiMarks** استفاده کنید. مقدار پیش فرض این ویژگی *false*است:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-AddBidiMarks.cpp" >}}

## تشخیص آیتم های لیست در هنگام بارگذاری TXT

Aspose.Words می تواند آیتم لیست یک فایل متنی را به عنوان شماره لیست یا متن ساده در مدل شیء سند خود وارد کند. ویژگی [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/get_detectnumberingwithwhitespaces/) اجازه می دهد تا مشخص کند که چگونه آیتم های لیست شماره گذاری شده زمانی که یک سند از قالب متن ساده وارد می شود، شناسایی می شوند:

* اگر این گزینه به *true* تنظیم شود، از فضاهای سفید به عنوان محدوده شماره لیست نیز استفاده می شود: الگوریتم تشخیص لیست برای شماره گذاری سبک عربی (1., 1.1.2.) از هر دو علامت whitespaces و dot (".") استفاده می کند.
* اگر این گزینه به *false* تنظیم شود، الگوریتم تشخیص لیست پاراگراف های لیست را تشخیص می دهد، زمانی که اعداد لیست با علامت های نقطه ای، براکت راست یا گلوله (مانند "•", "*", "-" یا "o").

مثال کد زیر نشان می دهد که چگونه از این ویژگی استفاده کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DetectNumberingWithWhitespaces.cpp" >}}

## چگونه فضاهای پیشرو و عقب را در هنگام بارگذاری مدیریت کنیم TXT

شما می توانید روش مدیریت فضاهای پیشرو و عقب را در هنگام بارگذاری فایل TXT کنترل کنید. فضاهای پیشرو را می توان برش داد، حفظ کرد یا به شکاف تبدیل کرد و فضاهای عقب را می توان برش داد یا حفظ کرد.

مثال کد زیر نشان می دهد که چگونه فضاهای پیشرو و عقب را در هنگام وارد کردن فایل TXT کوتاه کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-HandleSpacesOptions.cpp" >}}

## صادرات هدر و فوتر در خروجی TXT

اگر می خواهید header و footer را در سند خروجی TXT صادر کنید، می توانید از ویژگی [ExportHeadersFootersMode](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptionsbase/get_exportheadersfootersmode/) استفاده کنید. این ویژگی مشخص می کند که چگونه سرصفحه ها و پای صفحه ها به فرمت متن ساده صادر می شوند.

مثال کد زیر نشان می دهد که چگونه سر و پای صفحه را به فرمت متن ساده صادر کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-ExportHeadersFootersMode.cpp" >}}

## لیست صادرات تورفتگی در خروجی TXT

Aspose.Words کلاس [TxtListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtlistindentation/) را معرفی کرد که اجازه می دهد مشخص شود که چگونه سطوح لیست در هنگام صادرات به یک فرمت متن ساده وارد می شوند. در حین کار با [TxtSaveOption](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/)، ویژگی [ListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_listindentation/) برای مشخص کردن کاراکتر مورد استفاده برای وارد کردن سطوح لیست و شمارش مشخص کردن تعداد کاراکترهای مورد استفاده به عنوان وارد کردن در هر سطح لیست ارائه شده است.

مقدار پیش فرض برای ویژگی کاراکتر "\0 " است که نشان می دهد هیچ شکاف وجود ندارد. برای ویژگی count، مقدار پیش فرض 0 است که به این معنی است که هیچ تورفتگی وجود ندارد.

### با استفاده از کاراکتر تب

مثال کد زیر نشان می دهد که چگونه سطوح لیست را با استفاده از کاراکترهای تب صادر کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseTabCharacterPerLevelForListIndentation.cpp" >}}

### استفاده از کاراکتر فضایی

مثال کد زیر نشان می دهد که چگونه سطوح لیست را با استفاده از کاراکترهای فضایی صادر کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseSpaceCharacterPerLevelForListIndentation.cpp" >}}

### با استفاده از تورفتگی پیش فرض

مثال کد زیر نشان می دهد که چگونه سطوح لیست را با استفاده از تورفتگی پیش فرض صادر کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DefaultLevelForListIndentation.cpp" >}}
