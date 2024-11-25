---
title: کار با ستون ها و ردیف ها در Java
second_title: Aspose.Words برای Java
articleTitle: کار با ستون ها و ردیف ها
linktitle: کار با ستون ها و ردیف ها
description: "کار با بخش هایی از یک جدول – ردیف ها، ستون ها و سلول ها با استفاده از Java. ردیف هدر Java را مشخص کنید."
type: docs
weight: 30
url: /fa/java/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

برای کنترل بیشتر بر نحوه کار جداول، یاد بگیرید که چگونه ستون ها و ردیف ها را دستکاری کنید.

## فهرست عناصر جدول را پیدا کنید

ستون ها، ردیف ها و سلول ها با دسترسی به گره سند انتخاب شده توسط شاخص آن مدیریت می شوند. پیدا کردن شاخص هر گره شامل جمع آوری تمام گره های کودک از نوع عنصر از گره اصلی است و سپس با استفاده از روش [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node) برای پیدا کردن شاخص گره مورد نظر در مجموعه.

### فهرست یک جدول را در یک سند پیدا کنید

گاهی اوقات ممکن است لازم باشد تغییراتی در یک جدول خاص در یک سند ایجاد کنید. برای انجام این کار، می توانید با فهرست آن به یک جدول مراجعه کنید.

مثال کد زیر نشان می دهد که چگونه شاخص یک جدول را در یک سند بازیابی کنیم:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-table-index.java" >}}

### پیدا کردن شاخص یک ردیف در یک جدول

به همین ترتیب، ممکن است لازم باشد در یک جدول انتخاب شده تغییراتی در یک ردیف خاص ایجاد کنید. برای انجام این کار، شما همچنین می توانید به یک ردیف با شاخص آن مراجعه کنید.

مثال کد زیر نشان می دهد که چگونه شاخص یک ردیف را در یک جدول بازیابی کنیم:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-row-index.java" >}}

### پیدا کردن شاخص یک سلول در یک ردیف

در نهایت، ممکن است لازم باشد تغییراتی در یک سلول خاص ایجاد کنید، و می توانید این کار را با شاخص سلول نیز انجام دهید.

مثال کد زیر نشان می دهد که چگونه شاخص یک سلول را در یک ردیف بازیابی کنیم:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-cell-index.java" >}}

## کار با ستون ها

در مدل Aspose.Words Document Object (DOM)، گره [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) از گره های [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) و سپس گره های [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) تشکیل شده است. بنابراین، در مدل شیء `Document` از Aspose.Words، مانند اسناد Word، هیچ مفهومی از یک ستون وجود ندارد.

با طراحی، ردیف های جدول در Microsoft Word و Aspose.Words کاملا مستقل هستند و خواص و عملیات اساسی فقط در ردیف ها و سلول های جدول وجود دارد. این به جداول امکان داشتن ویژگی های جالب را می دهد:

- هر ردیف جدول می تواند تعداد سلول های کاملا متفاوتی داشته باشد
- به صورت عمودی، سلول های هر ردیف می توانند عرض های مختلفی داشته باشند
- امکان پیوستن جداول با فرمت های ردیف مختلف و تعداد سلول ها وجود دارد

![work-with-columns-aspose-words-java](/words/java/working-with-columns-and-rows/working-with-columns-and-rows-1.png)

هر عملیاتی که روی ستون ها انجام می شود در واقع "میانبر" است که عملیات را با تغییر سلول های ردیف به گونه ای انجام می دهد که به نظر می رسد آنها به ستون ها اعمال می شوند. یعنی شما می توانید عملیات را بر روی ستون ها با تکرار بر روی همان فهرست سلولی ردیف جدول انجام دهید.

مثال کد زیر چنین عملیاتی را با اثبات یک کلاس نما که سلول هایی را که یک "ستون" از یک جدول را تشکیل می دهند جمع آوری می کند، ساده می کند:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "column-class.java" >}}

