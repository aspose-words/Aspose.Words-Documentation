---
title: Insert and Append Files Java
second_title: Aspose.Words برای Java
articleTitle: Insert and Append Files
linktitle: Insert and Append Files
description: "ترکیب اسناد به یک: قرار دادن یا قرار دادن یک سند به یک سند جدید یا موجود با استفاده از پیدا کردن و جایگزینی، فیلد ادغام، نشانه یا به سادگی در پایان سند در پایان Java..."
type: docs
weight: 80
url: /fa/java/insert-and-append-documents/
---

گاهی اوقات لازم است چندین سند را به یک ترکیب کنید. شما می توانید این کار را به صورت دستی انجام دهید یا می توانید از آن استفاده کنید. Aspose.Words وارد کردن یا قابلیت append

عملیات ورودی به شما اجازه می دهد تا محتوای اسناد قبلا ایجاد شده را به یک جدید یا موجود وارد کنید.

به نوبه خود، ویژگی Append به شما اجازه می دهد تا یک سند را فقط در پایان یک سند دیگر اضافه کنید.

این مقاله توضیح می دهد که چگونه یک سند را به روش های مختلف به یکدیگر وارد کنید و ویژگی های مشترکی را که می توانید در هنگام قرار دادن یا ارسال اسناد درخواست دهید، توصیف کنید.

## اضافه کردن یک سند

همانطور که در بالا ذکر شد، در Aspose.Words یک سند به عنوان یک درخت گره ها نشان داده می شود و عملکرد قرار دادن یک سند به یک دیگر، کپی کردن گره ها از درخت سند اول به درخت دوم است.

شما می توانید اسناد را به روش های مختلف وارد کنید. به عنوان مثال، شما می توانید یک سند را از طریق یک عملیات جایگزین، یک میدان ادغام در طول یک عملیات ادغام شده یا از طریق یک نشانه وارد کنید.

شما همچنین می توانید از [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) یا [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions) روش، که شبیه به قرار دادن یک سند در Microsoft Word, برای قرار دادن یک سند کامل در موقعیت مکانی فعلی بدون واردات قبلی.

مثال کد زیر نشان می دهد که چگونه یک سند را با استفاده از **InsertDocument** روش:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-with-builder.java" >}}

مثال کد زیر نشان می دهد که چگونه یک سند را با استفاده از **InsertDocumentInline** روش:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-inline-with-builder.java" >}}

زیربخش ها گزینه هایی را توصیف می کنند که در آن می توانید یک سند را به یک دیگر وارد کنید.

### یک سند را در طول عملیات پیدا و جایگزین کنید {#insert-a-document-during-find-and-replace-operation}

شما می توانید اسناد را هنگام انجام عملیات پیدا و جایگزین کنید. به عنوان مثال، یک سند می تواند حاوی پاراگراف هایی با متن (INTRODUCTION) و [CONUSION] باشد. اما در سند نهایی، شما باید این پاراگراف ها را با محتوایی که از یک سند خارجی دیگر به دست آمده جایگزین کنید. برای رسیدن به آن، شما باید یک کارگزار برای جایگزینی رویداد ایجاد کنید.

مثال کد زیر نشان می دهد که چگونه برای ایجاد یک مسئول برای جایگزینی رویداد برای استفاده بعد از آن در فرآیند قرار دادن:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace-handler.java" >}}

مثال کد زیر نشان می دهد که چگونه محتوای یک سند را در یک عمل پیدا و جایگزین به دیگری وارد کنید:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace.java" >}}

### اضافه کردن یک سند در طول Mail Merge عملیات {#insert-a-document-during-mail-merge-operation}

شما می توانید یک سند را در یک زمینه ادغام شده در طول یک mail merge عملیات برای مثال، mail merge قالب می تواند شامل یک میدان ادغام مانند [Summary] باشد. اما در سند نهایی، شما باید محتوای به دست آمده از یک سند خارجی دیگر را در این زمینه ادغام کنید. برای رسیدن به این هدف، شما باید یک کارگزار برای رویداد ادغام ایجاد کنید.

مثال کد زیر نشان می دهد که چگونه برای ایجاد یک مسئول برای ادغام رویداد برای استفاده بعد از آن در فرآیند قرار دادن:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge-handler.java" >}}

مثال کد زیر نشان می دهد که چگونه یک سند را در زمینه ادغام با استفاده از کارگزار ایجاد شده وارد کنید:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge.java" >}}

### اضافه کردن یک سند در Bookmark

شما می توانید یک فایل متنی را به یک سند وارد کنید و بلافاصله پس از یک نشانه که در سند تعریف کرده اید، آن را وارد کنید. برای انجام این کار، یک پاراگراف مشخص ایجاد کنید که می خواهید سند وارد شود.

مثال زیر نشان می دهد که چگونه محتوای یک سند را به یک نشانه در یک سند دیگر وارد کنید:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-bookmark.java" >}}

{{% alert color="primary" %}}

توجه داشته باشید که نشانه نباید چندین پاراگراف یا متن را که می خواهید در سند نهایی شما ظاهر شود، بسته بندی کند.

{{% /alert %}}

## Append a Document

