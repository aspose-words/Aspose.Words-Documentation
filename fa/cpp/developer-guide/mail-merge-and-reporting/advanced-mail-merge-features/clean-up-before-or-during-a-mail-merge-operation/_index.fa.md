---
title: تمیز کردن قبل یا در طول عملیات Mail Merge
second_title: Aspose.Words برای C++
articleTitle: تمیز کردن قبل یا در طول عملیات Mail Merge
linktitle: تمیز کردن قبل یا در طول عملیات Mail Merge
type: docs
description: "قبل از انجام عملیات mail merge یا حذف مناطق استفاده نشده در طول عملیات mail merge، گزینه های مختلف تمیز کردن و حذف مانند حذف زمینه های ادغام را اعمال کنید."
keywords: "cleanup options mail merge c#"
weight: 10
url: /fa/cpp/clean-up-before-or-during-mail-merge/
---

Aspose.Words به شما اجازه می دهد تا گزینه های مختلف تمیز کردن و حذف مانند حذف فیلد های ادغام را قبل از انجام عملیات mail merge یا حذف مناطق استفاده نشده در طول عملیات mail merge اعمال کنید. در این بخش نحوه حذف فیلدهای ادغام شده و نحوه تنظیم گزینه حذف توضیح داده می شود.

## حذف فیلدهای ادغام شده

وقتی از یک قالب طولانی استفاده می کنید که توسط شخص دیگری ایجاد شده است، ممکن است بخواهید قبل از انجام یک عملیات mail merge، تمام زمینه های ادغام را که در آن قالب وجود دارد حذف کنید. شما می توانید از روش [DeleteFields](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/deletefields/) استفاده کنید اگر می خواهید تمام فیلد های ادغام را از یک سند بدون اجرای عملیات mail merge حذف کنید. این روش تحت تاثیر هیچ گزینه ای برای حذف ویژگی [CleanupOptions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_cleanupoptions/) قرار نمی گیرد و اجرای آن فقط زمینه های ادغام شده را حذف می کند، نه هیچ فیلد حاوی یا پاراگراف های خالی.

مثال کد زیر نشان می دهد که چگونه تمام فیلد های ادغام را از قالب خود بدون اجرای یک عملیات mail merge حذف کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-DeleteFields.h" >}}

## گزینه `Removing` را تنظیم کنید

Aspose.Words شما را قادر می سازد تا زمینه ها، مناطق و پاراگراف های ادغام نشده را از یک قالب در طول عملیات mail merge با استفاده از گزینه های حذف حذف کنید.

از ویژگی **CleanupOptions** همراه با شمارش [MailMergeCleanupOptions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergecleanupoptions/) برای تنظیم گزینه حذف استفاده کنید. با انتخاب گزینه های زیر مشخص کنید که کدام آیتم ها را می خواهید حذف کنید (می توانید بیش از یک مورد را با هم ترکیب کنید):

* پاراگراف های خالی را حذف کنید
* حذف مناطق استفاده نشده
* حذف زمینه های استفاده نشده
* حذف زمینه های حاوی
* حذف زمینه های استاتیک
* حذف ردیف های خالی جدول

شما می توانید یک فیلد ادغام را در یکی از شرایط زیر به عنوان ادغام نشده در نظر بگیرید:

1. اگر فیلد ادغام در منبع داده یک ستون یا یک فیلد نقشه برداری نداشته باشد.
2. اگر فیلد ادغام در منبع داده شامل یک فیلد نقشه برداری باشد اما داده ها صفر باشند.

{{% alert color="primary" %}}

اگر شما داده ها را با استفاده از منابع داده جداگانه ادغام می کنید، گزینه های حذف شده تنها با آخرین فراخوان روش اجرای mail merge فعال می شوند.

{{% /alert %}}

### پاراگراف های خالی را حذف کنید

یک پاراگراف که فقط شامل فیلد های ادغام است خالی خواهد بود وقتی که فرآیند mail merge تمام فیلد های ادغام خود را به عنوان ادغام نشده حذف کند. این پاراگراف های خالی می توانند فضای ناخواسته ای را اضافه کنند و تغییر دهند که گزارش تولید شده چگونه خواهد بود. شما ممکن است با دو موقعیت با پاراگراف در طول یک عملیات mail merge روبرو شوید:

1. فیلد mail merge با داده های خالی ادغام خواهد شد.
2. فیلد ادغام استفاده نشده و حذف خواهد شد.

در هر دو حالت گزینه **RemoveEmptyParagraphs** به طور خودکار پاراگراف های خالی را از سند حذف می کند. همچنین، اگر بقیه پاراگراف خالی باشد، فیلد های ادغام `TableStart` و TableEnd را حذف می کند.

مثال کد زیر نشان می دهد که چگونه پاراگراف های خالی را حذف کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Mail Merge and Reporting-Working with CleanupOptions-RemoveEmptyParagraphs.h" >}}

{{% alert color="primary" %}}

شما می توانید فایل نمونه این مثال را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### حذف زمینه های استفاده نشده

Aspose.Words به شما اجازه می دهد تا هر فیلد mail merge استفاده نشده را با اختصاص پرچم **RemoveUnusedFields** به **CleanupOptions** حذف کنید. این گزینه فیلد های ادغام را که داده های مربوطه را در منبع داده ندارند حذف می کند.

مثال کد زیر نشان می دهد که چگونه هر فیلد ادغام استفاده نشده را از یک سند به طور خودکار در طول عملیات mail merge حذف کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveUnusedFields.cpp" >}}

### حذف فیلدهای حاوی

یک فیلد ادغام می تواند در یک فیلد دیگر مانند یک فیلد **IF** یا یک فیلد فرمول قرار گیرد. این فیلد خارجی را هنگام ادغام یا حذف فیلد ادغام از سند حذف کنید.

مثال کد زیر نشان می دهد که چگونه فیلد هایی که شامل فیلد های ادغام از یک سند هستند را حذف کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveContainingFields.cpp" >}}

**یادداشت**

### حذف ردیف های خالی جدول

Aspose.Words به شما اجازه می دهد تا ردیف های خالی جدول را با اختصاص پرچم **RemoveEmptyTableRows** به **CleanupOptions** حذف کنید. این گزینه ردیف های جدول را که حاوی فیلد های ادغام خالی هستند حذف می کند.

مثال کد زیر نشان می دهد که چگونه ردیف های خالی جدول را که شامل mail merge مناطق از یک سند است حذف کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveEmptyTableRows.cpp" >}}
