---
title: کار با ستون ها و Rows در Java
second_title: Aspose.Words برای Java
articleTitle: کار با ستون ها و Rows
linktitle: کار با ستون ها و Rows
description: "کار با بخش هایی از یک میز – ردیف ها، ستون ها و سلول ها با استفاده از Java... دانلود بازی Header Row Java..."
type: docs
weight: 30
url: /fa/java/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

برای کنترل بیشتر بر چگونگی کار جداول، یاد بگیرید که چگونه ستون ها و ردیف ها را دستکاری کنید.

## دانلود بازی Table Element Index

ستون ها، ردیف ها و سلول ها با دسترسی به گره سند انتخاب شده توسط شاخص آن مدیریت می شوند. پیدا کردن شاخص هر گره شامل جمع آوری تمام گره های کودک از نوع عنصر از گره والد، و سپس استفاده از آن است. [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node) روش برای پیدا کردن شاخص گره مورد نظر در مجموعه.

### پیدا کردن شاخص یک جدول در یک سند

گاهی اوقات ممکن است نیاز به تغییر در یک میز خاص در یک سند داشته باشید. برای انجام این کار، شما می توانید با نمایه آن به یک جدول مراجعه کنید.

مثال کد زیر نشان می دهد که چگونه شاخص یک جدول را در یک سند بازیابی کنید:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-table-index.java" >}}

### پیدا کردن شاخص یک رو در یک جدول

به طور مشابه، شما ممکن است نیاز به تغییر در یک ردیف خاص در یک جدول انتخاب شده داشته باشید. برای انجام این کار، شما همچنین می توانید به یک ردیف با شاخص آن اشاره کنید.

مثال کد زیر نشان می دهد که چگونه شاخص یک ردیف را در یک جدول بازیابی کنید:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-row-index.java" >}}

### پیدا کردن شاخص یک سلول در یک ردیف

در نهایت، شما ممکن است نیاز به تغییر در یک سلول خاص داشته باشید و می توانید این کار را با شاخص سلول نیز انجام دهید.

مثال کد زیر نشان می دهد که چگونه شاخص یک سلول را در یک ردیف بازیابی کنید:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-cell-index.java" >}}

## کار با ستون ها

در Aspose.Words Document Object Model ()DOM) [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) گره شامل [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) گره ها و سپس [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) گره ها در این صورت، `Document` مدل Object Model Aspose.Wordsهمانند اسناد Word هیچ مفهومی از یک ستون وجود ندارد.

با طراحی، ردیف های جدول در Microsoft Word و Aspose.Words کاملا مستقل هستند و خواص و عملیات اصلی تنها در ردیف ها و سلول های جدول قرار دارند. این به جداول توانایی داشتن برخی از ویژگی های جالب را می دهد:

- هر ردیف جدول می تواند تعداد کاملا متفاوتی از سلول ها داشته باشد
- به صورت عمودی، سلول های هر ردیف می توانند عرض های متفاوتی داشته باشند
- امکان پیوستن به جداول با فرمت های ردیف مختلف و تعداد سلول ها

![work-with-columns-aspose-words-java](/words/java/working-with-columns-and-rows/working-with-columns-and-rows-1.png)

هر گونه عملیات انجام شده در ستون ها در واقع " میانبرها" هستند که عملیات را با تغییر سلول های ردیفی به گونه ای انجام می دهند که به نظر می رسد آنها به ستون ها اعمال می شوند. این است که شما می توانید عملیات را بر روی ستون ها انجام دهید، به سادگی آن را بر روی همان شاخص سلول ردیف جدول قرار دهید.

مثال کد زیر این عملیات را با اثبات یک کلاس نما ساده می کند که سلول هایی را جمع می کند که یک ستون را از یک جدول تشکیل می دهند:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "column-class.java" >}}

مثال کد زیر نشان می دهد که چگونه یک ستون سفید را به یک جدول وارد کنید:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "insert-blank-column.java" >}}

مثال کد زیر نشان می دهد که چگونه یک ستون را از یک جدول در یک سند حذف کنیم:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "remove-column.java" >}}

## دانلود آهنگ های Header Rows

شما می توانید اولین ردیف را در جدول به عنوان Header Row تنها در صفحه اول یا در هر صفحه تکرار کنید اگر جدول به چندین صفحه تقسیم شود. In In In Aspose.Words, می توانید Header Row را در هر صفحه با استفاده از صفحه تکرار کنید. [HeadingFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getHeadingFormat) مالکیت

شما همچنین می توانید چندین ردیف سر را علامت بزنید اگر این ردیف ها یکی پس از دیگری در ابتدای جدول قرار بگیرند. برای انجام این کار، شما باید درخواست کنید **HeadingFormat** خواص این ردیف ها

{{% alert color="primary" %}}

توجه داشته باشید که Header Rows در جداول لانه دار کار نمی کند. این است که اگر شما یک میز در داخل یک میز دیگر داشته باشید، این تنظیمات تاثیری نخواهد داشت. این محدودیت است Microsoft Word این اجازه را نمی دهد، نه Aspose.Words...

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه یک جدول ایجاد کنید که شامل Header Rows است که در صفحات بعدی تکرار می شود:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "repeat-rows-on-subsequent-pages.java" >}}

## جدول ها و روها را از شکستن در سراسر صفحات نگه دارید {#keep-tables-and-rows-from-breaking-across-pages}

زمان هایی وجود دارد که محتوای یک میز نباید در صفحات تقسیم شود. به عنوان مثال، اگر یک عنوان بالاتر از یک جدول باشد، عنوان و جدول باید همیشه در همان صفحه نگه داشته شود تا ظاهر مناسب را حفظ کند.

دو تکنیک جداگانه وجود دارد که برای دستیابی به این قابلیت مفید هستند:

- `Allow row break across pages`, که برای ردیف های جدول اعمال می شود
- `Keep with next`, که به پاراگراف در سلول های جدول اعمال می شود

به طور پیش فرض، خواص بالا غیرفعال هستند.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-1.png" alt="keep-tables-and-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

### نگه داشتن یک رو از شکستن در سراسر صفحات {#keep-a-row-from-breaking-across-pages}

این شامل محدود کردن محتوا در داخل سلول های یک ردیف از تقسیم شدن در یک صفحه است. In In In Microsoft Word, این می تواند در زیر Table Properties به عنوان گزینه "Allow ردیف برای شکستن در سراسر صفحات" پیدا شود. In In In Aspose.Words این در زیر یافت می شود. [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) یک شی [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) به عنوان اموال [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getAllowBreakAcrossPages)...

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-2.png" alt="keep-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

مثال کد زیر نشان می دهد که چگونه شکستن ردیف در سراسر صفحات برای هر ردیف در یک جدول را غیرفعال کنیم:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "row-format-disable-break-across-pages.java" >}}

### جدول را از شکستن در سراسر صفحات نگه دارید {#keep-a-table-from-breaking-across-pages}

برای متوقف کردن جدول از تقسیم صفحات، باید مشخص کنیم که می خواهیم محتوای موجود در داخل میز با هم باقی بماند.

برای انجام این کار، Aspose.Words از یک روش استفاده کنید که به کاربران اجازه می دهد یک جدول را انتخاب کنند و آن را فعال کنند. [KeepWithNext](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getKeepWithNext) پارامتر true برای هر پاراگراف درون سلول های جدول استثنا آخرین پاراگراف در جدول است که باید تنظیم شود false...

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-3.png" alt="keep-tables-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

مثال کد زیر نشان می دهد که چگونه یک میز تنظیم کنید تا در یک صفحه قرار بگیرید:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "keep-table-together.java" >}}
