---
title: با ستون ها و ردیف ها در C# کار کنید
second_title: Aspose.Words برای .NET
articleTitle: با ستون ها و ردیف ها کار کنید
linktitle: با ستون ها و ردیف ها کار کنید
description: "کار با بخش هایی از جدول - ردیف ها، ستون ها و سلول ها با استفاده از C#. Header Row C# را مشخص کنید."
type: docs
weight: 30
url: /fa/net/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

برای کنترل بیشتر بر نحوه کار جداول، نحوه دستکاری ستون ها و ردیف ها را بیاموزید.

## Table Element Index {#find-the-index-of-table-elements} را پیدا کنید

ستون‌ها، ردیف‌ها و سلول‌ها با دسترسی به گره سند انتخاب شده توسط فهرست آن مدیریت می‌شوند. یافتن شاخص هر گره شامل جمع آوری تمام گره های فرزند از نوع عنصر از گره والد، و سپس استفاده از روش [IndexOf](https://reference.aspose.com/words/net/aspose.words/nodecollection/indexof/) برای یافتن شاخص گره مورد نظر در مجموعه است.

### نمایه یک جدول را در یک سند {#find-the-index-of-table-in-a-document} پیدا کنید

گاهی اوقات ممکن است لازم باشد تغییراتی در یک جدول خاص در یک سند ایجاد کنید. برای این کار می توانید با شاخص آن به یک جدول مراجعه کنید.

مثال کد زیر نحوه بازیابی نمایه جدول در یک سند را نشان می دهد:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-table-index.cs" >}}

### نمایه یک ردیف را در جدول {#find-the-index-of-a-row-in-a-table} پیدا کنید

به طور مشابه، ممکن است لازم باشد تغییراتی در یک ردیف خاص در یک جدول انتخاب شده ایجاد کنید. برای این کار می توانید به یک سطر با شاخص آن نیز مراجعه کنید.

مثال کد زیر نحوه بازیابی شاخص یک ردیف در جدول را نشان می دهد:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-row-index.cs" >}}

### نمایه یک سلول در یک ردیف {#find-the-index-of-a-cell-in-a-row} را پیدا کنید

در نهایت، ممکن است لازم باشد تغییراتی در یک سلول خاص ایجاد کنید، و می‌توانید این کار را با فهرست سلولی نیز انجام دهید.

مثال کد زیر نحوه بازیابی نمایه یک سلول در یک ردیف را نشان می دهد:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-cell-index.cs" >}}

## با ستون {#work-with-columns} کار کنید

در Aspose.Words Document Object Model (DOM)، گره [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/) از گره های [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) و سپس گره های [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) تشکیل شده است. بنابراین، در `Document` Object Model Aspose.Words، مانند اسناد Word، مفهومی از ستون وجود ندارد.

با طراحی، ردیف‌های جدول در Microsoft Word و Aspose.Words کاملاً مستقل هستند و ویژگی‌ها و عملیات اصلی فقط در ردیف‌ها و سلول‌های جدول موجود است. این به جداول این امکان را می دهد که ویژگی های جالبی داشته باشند:

- هر ردیف جدول می تواند تعداد سلول های کاملا متفاوتی داشته باشد
- به صورت عمودی، سلول های هر ردیف می توانند عرض های متفاوتی داشته باشند
- امکان پیوستن جداول با فرمت های ردیف و تعداد سلول های مختلف وجود دارد

هر عملیاتی که روی ستون‌ها انجام می‌شود در واقع "میانبرهایی" هستند که این عملیات را با تغییر مجموع سلول‌های ردیف به‌گونه‌ای انجام می‌دهند که به نظر می‌رسد روی ستون‌ها اعمال می‌شوند. به این معنا که می‌توانید عملیات روی ستون‌ها را به سادگی با تکرار روی همان فهرست سلول ردیف جدول انجام دهید.

مثال کد زیر چنین عملیاتی را با اثبات یک کلاس نما که سلول های تشکیل دهنده "ستون" جدول را جمع آوری می کند، ساده می کند:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "column-class.cs" >}}

مثال کد زیر نحوه درج یک ستون خالی در جدول را نشان می دهد:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "insert-blank-column.cs" >}}

