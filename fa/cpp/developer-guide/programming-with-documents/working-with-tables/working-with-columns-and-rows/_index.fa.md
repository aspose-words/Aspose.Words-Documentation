---
title: کار با ستون ها و ردیف ها در C++
second_title: Aspose.Words برای C++
articleTitle: کار با ستون ها و ردیف ها
linktitle: کار با ستون ها و ردیف ها
description: "کار با بخش هایی از یک جدول – ردیف ها، ستون ها و سلول ها با استفاده از C++. ردیف هدر C++ را مشخص کنید."
type: docs
weight: 30
url: /fa/cpp/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

برای کنترل بیشتر بر نحوه کار جداول، یاد بگیرید که چگونه ستون ها و ردیف ها را دستکاری کنید.

## فهرست عناصر جدول را پیدا کنید

ستون ها، ردیف ها و سلول ها با دسترسی به گره سند انتخاب شده توسط شاخص آن مدیریت می شوند. پیدا کردن شاخص هر گره شامل جمع آوری تمام گره های کودک از نوع عنصر از گره اصلی است و سپس با استفاده از روش [IndexOf](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/indexof/) برای پیدا کردن شاخص گره مورد نظر در مجموعه.

### فهرست یک جدول را در یک سند پیدا کنید

گاهی اوقات ممکن است لازم باشد تغییراتی در یک جدول خاص در یک سند ایجاد کنید. برای انجام این کار، می توانید با فهرست آن به یک جدول مراجعه کنید.

مثال کد زیر نشان می دهد که چگونه شاخص یک جدول را در یک سند بازیابی کنیم:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "retrieve-table-index.h" >}}

### شاخص یک ردیف را در یک جدول پیدا کنید {#find-the-index-of-a-row-in-a-table}

به همین ترتیب، ممکن است لازم باشد در یک جدول انتخاب شده تغییراتی در یک ردیف خاص ایجاد کنید. برای انجام این کار، شما همچنین می توانید به یک ردیف با شاخص آن مراجعه کنید.

مثال کد زیر نشان می دهد که چگونه شاخص یک ردیف را در یک جدول بازیابی کنیم:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "retrieve-row-index.h" >}}

### شاخص یک سلول را در یک ردیف پیدا کنید {#find-the-index-of-a-cell-in-a-row}

در نهایت، ممکن است لازم باشد تغییراتی در یک سلول خاص ایجاد کنید، و می توانید این کار را با شاخص سلول نیز انجام دهید.

مثال کد زیر نشان می دهد که چگونه شاخص یک سلول را در یک ردیف بازیابی کنیم:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "retrieve-cell-index.h" >}}

## کار با ستون ها

در مدل Aspose.Words Document Object (DOM)، گره [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) از گره های [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) و سپس گره های [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) تشکیل شده است. بنابراین، در مدل شیء `Document` از Aspose.Words، مانند اسناد Word، هیچ مفهومی از یک ستون وجود ندارد.

با طراحی، ردیف های جدول در Microsoft Word و Aspose.Words کاملا مستقل هستند و خواص و عملیات اساسی فقط در ردیف ها و سلول های جدول وجود دارد. این به جداول امکان داشتن ویژگی های جالب را می دهد:

- هر ردیف جدول می تواند تعداد سلول های کاملا متفاوتی داشته باشد
- به صورت عمودی، سلول های هر ردیف می توانند عرض های مختلفی داشته باشند
- امکان پیوستن جداول با فرمت های ردیف مختلف و تعداد سلول ها وجود دارد

هر عملیاتی که روی ستون ها انجام می شود در واقع "میانبر" است که عملیات را با تغییر سلول های ردیف به گونه ای انجام می دهد که به نظر می رسد آنها به ستون ها اعمال می شوند. یعنی شما می توانید عملیات را بر روی ستون ها با تکرار بر روی همان فهرست سلولی ردیف جدول انجام دهید.

