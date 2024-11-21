---
title: باز کردن یک سند فقط در Java
second_title: Aspose.Words برای Java
articleTitle: دانلود زیرنویس فارسی فیلم A Document Read Only
linktitle: دانلود زیرنویس فارسی فیلم A Document Read Only
description: "فقط سند خود را بخوانید تا محتوا بتواند کپی یا بخواند، اما با استفاده از آن اصلاح نشود. Java..."
type: docs
weight: 10
url: /fa/java/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

گاهی اوقات، شما ممکن است یک سند داشته باشید که نیاز به بررسی دارد، اما نمی خواهید داوران به طور تصادفی محتوای شما را تغییر دهند. Aspose.Words به شما اجازه می دهد تا مجوز سند خود را فقط بخوانید تا محتوا بتواند کپی یا بخواند، اما اصلاح نشود. این امر مانع حذف محتوا یا اضافه شدن به سند شما خواهد شد.

{{% alert color="primary" %}}

استفاده از گزینه فقط خواندن برای سند شما مانع ایجاد یک کپی جدید از آن و صرفه جویی در آن با نام دیگر نمی شود.

{{% /alert %}}

این مقاله توضیح می دهد که چگونه یک سند را فقط بخوانید.

## یک سند را بخوانید – Only

Aspose.Words کلاس عمومی [WriteProtection](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/) این نشان دهنده تنظیمات محافظت از نوشتن برای یک سند است. شما به طور مستقیم نمونه هایی از این کلاس ایجاد نمی کنید.

محافظت از نوشتن نشان می دهد که آیا نویسنده توصیه کرده است یک سند را به عنوان تنها خواندن و / یا نیاز به یک رمز عبور برای تغییر سند باز کند.

Aspose.Words به شما اجازه می دهد یک سند را فقط برای محدود کردن ویرایش با استفاده از [ReadOnlyRecommended](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#getReadOnlyRecommended) مالکیت و [SetPassword](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#setPassword-java.lang.String) روش

{{% alert color="primary" %}}

In In In Microsoft Word, شما می توانید یک سند خواندنی را به روشی مشابه با استفاده از هر دو ایجاد کنید:

* • "همیشه Open Read- Only" ( File | Info | Protect Document)
* "Password to Change" (Save as → General Options

{{% /alert %}}

{{% alert color="primary" %}}

کاربران همچنین می توانند ویرایش سند را با انتخاب محدود کنند [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) مانند **ReadOnly**, اما این ویژگی دیگری است که قابلیت های حفاظت پیشرفته تر را فراهم می کند. چنین عملکردی در Microsoft Word, به ترتیب، آن را در Aspose.Words...

**ProtectionType** در یکی از مقالات زیر با جزئیات شرح داده می شود: "Restrict Document Editing".

{{% /alert %}}

The The The The The The **ReadOnlyRecommended** مالکیت رمز عبور امن است، بنابراین اگر قبل از درخواست رمز عبور را تنظیم نکنید **ReadOnlyRecommended** اموال، سپس کاربران دیگر می توانند به سادگی سند را باز کنند، به عنوان اگر آن را محافظت نشده است. شما به تنظیمات محافظت از سند دسترسی دارید و یک رمز عبور محافظت از نوشتن از طریق **SetPassword** روش

{{% alert color="primary" %}}

توجه داشته باشید که رمز عبور تنظیم شده فقط یک ملک در یک سند است که می تواند در صورت دسترسی به خواص سند حذف شود. بنابراین، چنین رمز عبور تضمین امنیت سند نیست.

{{% /alert %}}

اگر باید بررسی کنید که آیا یک سند دارای یک رمز عبور محافظت از نوشتن است که آن را از ویرایش محدود می کند، می توانید از آن استفاده کنید. [IsWriteProtected](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#isWriteProtected) مالکیت

مثال کد زیر نشان می دهد که چگونه یک سند را فقط بخوانید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-ReadOnlyProtection.java" >}}

## حذف فقط محدودیت

اگر نمی خواهید یک کاربر سند خود را به عنوان تنها خواندن باز کند، می توانید به سادگی آن را تنظیم کنید. **ReadOnlyRecommened** مالکیت *false* یا انتخاب **ProtectionType** مانند **NoProtection**...

مثال کد زیر نشان می دهد که چگونه دسترسی خواندنی را برای یک سند حذف کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveReadOnlyRestriction.java" >}}
