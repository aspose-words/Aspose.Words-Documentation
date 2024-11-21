---
title: محدودیت سند ویرایش در Java
second_title: Aspose.Words برای Java
articleTitle: دانلود فیلم Limit Document Editing
linktitle: دانلود فیلم Limit Document Editing
description: "محدود کردن ویرایش یک سند با تنظیم یک نوع محدودیت شما همچنین می توانید محافظت را حذف کنید و مناطق بدون محدودیت ویرایش را با استفاده از آن ایجاد کنید. Java..."
type: docs
weight: 30
url: /fa/java/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

گاهی اوقات ممکن است نیاز به محدود کردن توانایی ویرایش یک سند داشته باشید و فقط اجازه دهید برخی از اقدامات با آن انجام شود. این می تواند برای جلوگیری از ویرایش اطلاعات حساس و محرمانه در سند شما مفید باشد.

Aspose.Words اجازه می دهد تا ویرایش یک سند را با تنظیم یک نوع محدودیت محدود محدود کنید. علاوه بر این، Aspose.Words همچنین شما را قادر می سازد تا تنظیمات محافظت از نوشتن را برای یک سند مشخص کنید.

این مقاله توضیح می دهد که چگونه از Aspose.Words برای انتخاب یک نوع محدودیت، چگونگی اضافه کردن یا حذف حفاظت و چگونگی ایجاد مناطق بدون محدودیت قابل ویرایش.

## گزینه Editing Limit Type

Aspose.Words اجازه می دهد تا شما را به کنترل راه شما محدود کردن محتوا با استفاده از [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) پارامتر تکرار این کار شما را قادر می سازد تا یک نوع دقیق از محافظت مانند موارد زیر را انتخاب کنید:

*فقط اجازه دهید
* اجازه دهید JustForm Fields
* اجازه دهید فقط تجدید نظر
*فقط بخوانید
* عدم محافظت

همه انواع رمز عبور امن هستند و اگر این رمز عبور به درستی وارد نشود، کاربر قادر نخواهد بود محتوای سند شما را به صورت قانونی تغییر دهد. بنابراین، اگر سند شما بدون نیاز به ارائه رمز عبور ضروری به شما بازگردانده شود، این نشانه ای است که چیزی اشتباه است.

اگر هنگام انتخاب نوع امنیتی یک رمز عبور ایجاد نکردید، کاربران دیگر می توانند به سادگی محافظت از سند شما را نادیده بگیرند.

{{% alert color="primary" %}}

توجه داشته باشید که رمز عبور تنظیم شده فقط یک ملک در یک سند است که می تواند در صورت دسترسی به خواص سند حذف شود. بنابراین، چنین رمز عبور تضمین امنیت سند نیست. The The The The The The [Unprotect](https://reference.aspose.com/words/java/com.aspose.words/document/#unprotect) روش فقط نشان می دهد.

{{% /alert %}}

## Add Document Protection

اضافه کردن حفاظت از سند شما یک فرآیند ساده است، زیرا تنها کاری که باید انجام دهید، استفاده از یکی از روش های محافظت دقیق در این بخش است.

Aspose.Words اجازه می دهد تا اسناد خود را از تغییرات استفاده کنید [Protect](https://reference.aspose.com/words/java/com.aspose.words/document/#protect-int) روش این روش یک ویژگی امنیتی نیست و یک سند را رمزگذاری نمی کند.

{{% alert color="primary" %}}

In In In Microsoft Word, شما می توانید ویرایش را به روشی مشابه با استفاده از هر دو محدود کنید:

* • محدود کردن ویرایش (File → Info → Protect Document)
* ویژگی های جایگزین – "Restrict Editing" (Restrict Editing)

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه محافظت از رمز عبور را به سند خود اضافه کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-PasswordProtection.java" >}}

مثال کد زیر نشان می دهد که چگونه ویرایش را در یک سند محدود کنیم، بنابراین تنها ویرایش در زمینه های فرم امکان پذیر است:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-AllowOnlyFormFieldsProtect.java" >}}

## حذف مستندات حفاظت

Aspose.Words اجازه می دهد تا محافظت از یک سند را با اصلاحات ساده و مستقیم سند حذف کنید. شما می توانید بدون دانستن رمز عبور واقعی یا ارائه رمز عبور صحیح برای باز کردن سند با استفاده از سند [Unprotect](https://reference.aspose.com/words/java/com.aspose.words/document/#unprotect) روش هر دو راه حذف هیچ تفاوتی ندارند.

مثال کد زیر نشان می دهد که چگونه محافظت را از سند خود حذف کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveDocumentProtection.java" >}}

## مناطق ویرایش شده نامحدود

شما می توانید ویرایش سند خود را محدود کنید و در عین حال اجازه می دهد تا تغییراتی در بخش های انتخاب شده آن ایجاد شود. بنابراین، هر کسی که سند شما را باز کند، قادر خواهد بود به این قطعات نامحدود دسترسی پیدا کند و تغییراتی در محتوا ایجاد کند.

Aspose.Words اجازه می دهد تا شما را به علامت قطعات که می تواند در سند خود را با استفاده از [StartEditableRange](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startEditableRange) و [EndEditableRange](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endEditableRange) روش ها

مثال کد زیر نشان می دهد که چگونه کل سند را به عنوان مناطق قابل ویرایش در آن علامت گذاری کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-UnrestrictedEditableRegions.java" >}}

شما همچنین می توانید محدودیت های مختلف ویرایش سند را برای بخش های مختلف انتخاب کنید.

مثال کد زیر نشان می دهد که چگونه برای اضافه کردن یک محدودیت برای کل سند و سپس حذف محدودیت برای یکی از بخش ها:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-UnrestrictedSection.java" >}}
