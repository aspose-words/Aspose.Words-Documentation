---
title: یک سند فقط خواندنی را در C# باز کنید
second_title: Aspose.Words برای .NET
articleTitle: یک سند فقط خواندنی را باز کنید
linktitle: یک سند فقط خواندنی را باز کنید
description: "سند خود را فقط خواندنی کنید تا محتوا قابل کپی یا خواندن باشد، اما با استفاده از C# اصلاح نشود."
type: docs
weight: 10
url: /fa/net/open-a-document-read-only/
---

گاهی اوقات، ممکن است سندی داشته باشید که نیاز به بررسی داشته باشد، اما نمی خواهید بازبینان به طور تصادفی محتوای شما را تغییر دهند. Aspose.Words به شما این امکان را می دهد که مجوز سند خود را فقط خواندنی کنید تا محتوا قابل کپی یا خواندن باشد، اما اصلاح نشود. این از حذف یا اضافه شدن محتوا به سند شما جلوگیری می کند.

{{% alert color="primary" %}}

اعمال گزینه فقط خواندنی در سند شما مانع از ایجاد یک کپی جدید از آن و ذخیره آن با نام دیگری نمی شود.

{{% /alert %}}

این مقاله نحوه ایجاد یک سند فقط خواندنی را توضیح می دهد.

## یک سند فقط خواندنی بسازید

Aspose.Words دارای کلاس عمومی [WriteProtection](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/) است که تنظیمات حفاظت از نوشتن را برای یک سند مشخص می کند. شما مستقیماً نمونه هایی از این کلاس را ایجاد نمی کنید.

حفاظت از نوشتن نشان می دهد که آیا نویسنده باز کردن یک سند را به عنوان فقط خواندنی و/یا نیاز به رمز عبور برای تغییر سند توصیه کرده است یا خیر.

Aspose.Words به شما امکان می دهد با استفاده از ویژگی [ReadOnlyRecommended](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/readonlyrecommended/) و روش [SetPassword](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/setpassword/) یک سند فقط خواندنی ایجاد کنید تا ویرایش را محدود کنید.

{{% alert color="primary" %}}

در Microsoft Word، می توانید یک سند فقط خواندنی را به روشی مشابه با استفاده از هر دو ایجاد کنید:

* "همیشه باز فقط خواندنی" (فایل → اطلاعات → محافظت از سند)
* "رمز عبور برای تغییر" (ذخیره به عنوان → ابزارها → گزینه های عمومی → رمز عبور)

{{% /alert %}}

{{% alert color="primary" %}}

کاربران همچنین می توانند با انتخاب [ProtectionType](https://reference.aspose.com/words/net/aspose.words/protectiontype/) به عنوان **ReadOnly** ویرایش اسناد را محدود کنند، اما این ویژگی دیگری است که قابلیت های حفاظتی پیشرفته تری را ارائه می دهد. چنین تابعی در Microsoft Word وجود دارد، به ترتیب در Aspose.Words پیاده سازی می شود.

**ProtectionType** به طور مفصل در یکی از مقالات زیر توضیح داده خواهد شد - "محدود کردن ویرایش سند".

{{% /alert %}}

ویژگی **ReadOnlyRecommended** با رمز عبور محافظت می شود، بنابراین اگر قبل از اعمال ویژگی **ReadOnlyRecommended** رمز عبور تنظیم نکنید، سایر کاربران می توانند به سادگی سند را به گونه ای باز کنند که گویی محافظت نشده است. از طریق روش **SetPassword** به تنظیمات حفاظت از اسناد دسترسی پیدا می کنید و رمز عبور محافظت از نوشتن را تنظیم می کنید.

{{% alert color="primary" %}}

توجه داشته باشید که رمز عبور در حال تنظیم فقط یک ویژگی در یک سند است که در صورت دسترسی به ویژگی های سند قابل حذف است. بر این اساس، چنین رمز عبوری تضمین کننده امنیت سند نیست.

{{% /alert %}}

اگر باید بررسی کنید که آیا سند دارای رمز عبور محافظت از نوشتن است که ویرایش آن را محدود می کند، می توانید از ویژگی [IsWriteProtected](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/iswriteprotected/) استفاده کنید.

مثال کد زیر نحوه ساخت یک سند فقط خواندنی را نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-ReadOnlyProtection.cs" >}}

## محدودیت فقط خواندنی را بردارید

اگر نمی خواهید کاربر سند شما را به عنوان فقط خواندنی باز کند، می توانید به سادگی ویژگی **ReadOnlyRecommened** را روی *false* تنظیم کنید یا **ProtectionType** را به عنوان **NoProtection** انتخاب کنید.

مثال کد زیر نحوه حذف دسترسی فقط خواندنی برای یک سند را نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveReadOnlyRestriction.cs" >}}
