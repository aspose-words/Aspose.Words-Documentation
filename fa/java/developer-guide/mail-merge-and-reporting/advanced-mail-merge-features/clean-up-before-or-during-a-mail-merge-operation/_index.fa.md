---
title: تمیز کردن قبل یا در طول عملیات Mail Merge
second_title: Aspose.Words برای Java
articleTitle: تمیز کردن قبل یا در طول عملیات Mail Merge
linktitle: تمیز کردن قبل یا در طول عملیات Mail Merge
type: docs
description: "قبل از انجام عملیات Mail Merge یا حذف مناطق استفاده نشده در طی عملیات Mail Merge با استفاده از Java، گزینه های مختلف تمیز کردن و حذف مانند حذف زمینه های ادغام را اعمال کنید."
keywords: "cleanup options Mail Merge c#"
weight: 10
url: /fa/java/clean-up-before-or-during-mail-merge/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words به شما اجازه می دهد تا گزینه های مختلف تمیز کردن و حذف مانند حذف فیلد های ادغام را قبل از انجام عملیات Mail Merge یا حذف مناطق استفاده نشده در طول عملیات Mail Merge اعمال کنید. در این بخش نحوه حذف فیلدهای ادغام شده و نحوه تنظیم گزینه حذف توضیح داده می شود.

## حذف فیلدهای ادغام شده

وقتی از یک قالب طولانی استفاده می کنید که توسط شخص دیگری ایجاد شده است، ممکن است بخواهید قبل از انجام یک عملیات Mail Merge، تمام زمینه های ادغام را که در آن قالب وجود دارد حذف کنید. شما می توانید از روش [DeleteFields](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#deleteFields) استفاده کنید اگر می خواهید تمام فیلد های ادغام را از یک سند بدون اجرای عملیات Mail Merge حذف کنید. این روش تحت تاثیر هیچ گزینه ای برای حذف ویژگی [CleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getCleanupOptions) قرار نمی گیرد و اجرای آن فقط زمینه های ادغام شده را حذف می کند، نه هیچ فیلد حاوی یا پاراگراف های خالی.

مثال کد زیر نشان می دهد که چگونه تمام فیلد های ادغام را از قالب خود بدون اجرای یک عملیات Mail Merge حذف کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-DeleteFields.java" >}}

## گزینه `Removing` را تنظیم کنید

Aspose.Words شما را قادر می سازد تا زمینه ها، مناطق و پاراگراف های ادغام نشده را از یک قالب در طول عملیات Mail Merge با استفاده از گزینه های حذف حذف کنید.

از ویژگی **CleanupOptions** همراه با شمارش [MailMergeCleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/mailmergecleanupoptions/) برای تنظیم گزینه حذف استفاده کنید. با انتخاب گزینه های زیر مشخص کنید که کدام آیتم ها را می خواهید حذف کنید (می توانید بیش از یک مورد را با هم ترکیب کنید):

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

اگر شما داده ها را با استفاده از منابع داده جداگانه ادغام می کنید، گزینه های حذف شده تنها با آخرین فراخوان روش اجرای Mail Merge فعال می شوند.

{{% /alert %}}

### پاراگراف های خالی را حذف کنید

یک پاراگراف که فقط شامل فیلد های ادغام است خالی خواهد بود وقتی که فرآیند Mail Merge تمام فیلد های ادغام خود را به عنوان ادغام نشده حذف کند. این پاراگراف های خالی می توانند فضای ناخواسته ای را اضافه کنند و تغییر دهند که گزارش تولید شده چگونه خواهد بود. شما ممکن است با دو موقعیت با پاراگراف در طول یک عملیات Mail Merge روبرو شوید:

1. فیلد Mail Merge با داده های خالی ادغام خواهد شد.
2. فیلد ادغام استفاده نشده و حذف خواهد شد.

در هر دو حالت گزینه **RemoveEmptyParagraphs** به طور خودکار پاراگراف های خالی را از سند حذف می کند. همچنین، اگر بقیه پاراگراف خالی باشد، فیلد های ادغام `TableStart` و TableEnd را حذف می کند.

مثال کد زیر نشان می دهد که چگونه پاراگراف های خالی را حذف کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveEmptyParagraphs.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل نمونه این مثال را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Table%20with%20fields.docx).

{{% /alert %}}

### حذف مناطق استفاده نشده

در نسخه های قبلی Aspose.Words، مناطق خالی Mail Merge به طور خودکار در طول عملیات Mail Merge از سند حذف شدند. با آخرین نسخه Aspose.کلمات، مناطق خالی Mail Merge پس از عملیات Mail Merge به طور پیش فرض باقی می مانند. با این حال، شما می توانید از گزینه **RemoveUnusedRegions** برای حذف مناطق استفاده نشده Mail Merge در طول عملیات Mail Merge استفاده کنید. به عنوان مثال، شما می توانید یک سند را با یک منبع داده خالی که حاوی هیچ جدول داده ای نیست که منجر به مناطق استفاده نشده در سند شود، ادغام کنید.

مثال کد زیر نشان می دهد که چگونه مناطق ادغام استفاده نشده را حذف کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveUnmergedRegions.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل نمونه این مثال را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Mail%20merge%20destination%20-%20Northwind%20suppliers.docx).

{{% /alert %}}

**یادداشت**

### حذف زمینه های استفاده نشده

Aspose.Words به شما اجازه می دهد تا هر فیلد Mail Merge استفاده نشده را با اختصاص پرچم **RemoveUnusedFields** به **CleanupOptions** حذف کنید. این گزینه فیلد های ادغام را که داده های مربوطه را در منبع داده ندارند حذف می کند.

مثال کد زیر نشان می دهد که چگونه هر فیلد ادغام استفاده نشده را از یک سند به طور خودکار در طول عملیات Mail Merge حذف کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveUnusedFields.java" >}}

### حذف فیلدهای حاوی

یک فیلد ادغام می تواند در یک فیلد دیگر مانند یک فیلد **IF** یا یک فیلد فرمول قرار گیرد. این فیلد خارجی را هنگام ادغام یا حذف فیلد ادغام از سند حذف کنید.

مثال کد زیر نشان می دهد که چگونه فیلد هایی که شامل فیلد های ادغام از یک سند هستند را حذف کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveContainingFields.java" >}}

**یادداشت**

### حذف ردیف های خالی جدول

Aspose.Words به شما اجازه می دهد تا ردیف های خالی جدول را با اختصاص پرچم **RemoveEmptyTableRows** به **CleanupOptions** حذف کنید. این گزینه ردیف های جدول را که حاوی فیلد های ادغام خالی هستند حذف می کند.

مثال کد زیر نشان می دهد که چگونه ردیف های خالی جدول را که شامل Mail Merge مناطق از یک سند است حذف کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveEmptyTableRows.java" >}}