مثال کد زیر نحوه حذف یک ستون از یک جدول در یک سند را نشان می دهد:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "remove-column.cs" >}}

## ردیف ها را به عنوان ردیف های سرصفحه مشخص کنید

شما می توانید انتخاب کنید که ردیف اول جدول به عنوان ردیف سرصفحه فقط در صفحه اول یا در هر صفحه تکرار شود، اگر جدول به چندین تقسیم شود. در Aspose.Words، می‌توانید با استفاده از ویژگی [HeadingFormat](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/headingformat/)، ردیف سرصفحه را در هر صفحه تکرار کنید.

همچنین اگر این سطرها یکی پس از دیگری در ابتدای جدول قرار دارند، می توانید چندین ردیف سرصفحه را علامت گذاری کنید. برای این کار باید ویژگی های **HeadingFormat** را روی این ردیف ها اعمال کنید.

{{% alert color="primary" %}}

توجه داشته باشید که ردیف‌های سرصفحه در جداول تودرتو کار نمی‌کنند. یعنی اگر یک جدول در داخل میز دیگری داشته باشید، این تنظیم هیچ تاثیری نخواهد داشت. این یک محدودیت Microsoft Word است که این اجازه را نمی دهد، نه Aspose.Words.

{{% /alert %}}

مثال کد زیر نحوه ساخت جدولی را نشان می دهد که شامل ردیف های سرصفحه است که در صفحات بعدی تکرار می شود:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "repeat-rows-on-subsequent-pages.cs" >}}

## جداول و سطرها را از شکستن در صفحات {#keep-tables-and-rows-from-breaking-across-pages} حفظ کنید

مواقعی وجود دارد که محتویات یک جدول نباید در صفحات تقسیم شود. به عنوان مثال، اگر عنوانی در بالای جدول باشد، عنوان و جدول باید همیشه با هم در یک صفحه نگه داشته شوند تا ظاهر مناسب حفظ شود.

دو تکنیک جداگانه برای دستیابی به این عملکرد مفید هستند:

- `Allow row break across pages` که برای ردیف های جدول اعمال می شود
- `Keep with next` که روی پاراگراف های سلول های جدول اعمال می شود

به طور پیش فرض، ویژگی های فوق غیرفعال هستند.

### یک ردیف از شکستن در سراسر صفحات {#keep-a-row-from-breaking-across-pages} حفظ کنید

این شامل محدود کردن محتوای داخل سلول‌های یک ردیف از تقسیم شدن در یک صفحه است. در Microsoft Word، این مورد را می توان در زیر ویژگی های جدول به عنوان گزینه "Allow row to break into pages" یافت. در Aspose.Words این مورد در زیر شی [RowFormat](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/) یک [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) به عنوان ویژگی [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/net/aspose.words.tables/row/format/properties/allowbreakacrosspages) یافت می شود.

مثال کد زیر نحوه غیرفعال کردن شکستن ردیف ها در صفحات را برای هر ردیف در جدول نشان می دهد:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "row-format-disable-break-across-pages.cs" >}}

{{% alert color="primary" %}}

فایل نمونه این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx) دانلود کنید.

{{% /alert %}}

### یک جدول را از شکستن در سراسر صفحات {#keep-a-table-from-breaking-across-pages} حفظ کنید

برای جلوگیری از تقسیم شدن جدول در صفحات، باید مشخص کنیم که می‌خواهیم محتوای موجود در جدول با هم باقی بماند.

برای انجام این کار، Aspose.Words از روشی استفاده می کند که به کاربران اجازه می دهد جدولی را انتخاب کرده و پارامتر [KeepWithNext](https://reference.aspose.com/words/net/aspose.words/paragraphformat/keepwithnext/) را برای true برای هر پاراگراف در سلول های جدول فعال کنند. استثنا آخرین پاراگراف جدول است که باید روی false تنظیم شود.

مثال کد زیر نشان می دهد که چگونه می توان یک جدول را برای ماندن در یک صفحه تنظیم کرد:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "keep-table-together.cs" >}}

{{% alert color="primary" %}}

فایل نمونه این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx) دانلود کنید.

{{% /alert %}}