شما ممکن است یک مورد استفاده داشته باشید که در آن شما باید صفحات اضافی را از یک سند به انتهای یک سند موجود اضافه کنید. برای انجام این کار، شما فقط باید تماس بگیرید [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) روش اضافه کردن یک سند به انتهای یک دیگر

{{% alert color="primary" %}}

توجه داشته باشید که [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) یک روش سطح گره در یک سند است. به عنوان مثال، شما می توانید یک پاراگراف ایجاد کنید، ویژگی های قالب بندی را تنظیم کنید و سپس آن را به عنوان یک کودک به بدن با استفاده از آن قرار دهید. **AppendChild** روش

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه یک سند را به انتهای یک سند دیگر ارسال کنیم:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "keep-source-formatting.java" >}}

## واردات و Insert Nodes Manual {#import-and-insert-nodes-manually}

Aspose.Words به شما اجازه می دهد تا اسناد را به طور خودکار بدون هیچ گونه الزامات واردات قبلی وارد و ارسال کنید. با این حال، اگر شما باید یک گره خاص از سند خود، مانند یک بخش یا یک پاراگراف را وارد کنید، ابتدا باید این گره را به صورت دستی وارد کنید.

هنگامی که شما نیاز به قرار دادن یا قرار دادن یک بخش یا پاراگراف به بخش دیگر دارید، اساسا باید گره های درخت گره اول را با استفاده از لایه دوم وارد کنید. [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/document/#importNode-com.aspose.words.Node-boolean) روش پس از وارد کردن گره ها، باید از آن استفاده کنید. [InsertAfter](https://reference.aspose.com/words/java/com.aspose.words/document/#insertBefore-com.aspose.words.Node-com.aspose.words.Node) روش برای قرار دادن یک گره جدید پس از / قبل از گره مرجع. این اجازه می دهد تا شما را به سفارشی سازی فرایند ورود با واردات گره ها از یک سند و قرار دادن آن در موقعیت های معین.

شما همچنین می توانید از [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) روش اضافه کردن یک گره مشخص جدید به انتهای لیست گره های کودک، به عنوان مثال، اگر می خواهید به جای سطح بخش، محتوای را در سطح پاراگراف قرار دهید.

مثال کد زیر نشان می دهد که چگونه گره های وارد دستی را وارد کنید و آنها را پس از یک گره خاص با استفاده از گره خاص قرار دهید. **InsertAfter** روش:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-as-nodes.java" >}}

{{% alert color="primary" %}}

واردات یک گره جدید ایجاد می کند که یک کپی از گره اصلی و مناسب برای قرار دادن در سند مقصد است.

{{% /alert %}}

محتوا به بخش سند مقصد توسط بخش وارد می شود، به این معنی که تنظیمات، مانند تنظیمات صفحه و هدر یا پا، در طول واردات حفظ می شوند. همچنین مفید است که توجه داشته باشید که شما می توانید تنظیمات قالب بندی را زمانی که یک سند را وارد می کنید یا ارسال می کنید، تعریف کنید تا مشخص کنید که چگونه دو سند به هم پیوسته اند.

## ویژگی های مشترک برای Insert و Append Files {#common-properties-for-insert-and-append-documents}

هر دو [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) و [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) روش های پذیرش [ImportFormatMode](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/) و [ImportFormatOptions](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/) به عنوان پارامترهای ورودی The The The The The The **ImportFormatMode** اجازه می دهد تا شما را به کنترل چگونه قالب بندی سند ادغام زمانی که شما واردات محتوا از یک سند به یک دیگر با انتخاب حالت های مختلف فرمت مانند مانند انتخاب حالت های مختلف فرمت مانند [UseDestinationStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#USE-DESTINATION-STYLES), [KeepSourceFormatting](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-SOURCE-FORMATTING), و [KeepDifferentStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-DIFFERENT-STYLES)... The The The The The The **ImportFormatOptions** اجازه می دهد گزینه های مختلف واردات مانند [IgnoreHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreHeaderFooter), [IgnoreTextBoxes](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreTextBoxes), [KeepSourceNumbering](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getKeepSourceNumbering), [MergePastedLists](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getMergePastedLists), و [SmartStyleBehavior](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getSmartStyleBehavior)...

Aspose.Words به شما اجازه می دهد تا تجسم یک سند نتیجه را تنظیم کنید زمانی که دو سند با هم در یک عملیات ورودی یا Append با استفاده از آن اضافه می شوند. [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) و [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) خواص The The The The The The **PageSetup** مالکیت شامل تمام ویژگی های یک بخش مانند [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getSectionStart), [RestartPageNumbering](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getRestartPageNumbering), [PageStartingNumber](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getPageStartingNumber), [Orientation](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOrientation), و دیگران. رایج ترین مورد استفاده این است که تنظیم کنید **SectionStart** ملک برای تعریف اینکه آیا محتوای اضافه شده در یک صفحه ظاهر می شود یا به یک صفحه جدید تقسیم می شود.

{{% alert color="primary" %}}

توجه داشته باشید که **Section** و **PageSetup** خواص کنترل نمی کنند که چگونه دو سند در کنار هم قرار می گیرند. آنها فقط به شما اجازه می دهند ظاهر سند نتیجه خود را تغییر دهید.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه یک سند را به یک دیگر اضافه کنید در حالی که محتوا را از دو صفحه جدا نگه دارید:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "different-page-setup.java" >}}
