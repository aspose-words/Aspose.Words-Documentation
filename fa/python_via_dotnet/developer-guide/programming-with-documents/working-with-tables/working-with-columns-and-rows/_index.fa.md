---
title: با ستون ها و ردیف ها کار کنید
second_title: Aspose.Words برای Python via .NET
articleTitle: با ستون ها و ردیف ها کار کنید
linktitle: با ستون ها و ردیف ها کار کنید
description: "کار با بخش هایی از جدول - ردیف ها، ستون ها و سلول ها با استفاده از Python. Header Row Python را مشخص کنید."
type: docs
weight: 30
url: /fa/python-net/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

برای کنترل بیشتر بر نحوه کار جداول، نحوه دستکاری ستون ها و ردیف ها را بیاموزید.

## پیدا کردن شاخص عنصر جدول

ستون‌ها، ردیف‌ها و سلول‌ها با دسترسی به گره سند انتخاب شده توسط فهرست آن مدیریت می‌شوند. یافتن شاخص هر گره شامل جمع آوری تمام گره های فرزند از نوع عنصر از گره والد، و سپس استفاده از روش [IndexOf](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/index_of/) برای یافتن شاخص گره مورد نظر در مجموعه است.

### یافتن نمایه جدول در یک سند

گاهی اوقات ممکن است لازم باشد تغییراتی در یک جدول خاص در یک سند ایجاد کنید. برای این کار می توانید به جدولی با نمایه آن مراجعه کنید.

مثال کد زیر نحوه بازیابی نمایه جدول در یک سند را نشان می دهد:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "retrieve-table-index.py" >}}

### پیدا کردن شاخص یک ردیف در یک جدول

به طور مشابه، ممکن است لازم باشد تغییراتی در یک ردیف خاص در یک جدول انتخاب شده ایجاد کنید. برای این کار می توانید به یک سطر با شاخص آن نیز مراجعه کنید.

مثال کد زیر نحوه بازیابی شاخص یک ردیف در جدول را نشان می دهد:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "retrieve-row-index.py" >}}

### پیدا کردن شاخص یک سلول در یک ردیف

در نهایت، ممکن است لازم باشد تغییراتی در یک سلول خاص ایجاد کنید، و می توانید این کار را با فهرست سلولی نیز انجام دهید.

مثال کد زیر نحوه بازیابی نمایه یک سلول در یک ردیف را نشان می دهد:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "retrieve-cell-index.py" >}}

## با ستون ها کار کنید

در Aspose.Words Document Object Model (DOM)، گره [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) از گره های [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) و سپس گره های [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) تشکیل شده است. بنابراین، در `Document` Object Model Aspose.Words، مانند اسناد Word، مفهومی از ستون وجود ندارد.

با طراحی، ردیف‌های جدول در Microsoft Word و Aspose.Words کاملاً مستقل هستند و ویژگی‌ها و عملیات اصلی فقط در ردیف‌ها و سلول‌های جدول موجود است. این به جداول این امکان را می دهد که ویژگی های جالبی داشته باشند:

- هر ردیف جدول می تواند تعداد سلول های کاملاً متفاوتی داشته باشد
- به صورت عمودی، سلول های هر ردیف می توانند عرض های متفاوتی داشته باشند
- امکان پیوستن جداول با فرمت های ردیف و تعداد سلول های مختلف وجود دارد

هر عملیاتی که روی ستون‌ها انجام می‌شود در واقع "میانبرهایی" هستند که این عملیات را با تغییر مجموع سلول‌های ردیف به‌گونه‌ای انجام می‌دهند که به نظر می‌رسد روی ستون‌ها اعمال می‌شوند. به این معنا که می‌توانید عملیات روی ستون‌ها را به سادگی با تکرار روی همان فهرست سلول ردیف جدول انجام دهید.

مثال کد زیر چنین عملیاتی را با اثبات یک کلاس نما که سلول های تشکیل دهنده "ستون" جدول را جمع آوری می کند، ساده می کند:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "column-class.py" >}}

