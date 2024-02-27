---
title: یک سند فقط خواندنی را در Python باز کنید
second_title: Aspose.Words برای Python via .NET
articleTitle: یک سند فقط خواندنی را باز کنید
linktitle: یک سند فقط خواندنی را باز کنید
description: "سند خود را فقط خواندنی کنید تا محتوا قابل کپی یا خواندن باشد، اما با استفاده از Python اصلاح نشود."
type: docs
weight: 10
url: /fa/python-net/open-a-document-read-only/
---

گاهی اوقات، ممکن است سندی داشته باشید که نیاز به بررسی داشته باشد، اما نمی خواهید بازبینان به طور تصادفی محتوای شما را تغییر دهند. Aspose.Words به شما این امکان را می دهد که مجوز سند خود را فقط خواندنی کنید تا محتوا قابل کپی یا خواندن باشد، اما اصلاح نشود. این از حذف یا اضافه شدن محتوا به سند شما جلوگیری می کند.

{{% alert color="primary" %}}

اعمال گزینه فقط خواندنی در سند شما مانع از ایجاد یک کپی جدید از آن و ذخیره آن با نام دیگری نمی شود.

{{% /alert %}}

این مقاله نحوه ایجاد یک سند فقط خواندنی را توضیح می دهد.

## یک سند فقط خواندنی بسازید

Aspose.Words دارای کلاس عمومی [WriteProtection](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/) است که تنظیمات حفاظت از نوشتن را برای یک سند مشخص می کند. شما مستقیماً نمونه هایی از این کلاس را ایجاد نمی کنید.

حفاظت از نوشتن نشان می دهد که آیا نویسنده باز کردن یک سند را به عنوان فقط خواندنی و/یا نیاز به رمز عبور برای تغییر سند توصیه کرده است یا خیر.

Aspose.Words به شما امکان می دهد با استفاده از ویژگی [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) و روش [set_password](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/set_password/) یک سند فقط خواندنی ایجاد کنید تا ویرایش را محدود کنید.

{{% alert color="primary" %}}

در Microsoft Word، می توانید یک سند فقط خواندنی را به روشی مشابه با استفاده از هر دو ایجاد کنید:

* "همیشه باز فقط خواندنی" (فایل → اطلاعات → محافظت از سند)
* "رمز عبور برای تغییر" (ذخیره به عنوان → ابزارها → گزینه های عمومی → رمز عبور)

{{% /alert %}}

{{% alert color="primary" %}}

کاربران همچنین می توانند با انتخاب [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) به عنوان [READ_ONLY](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#read_only) ویرایش اسناد را محدود کنند، اما این ویژگی دیگری است که قابلیت های حفاظتی پیشرفته تری را ارائه می دهد. چنین تابعی در Microsoft Word وجود دارد، به ترتیب در Aspose.Words پیاده سازی می شود.

[ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) به طور مفصل در یکی از مقالات زیر توضیح داده خواهد شد - "محدود کردن ویرایش سند".

{{% /alert %}}

ویژگی [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) با رمز عبور محافظت می شود، بنابراین اگر قبل از اعمال ویژگی [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) رمز عبور تنظیم نکنید، سایر کاربران می توانند به سادگی سند را به گونه ای باز کنند که گویی محافظت نشده است. از طریق روش [set_password](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/set_password/) به تنظیمات حفاظت از اسناد دسترسی پیدا می کنید و رمز عبور محافظت از نوشتن را تنظیم می کنید.

{{% alert color="primary" %}}

توجه داشته باشید که رمز عبور در حال تنظیم فقط یک ویژگی در یک سند است که در صورت دسترسی به ویژگی های سند قابل حذف است. بر این اساس، چنین رمز عبوری تضمین کننده امنیت سند نیست.

{{% /alert %}}

اگر باید بررسی کنید که آیا سند دارای رمز عبور محافظت از نوشتن است که ویرایش آن را محدود می کند، می توانید از ویژگی [is_write_protected](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/is_write_protected/) استفاده کنید.

مثال کد زیر نحوه ساخت یک سند فقط خواندنی را نشان می دهد:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.write("Open document as read-only")

# Enter a password that's up to 15 characters long.
doc.write_protection.set_password("MyPassword")

# Make the document as read-only.
doc.write_protection.read_only_recommended = True

# Apply write protection as read-only.
doc.protect(aw.ProtectionType.READ_ONLY)
doc.save(docs_base.artifacts_dir + "DocumentProtection.ReadOnlyProtection.docx")
{{< /highlight >}}

## محدودیت فقط خواندنی را حذف کنید

اگر نمی خواهید کاربر سند شما را به صورت فقط خواندنی باز کند، می توانید به سادگی ویژگی [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) را روی `False` تنظیم کنید یا [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/document/protection_type/) را به عنوان [NO_PROTECTION](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#no_protection) انتخاب کنید.

مثال کد زیر نحوه حذف دسترسی فقط خواندنی برای یک سند را نشان می دهد:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
            
# Enter a password that's up to 15 characters long.
doc.write_protection.set_password("MyPassword")

# Remove the read-only option.
doc.write_protection.read_only_recommended = False

# Apply write protection without any protection.
doc.protect(aw.ProtectionType.NO_PROTECTION)
doc.save(docs_base.artifacts_dir + "DocumentProtection.RemoveReadOnlyRestriction.docx")
{{< /highlight >}}