مثال کد زیر نشان می دهد که چگونه یک ستون خالی را در یک جدول قرار دهید:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "insert-blank-column.java" >}}

مثال کد زیر نشان می دهد که چگونه یک ستون را از یک جدول در یک سند حذف کنیم:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "remove-column.java" >}}

## ردیف ها را به عنوان ردیف های هدر مشخص کنید

شما می توانید ردیف اول را در جدول به عنوان ردیف سرصفحه فقط در صفحه اول یا در هر صفحه تکرار کنید اگر جدول به چند قسمت تقسیم شود. در Aspose.Words می توانید ردیف هدر را در هر صفحه با استفاده از ویژگی [HeadingFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getHeadingFormat) تکرار کنید.

همچنین می توانید چندین ردیف هدر را علامت بزنید اگر چنین ردیف هایی یکی پس از دیگری در ابتدای جدول قرار داشته باشند. برای انجام این کار، باید ویژگی های **HeadingFormat** را به این ردیف ها اعمال کنید.

{{% alert color="primary" %}}

توجه داشته باشید که ردیف های سرصفحه در جداول آشیانه ای کار نمی کنند. یعنی اگر یک جدول در داخل یک جدول دیگر داشته باشید، این تنظیم هیچ تاثیری نخواهد داشت. این محدودیت Microsoft Word است که اجازه این را نمی دهد، نه Aspose.Words.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه یک جدول بسازیم که شامل ردیف های هدر است که در صفحات بعدی تکرار می شوند:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "repeat-rows-on-subsequent-pages.java" >}}

## جداول و ردیف ها را از شکستن صفحات نگه دارید {#keep-tables-and-rows-from-breaking-across-pages}

گاهی اوقات محتویات یک جدول نباید در صفحات تقسیم شود. به عنوان مثال، اگر یک عنوان بالای یک جدول باشد، عنوان و جدول همیشه باید در یک صفحه نگه داشته شوند تا ظاهر مناسب حفظ شود.

دو تکنیک جداگانه وجود دارد که برای دستیابی به این قابلیت مفید است:

- `Allow row break across pages` که به ردیف های جدول اعمال می شود
- `Keep with next` که به پاراگراف های سلول های جدول اعمال می شود

به طور پیش فرض، ویژگی های بالا غیرفعال هستند.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-1.png" alt="keep-tables-and-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

### از شکستن یک ردیف در صفحات جلوگیری کنید {#keep-a-row-from-breaking-across-pages}

این شامل محدود کردن محتوای داخل سلول های یک ردیف از تقسیم شدن در یک صفحه است. در Microsoft Word، این می تواند در زیر ویژگی های جدول به عنوان گزینه "اجازه دهید ردیف در صفحات شکسته شود"یافت شود. در Aspose.Words این زیر [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) شیء [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) به عنوان ویژگی [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getAllowBreakAcrossPages) یافت می شود.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-2.png" alt="keep-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

مثال کد زیر نشان می دهد که چگونه ردیف های شکستن را در صفحات برای هر ردیف در یک جدول غیرفعال کنیم:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "row-format-disable-break-across-pages.java" >}}

### نگه داشتن یک جدول از شکستن در صفحات {#keep-a-table-from-breaking-across-pages}

برای جلوگیری از تقسیم جدول در صفحات، باید مشخص کنیم که می خواهیم محتوای موجود در جدول با هم باقی بماند.

برای انجام این کار، Aspose.Words از یک روش استفاده می کند که به کاربران اجازه می دهد تا یک جدول را انتخاب کنند و پارامتر [KeepWithNext](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getKeepWithNext) را برای هر پاراگراف در سلول های جدول به true فعال کنند. استثنا آخرین پاراگراف در جدول است که باید به false تنظیم شود.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-3.png" alt="keep-tables-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

مثال کد زیر نشان می دهد که چگونه یک جدول را برای ماندن در یک صفحه تنظیم کنید:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "keep-table-together.java" >}}
