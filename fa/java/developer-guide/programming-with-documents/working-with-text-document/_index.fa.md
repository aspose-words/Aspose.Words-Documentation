---
title: کار با Text Document Java
second_title: Aspose.Words برای Java
articleTitle: کار با Text Document
linktitle: کار با Text Document
description: "پیشرفته TXT پردازش اسناد، لیست ها، BiDi، headers / Footer، با استفاده از Java..."
type: docs
weight: 430
url: /fa/java/working-with-text-document/
---

در این مقاله، ما یاد خواهیم گرفت که چه گزینه هایی می تواند برای کار با یک سند متنی از طریق یک سند متنی مفید باشد. Aspose.Words... لطفا توجه داشته باشید که این یک لیست کامل از گزینه های موجود نیست، بلکه تنها یک نمونه از کار با برخی از آنها است.

## اضافه کردن Bi-Directional مارک ها

می توانید از آن استفاده کنید [AddBidiMarks](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getAddBidiMarks) اموال برای مشخص کردن اینکه آیا به اضافه کردن علامت های دو جهت قبل از هر BiDi در هنگام صادرات در فرمت متن ساده اجرا می شود. Aspose.Words کاراکتر یونیکد را قبل از هر دو جهت در متن وارد کنید. این گزینه با گزینه "اضافه کردن علامت دو طرفه" در گفتگو تبدیل فایل MS Word مطابقت دارد، زمانی که شما به یک فرمت متن ساده صادرات می کنید. توجه داشته باشید که تنها در صورتی به نظر می رسد که هر یک از زبان های ویرایش عربی یا عبری در MS Word اضافه شوند.

مثال کد زیر نشان می دهد که چگونه از `TxtSaveOptions.AddBidiMarks` مالکیت ارزش پیش فرض این ملک، *true*:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-AddBidiMarks.java" >}}

## شناسایی آیتم های لیست در هنگام بارگذاری TXT

Aspose.Words می تواند لیست یک فایل متنی را به عنوان شماره لیست یا متن ساده در مدل سند خود وارد کند. The The The The The The [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectNumberingWithWhitespaces) ملک اجازه می دهد تا مشخص کند که چگونه موارد لیست شماره زمانی که یک سند از فرمت متن ساده وارد می شود، شناسایی می شوند:

* اگر این گزینه برای *true*, فضاهای سفید نیز به عنوان لیست محدود کنندگان استفاده می شود: الگوریتم تشخیص لیست برای شماره بندی سبک عربی (1.1.2) از هر دو فضای سفید و نمادهای dot (").
* اگر این گزینه برای *false*, الگوریتم تشخیص لیست پاراگراف های لیست را تشخیص می دهد، زمانی که اعداد لیست با دو نقطه، براکت راست یا نمادهای گلوله (مانند ")، "،"، "-" یا "o") به پایان می رسد.

مثال کد زیر نشان می دهد که چگونه از این ملک استفاده کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DetectNumberingWithWhitespaces.java" >}}

## مدیریت فضاهای هدایت و مسیریابی در هنگام بارگذاری TXT

شما می توانید راه مدیریت فضاهای پیشرو و ردیابی در هنگام بارگیری فایل های TXT را کنترل کنید. فضاهای پیشرو را می توان تمیز، حفظ و یا تبدیل به فضاهای بی تحرک و پیگیری می توان تعمیر و نگهداری کرد.

مثال کد داده شده در زیر نشان می دهد که چگونه فضاهای پیشرو را در هنگام واردات فایل TXT برش دهید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-HandleSpacesOptions.java" >}}

## مستند Detect Text Direction

Aspose.Words فراهم می کند [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDocumentDirection) مالکیت در [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) کلاس برای تشخیص جهت متن (RTL / LTR) در سند. این ملک تنظیم یا دریافت دستورالعمل های متن سند ارائه شده در [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/documentdirection/) تکرار ارزش پیش فرض به سمت راست گذاشته می شود.

مثال کد زیر نشان می دهد که چگونه جهت متن سند را هنگام واردات فایل TXT تشخیص دهید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DocumentTextDirection.java" >}}

## مدیر صادرات و Footer in Output TXT File

اگر می خواهید هدر و پا را در سند TXT خروجی صادر کنید، می توانید از آن استفاده کنید. [ExportHeadersFootersMode](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getExportHeadersFootersMode) مالکیت این ملک مشخص می کند که چگونه سر و پا به فرمت متن ساده صادر می شود.

مثال کد زیر نشان می دهد که چگونه هدرها و عابران را به فرمت متن ساده صادر کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-ExportHeadersFootersMode.java" >}}

## ثبت نام در خروجی TXT

Aspose.Words معرفی [TxtListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtlistindentation/) کلاس که اجازه می دهد تا مشخص کنید که چگونه سطح لیست در هنگام صادرات به یک فرمت متن ساده، بی نظیر است. در حالی که با [TxtSaveOption](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/), The the the [ListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getListIndentation) اموال برای مشخص کردن شخصیت برای سطوح ثبت نام و شمارش مشخص می کند که چه تعداد کاراکتر برای استفاده به عنوان indentation در هر سطح لیست استفاده می شود.

ارزش پیش فرض برای مالکیت شخصیت "0" است که نشان می دهد هیچ مدرکی وجود ندارد. برای شمارش اموال، ارزش پیش فرض 0 است که به معنی عدم تحرک است.

### استفاده از Tab Character

مثال کد زیر نشان می دهد که چگونه سطح لیست را با استفاده از کاراکترهای برگه ای صادر کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useTabCharacterPerLevelForListIndentation.java" >}}

### استفاده از ویژگی های فضایی

مثال کد زیر نشان می دهد که چگونه سطح لیست را با استفاده از کاراکترهای فضایی صادر کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useSpaceCharacterPerLevelForListIndentation.java" >}}

### استفاده از Indentation

مثال کد زیر نشان می دهد که چگونه سطح لیست را با استفاده از عدم تحرک پیش فرض صادر کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-defaultLevelForListIndentation.java" >}}