مثال کد زیر چنین عملیاتی را با اثبات یک کلاس نما که سلول هایی را که یک "ستون" از یک جدول را تشکیل می دهند جمع آوری می کند، ساده می کند:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "column-class.h" >}}

مثال کد زیر نشان می دهد که چگونه یک ستون خالی را در یک جدول قرار دهید:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "insert-blank-column.h" >}}

مثال کد زیر نشان می دهد که چگونه یک ستون را از یک جدول در یک سند حذف کنیم:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "remove-column.h" >}}

## ردیف ها را به عنوان ردیف های هدر مشخص کنید

شما می توانید ردیف اول را در جدول به عنوان ردیف سرصفحه فقط در صفحه اول یا در هر صفحه تکرار کنید اگر جدول به چند قسمت تقسیم شود. در Aspose.Words می توانید ردیف هدر را در هر صفحه با استفاده از ویژگی [HeadingFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_headingformat/) تکرار کنید.

همچنین می توانید چندین ردیف هدر را علامت بزنید اگر چنین ردیف هایی یکی پس از دیگری در ابتدای جدول قرار داشته باشند. برای انجام این کار، باید ویژگی های **HeadingFormat** را به این ردیف ها اعمال کنید.

{{% alert color="primary" %}}

توجه داشته باشید که ردیف های سرصفحه در جداول آشیانه ای کار نمی کنند. یعنی اگر یک جدول در داخل یک جدول دیگر داشته باشید، این تنظیم هیچ تاثیری نخواهد داشت. این محدودیت Microsoft Word است که اجازه این را نمی دهد، نه Aspose.Words.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه یک جدول بسازیم که شامل ردیف های هدر است که در صفحات بعدی تکرار می شوند:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "repeat-rows-on-subsequent-pages.h" >}}

## جداول و ردیف ها را از شکستن صفحات نگه دارید

گاهی اوقات محتویات یک جدول نباید در صفحات تقسیم شود. به عنوان مثال، اگر یک عنوان بالای یک جدول باشد، عنوان و جدول همیشه باید در یک صفحه نگه داشته شوند تا ظاهر مناسب حفظ شود.

دو تکنیک جداگانه وجود دارد که برای دستیابی به این قابلیت مفید است:

- `Allow row break across pages` که به ردیف های جدول اعمال می شود
- `Keep with next` که به پاراگراف های سلول های جدول اعمال می شود

به طور پیش فرض، ویژگی های بالا غیرفعال هستند.

### از شکستن یک ردیف در صفحات جلوگیری کنید {#keep-a-row-from-breaking-across-pages}

این شامل محدود کردن محتوای داخل سلول های یک ردیف از تقسیم شدن در یک صفحه است. در Microsoft Word، این می تواند در زیر ویژگی های جدول به عنوان گزینه "اجازه دهید ردیف در صفحات شکسته شود"یافت شود. در Aspose.Words این زیر [RowFormat](hhttps://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/) شیء [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) به عنوان ویژگی [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_allowbreakacrosspages/) یافت می شود.

مثال کد زیر نشان می دهد که چگونه ردیف های شکستن را در صفحات برای هر ردیف در یک جدول غیرفعال کنیم:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "row-format-disable-break-across-pages.h" >}}

### نگه داشتن یک جدول از شکستن در صفحات {#keep-a-table-from-breaking-across-pages}

برای جلوگیری از تقسیم جدول در صفحات، باید مشخص کنیم که می خواهیم محتوای موجود در جدول با هم باقی بماند.

برای انجام این کار، Aspose.Words از یک روش استفاده می کند که به کاربران اجازه می دهد تا یک جدول را انتخاب کنند و پارامتر [KeepWithNext](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_keepwithnext/) را برای هر پاراگراف در سلول های جدول به true فعال کنند. استثنا آخرین پاراگراف در جدول است که باید به false تنظیم شود.

مثال کد زیر نشان می دهد که چگونه یک جدول را برای ماندن در یک صفحه تنظیم کنید:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "keep-table-together.h" >}}
