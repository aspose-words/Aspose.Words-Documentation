---
title: باز کردن یک سند فقط برای خواندن در Java
second_title: Aspose.Words برای Java
articleTitle: باز کردن یک سند فقط برای خواندن
linktitle: باز کردن یک سند فقط برای خواندن
description: "سند خود را فقط برای خواندن قرار دهید تا محتوای آن کپی یا خوانده شود، اما با استفاده از Java اصلاح نشود."
type: docs
weight: 10
url: /fa/java/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

گاهی اوقات، ممکن است سندی داشته باشید که نیاز به بررسی داشته باشد، اما نمی خواهید بازبینی کنندگان محتوای شما را به طور تصادفی تغییر دهند. Aspose.Words به شما اجازه می دهد تا اجازه خواندن سند خود را فقط به طوری که محتوا می تواند کپی یا خوانده شود، اما اصلاح نشده است. این کار از حذف یا اضافه شدن محتوا به سند شما جلوگیری می کند.

{{% alert color="primary" %}}

استفاده از گزینه فقط برای خواندن به سند شما مانع از ایجاد یک نسخه جدید از آن و ذخیره آن با نام دیگر نمی شود.

{{% /alert %}}

این مقاله توضیح می دهد که چگونه یک سند را فقط برای خواندن بخوانید.

## یک سند فقط برای خواندن ایجاد کنید

Aspose.Words دارای کلاس عمومی [WriteProtection](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/) است که تنظیمات حفاظت نوشتن را برای یک سند مشخص می کند. شما نمونه هایی از این کلاس را مستقیما ایجاد نمی کنید.

حفاظت از نوشتن نشان می دهد که آیا نویسنده توصیه کرده است که یک سند را به عنوان فقط برای خواندن باز کند و/یا برای تغییر سند به یک رمز عبور نیاز دارد.

Aspose.Words به شما اجازه می دهد تا یک سند را فقط برای خواندن ایجاد کنید تا ویرایش را با استفاده از ویژگی [ReadOnlyRecommended](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#getReadOnlyRecommended) و روش [SetPassword](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#setPassword-java.lang.String) محدود کنید.

{{% alert color="primary" %}}

در Microsoft Word، شما می توانید یک سند فقط برای خواندن را به شیوه ای مشابه با استفاده از هر دو:

* "همیشه فقط برای خواندن باز است" (فایل → اطلاعات → محافظت از سند)
* "رمز عبور برای تغییر" (به عنوان → ابزار → گزینه های عمومی → رمز عبور ذخیره کنید)

{{% /alert %}}

{{% alert color="primary" %}}

کاربران همچنین می توانند ویرایش اسناد را با انتخاب [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) به عنوان **ReadOnly** محدود کنند، اما این یکی دیگر از ویژگی هایی است که قابلیت های محافظت پیشرفته تری را فراهم می کند. چنین تابعی در Microsoft Word وجود دارد، به ترتیب، در Aspose.Words اجرا می شود.

**ProtectionType**

{{% /alert %}}

ویژگی **ReadOnlyRecommended** با رمز عبور امن است، بنابراین اگر قبل از استفاده از ویژگی **ReadOnlyRecommended** رمز عبور تنظیم نکنید، کاربران دیگر می توانند به سادگی سند را باز کنند، انگار که محافظت نشده است. شما به تنظیمات حفاظت از اسناد دسترسی دارید و یک رمز عبور حفاظت از نوشتن را از طریق روش **SetPassword** تنظیم می کنید.

{{% alert color="primary" %}}

توجه داشته باشید که رمز عبور در حال تنظیم فقط یک ویژگی در یک سند است که می تواند در صورت دسترسی به ویژگی های سند حذف شود. بر این اساس، چنین رمز عبور تضمین امنیت سند نیست.

{{% /alert %}}

اگر می خواهید بررسی کنید که آیا یک سند دارای رمز عبور محافظت از نوشتن است که آن را از ویرایش محدود می کند، می توانید از ویژگی [IsWriteProtected](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#isWriteProtected) استفاده کنید.

مثال کد زیر نشان می دهد که چگونه یک سند را فقط برای خواندن بسازید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-ReadOnlyProtection.java" >}}

## حذف محدودیت فقط برای خواندن

اگر نمی خواهید کاربر سند شما را فقط به عنوان خوانده شده باز کند، می توانید به سادگی ویژگی **ReadOnlyRecommened** را به *false* تنظیم کنید یا **ProtectionType** را به عنوان **NoProtection** انتخاب کنید.

مثال کد زیر نشان می دهد که چگونه دسترسی فقط برای خواندن یک سند را حذف کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveReadOnlyRestriction.java" >}}