مثال کد زیر نحوه درج یک ستون خالی در جدول را نشان می دهد:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "insert-blank-column.py" >}}

مثال کد زیر نحوه حذف یک ستون از جدول در یک سند را نشان می دهد:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "remove-column.py" >}}

## ردیف ها را به عنوان ردیف های سرصفحه مشخص کنید

شما می توانید انتخاب کنید که ردیف اول جدول به عنوان ردیف سرصفحه فقط در صفحه اول یا در هر صفحه تکرار شود اگر جدول به چندین تقسیم شود. در Aspose.Words، می توانید با استفاده از ویژگی [HeadingFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/heading_format/)، ردیف سرصفحه را در هر صفحه تکرار کنید.

همچنین اگر این سطرها یکی پس از دیگری در ابتدای جدول قرار دارند، می توانید چندین ردیف سرصفحه را علامت گذاری کنید. برای این کار باید ویژگی های **HeadingFormat** را روی این ردیف ها اعمال کنید.

{{% alert color="primary" %}}

توجه داشته باشید که ردیف های سرصفحه در جداول تودرتو کار نمی کنند. یعنی اگر یک جدول در داخل میز دیگری داشته باشید، این تنظیم هیچ تاثیری نخواهد داشت. این یک محدودیت Microsoft Word است که این اجازه را نمی دهد، نه Aspose.Words.

{{% /alert %}}

مثال کد زیر نحوه ساخت جدولی را نشان می دهد که شامل ردیف های سرصفحه است که در صفحات بعدی تکرار می شود:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "repeat-rows-on-subsequent-pages.py" >}}

## جداول و سطرها را از شکستن در صفحات جلوگیری کنید

مواقعی وجود دارد که محتویات یک جدول نباید در صفحات تقسیم شود. به عنوان مثال، اگر عنوانی در بالای جدول باشد، عنوان و جدول باید همیشه با هم در یک صفحه نگه داشته شوند تا ظاهر مناسب حفظ شود.

دو تکنیک جداگانه برای دستیابی به این عملکرد مفید هستند:

- `Allow row break across pages` که برای ردیف های جدول اعمال می شود
- `Keep with next` که روی پاراگراف های سلول های جدول اعمال می شود

به طور پیش فرض، ویژگی های فوق غیرفعال هستند.

### یک ردیف را از شکستن در سراسر صفحات حفظ کنید

این شامل محدود کردن محتوای داخل سلول‌های یک ردیف از تقسیم شدن در یک صفحه است. در Microsoft Word، این مورد را می‌توان در زیر ویژگی‌های جدول به عنوان گزینه "Allow row to break through pages" یافت. در Aspose.Words این مورد در زیر شی [RowFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/) یک [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) به عنوان ویژگی [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/allow_break_across_pages/) یافت می شود.

مثال کد زیر نحوه غیرفعال کردن شکستن ردیف ها در صفحات را برای هر ردیف در جدول نشان می دهد:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "row-format-disable-break-across-pages.py" >}}

{{% alert color="primary" %}}

فایل نمونه این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx) دانلود کنید.

{{% /alert %}}

### یک جدول را از شکستن در سراسر صفحات حفظ کنید

برای جلوگیری از تقسیم شدن جدول در صفحات، باید مشخص کنیم که می‌خواهیم محتوای موجود در جدول در کنار هم بماند.

برای انجام این کار، Aspose.Words از روشی استفاده می کند که به کاربران اجازه می دهد جدولی را انتخاب کرده و پارامتر [KeepWithNext](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/keep_with_next/) را برای true برای هر پاراگراف در سلول های جدول فعال کنند. استثنا آخرین پاراگراف جدول است که باید روی false تنظیم شود.

مثال کد زیر نحوه تنظیم جدول برای ماندن در یک صفحه را نشان می دهد:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "keep-table-together.py" >}}

{{% alert color="primary" %}}

فایل نمونه این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx) دانلود کنید.

{{% /alert %}}
