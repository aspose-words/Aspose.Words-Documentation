---
title: کار با متن در جدول
second_title: Aspose.Words برای Python
articleTitle: کار با متن در جدول
linktitle: کار با متن در جدول
description: "متن را در جدول در Python جایگزین کنید. متن ساده را از جدول یا سلول با استفاده از Python استخراج کنید."
type: docs
weight: 60
url: /fa/python-net/work-with-text-in-a-table/
timestamp: 2024-01-27-14-07-04
---

همانطور که در مقاله های قبلی ذکر شد، یک جدول معمولا حاوی متن ساده است، اگرچه می توان محتوای دیگری مانند تصاویر یا حتی جداول دیگر را در سلول های جدول قرار داد.

افزودن متن یا محتوای دیگر به جدول با استفاده از روش های مناسب کلاس [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) انجام می شود و در مقاله **"ایجاد جدول"** توضیح داده شده است. در این مقاله در مورد نحوه کار با متن در جدول موجود صحبت خواهیم کرد.

## جایگزین کردن متن در جدول

جدول، مانند هر گره دیگری در Aspose.Words، به شی [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) دسترسی دارد. با استفاده از شی محدوده جدول، می توانید متن را در جدول جایگزین کنید.

قابلیت استفاده از کاراکترهای خاص هنگام جایگزینی در حال حاضر پشتیبانی می شود، بنابراین می توان متن موجود را با متن چند پاراگراف جایگزین کرد. برای انجام این کار، باید از متاکاراکترهای ویژه ای که در روش [Replace](https://reference.aspose.com/words/python-net/aspose.words/range/replace/#str_str) مربوطه توضیح داده شده است استفاده کنید.

{{% alert color="primary" %}}

به طور معمول، جایگزینی متن باید در سطح سلول (در هر سلول) یا در سطح پاراگراف انجام شود.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه می توان تمام نمونه های یک رشته متن را در سلول های یک جدول کامل جایگزین کرد:

{{< gist "aspose-words-gists" "a47401178cba165f62701f6c94e8a4ec" "replace-text.py" >}}

## متن ساده را از جدول یا سلول استخراج کنید

با استفاده از شی **Range**، می‌توانید متدهایی را در کل محدوده جدول فراخوانی کنید و جدول را به صورت متن ساده استخراج کنید. برای این کار از ویژگی [Text](https://reference.aspose.com/words/python-net/aspose.words/range/text/) استفاده کنید

مثال کد زیر نحوه چاپ محدوده متن جدول را نشان می دهد:

{{< gist "aspose-words-gists" "a47401178cba165f62701f6c94e8a4ec" "extract-text.py" >}}

از همین روش فقط برای استخراج محتوا از تک تک سلول های جدول استفاده می شود.

مثال کد زیر نحوه چاپ یک محدوده متنی از عناصر ردیف و جدول را نشان می دهد:

{{< gist "aspose-words-gists" "a47401178cba165f62701f6c94e8a4ec" "print-text-range-row-and-table.py" >}}

## کار با متن جدول جایگزین

جداول Microsoft Word دارای یک `table title` و `table description` هستند که یک نمایش متنی جایگزین از اطلاعات موجود در جدول ارائه می کنند.

در Aspose.Words، می‌توانید عنوان و توضیحات جدول را با استفاده از ویژگی‌های [Title](https://reference.aspose.com/words/python-net/aspose.words.tables/table/title/) و [Description](https://reference.aspose.com/words/python-net/aspose.words.tables/table/description/) اضافه کنید. این ویژگی‌ها برای اسناد DOCX مطابق با ISO/IEC 29500 معنی‌دار هستند. هنگام ذخیره در قالب‌های زودتر از ISO/IEC 29500، این ویژگی‌ها نادیده گرفته می‌شوند.

مثال کد زیر نحوه تنظیم مشخصات عنوان و توضیحات یک جدول را نشان می دهد:

{{< gist "aspose-words-gists" "a47401178cba165f62701f6c94e8a4ec" "table-title-and-description.py" >}}

