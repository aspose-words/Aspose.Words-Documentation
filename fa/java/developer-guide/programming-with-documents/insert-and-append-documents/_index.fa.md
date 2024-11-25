---
title: وارد کردن و اضافه کردن اسناد در Java
second_title: Aspose.Words برای Java
articleTitle: اسناد را وارد و اضافه کنید
linktitle: اسناد را وارد و اضافه کنید
description: "اسناد را به یک ترکیب کنید: یک سند را به یک سند جدید یا موجود با استفاده از find and replace، merge field، bookmark یا به سادگی در انتهای سند در Java وارد یا اضافه کنید."
type: docs
weight: 80
url: /fa/java/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

گاهی اوقات لازم است چندین سند را در یک ترکیب کنید. شما می توانید این کار را به صورت دستی انجام دهید یا می توانید از ویژگی Aspose.Words insert یا append استفاده کنید.

عملیات insert به شما امکان می دهد محتوای اسناد ایجاد شده قبلی را در یک سند جدید یا موجود وارد کنید.

به نوبه خود، ویژگی append به شما امکان می دهد فقط در انتهای سند دیگری یک سند اضافه کنید.

در این مقاله نحوه درج یا الحاق سند به سند دیگر به روش های مختلف توضیح داده شده و خصوصیات مشترکی که می توانید هنگام درج یا الحاق اسناد اعمال کنید شرح داده شده است.

## یک سند وارد کنید

همانطور که در بالا ذکر شد، در Aspose.Words یک سند به عنوان یک درخت گره نشان داده می شود و عملیات وارد کردن یک سند به سند دیگر کپی کردن گره ها از درخت سند اول به درخت دوم است.

شما می توانید اسناد را در مکان های مختلف به روش های مختلف وارد کنید. به عنوان مثال، شما می توانید یک سند را از طریق یک عملیات جایگزینی، یک فیلد ادغام در طول یک عملیات ادغام، یا از طریق یک نشانه قرار دهید.

همچنین می توانید از روش [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) یا [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions) که شبیه به قرار دادن یک سند در Microsoft Word است، برای قرار دادن یک سند کامل در موقعیت فعلی نشانگر بدون وارد کردن قبلی استفاده کنید.

مثال کد زیر نشان می دهد که چگونه یک سند را با استفاده از روش **InsertDocument** وارد کنید:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-with-builder.java" >}}

مثال کد زیر نشان می دهد که چگونه یک سند را با استفاده از روش **InsertDocumentInline** وارد کنید:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-inline-with-builder.java" >}}

زیربخش های زیر گزینه هایی را توصیف می کنند که در طی آن می توانید یک سند را در سند دیگر قرار دهید.

### وارد کردن یک سند در طول عملیات Find and Replace {#insert-a-document-during-find-and-replace-operation}

شما می توانید اسناد را در حین انجام عملیات find and replace وارد کنید. به عنوان مثال، یک سند می تواند شامل پاراگراف هایی با متن [INTRODUCTION] و [CONCLUSION] باشد. اما در سند نهایی، شما باید آن پاراگراف ها را با محتوای بدست آمده از سند خارجی دیگر جایگزین کنید. برای رسیدن به این هدف، باید یک کنترل کننده برای رویداد replace ایجاد کنید.

مثال کد زیر نشان می دهد که چگونه یک کنترل کننده برای رویداد جایگزین ایجاد کنید تا بعدا در فرآیند وارد کردن از آن استفاده کنید:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace-handler.java" >}}

مثال کد زیر نشان می دهد که چگونه محتوای یک سند را در طول عملیات find and replace وارد دیگری کنید:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace.java" >}}

### یک سند را در طول Mail Merge عملیات {#insert-a-document-during-mail-merge-operation}وارد کنید

شما می توانید یک سند را در یک فیلد ادغام در طول یک عملیات Mail Merge وارد کنید. به عنوان مثال، یک قالب Mail Merge می تواند شامل یک فیلد ادغام مانند [Summary] باشد. اما در سند نهایی، شما باید محتوای بدست آمده از یک سند خارجی دیگر را در این فیلد ادغام قرار دهید. برای رسیدن به این هدف، شما باید یک کنترل کننده برای رویداد ادغام ایجاد کنید.

مثال کد زیر نشان می دهد که چگونه یک کنترل کننده برای رویداد ادغام ایجاد کنیم تا بعدا در فرآیند وارد کردن از آن استفاده کنیم:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge-handler.java" >}}

مثال کد زیر نشان می دهد که چگونه یک سند را با استفاده از کنترل کننده ایجاد شده در فیلد ادغام وارد کنید:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge.java" >}}

### یک سند را در نشانک قرار دهید

شما می توانید یک فایل متنی را به یک سند وارد کنید و بلافاصله پس از یک نشانه که در سند تعریف کرده اید، آن را وارد کنید. برای انجام این کار، یک پاراگراف نشانه گذاری شده ایجاد کنید که در آن می خواهید سند وارد شود.

مثال کدگذاری زیر نشان می دهد که چگونه محتویات یک سند را در یک سند دیگر به یک نشانه گذاری وارد کنید:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-bookmark.java" >}}

{{% alert color="primary" %}}

توجه داشته باشید که علامت گذاری نباید چندین پاراگراف یا متن را که می خواهید در سند نهایی شما ظاهر شود، شامل شود.

{{% /alert %}}

## اضافه کردن یک سند

شما ممکن است یک مورد استفاده داشته باشید که در آن شما باید صفحات اضافی از یک سند تا پایان یک سند موجود را شامل شوید. برای انجام این کار، فقط باید روش [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) را فراخوانی کنید تا یک سند به پایان یک سند دیگر اضافه شود.

{{% alert color="primary" %}}

توجه داشته باشید که [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) یک روش سطح گره در یک سند است. برای مثال، شما می توانید یک پاراگراف ایجاد کنید، ویژگی های قالب بندی را تنظیم کنید، و سپس آن را به عنوان یک کودک به بدن با استفاده از روش **AppendChild** اضافه کنید.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه یک سند را به پایان یک سند دیگر اضافه کنید:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "keep-source-formatting.java" >}}

## وارد کردن و وارد کردن گره ها به صورت دستی {#import-and-insert-nodes-manually}

Aspose.Words به شما اجازه می دهد تا اسناد را به طور خودکار بدون نیاز به واردات قبلی وارد و اضافه کنید. با این حال، اگر شما نیاز به وارد کردن یا اضافه کردن یک گره خاص از سند خود، مانند یک بخش یا یک پاراگراف، سپس ابتدا شما نیاز به وارد کردن این گره به صورت دستی.

هنگامی که شما نیاز به وارد کردن یا اضافه کردن یک بخش یا پاراگراف به دیگری دارید، اساسا باید گره های درخت گره سند اول را با استفاده از روش [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/document/#importNode-com.aspose.words.Node-boolean) به دومین وارد کنید. پس از وارد کردن گره های خود، باید از روش [InsertAfter](https://reference.aspose.com/words/java/com.aspose.words/document/#insertBefore-com.aspose.words.Node-com.aspose.words.Node) برای وارد کردن یک گره جدید پس از/قبل از گره مرجع استفاده کنید. این به شما اجازه می دهد تا فرآیند وارد کردن را با وارد کردن گره ها از یک سند و وارد کردن آن در موقعیت های داده شده سفارشی کنید.

شما همچنین می توانید از روش [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) برای اضافه کردن یک گره مشخص شده جدید به پایان لیست گره های کودک استفاده کنید، به عنوان مثال، اگر می خواهید محتوا را در سطح پاراگراف به جای سطح بخش اضافه کنید.

مثال کد زیر نشان می دهد که چگونه گره ها را به صورت دستی وارد کنید و آنها را پس از یک گره خاص با استفاده از روش **InsertAfter** وارد کنید:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-as-nodes.java" >}}

{{% alert color="primary" %}}

واردات یک گره جدید ایجاد می کند که یک کپی از گره اصلی است و برای قرار دادن در سند مقصد مناسب است.

{{% /alert %}}

محتوا به صورت بخش به بخش وارد سند مقصد می شود، به این معنی که تنظیمات، مانند تنظیم صفحه و سرصفحه ها یا پاورقی ها، در هنگام وارد کردن حفظ می شوند. همچنین مفید است که توجه داشته باشید که شما می توانید تنظیمات قالب بندی را هنگام وارد کردن یا اضافه کردن یک سند برای مشخص کردن چگونگی پیوستن دو سند به هم تعریف کنید.

## خواص مشترک برای وارد کردن و اضافه کردن اسناد {#common-properties-for-insert-and-append-documents}

هر دو روش [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) و [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) [ImportFormatMode](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/) و [ImportFormatOptions](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/) را به عنوان پارامترهای ورودی قبول می کنند. **ImportFormatMode** به شما اجازه می دهد تا کنترل کنید که چگونه قالب بندی سند در هنگام وارد کردن محتوا از یک سند به سند دیگر با انتخاب حالت های مختلف فرمت مانند [UseDestinationStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#USE-DESTINATION-STYLES)، [KeepSourceFormatting](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-SOURCE-FORMATTING) و [KeepDifferentStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-DIFFERENT-STYLES) ادغام می شود. **ImportFormatOptions** به شما اجازه می دهد گزینه های مختلف واردات مانند [IgnoreHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreHeaderFooter), [IgnoreTextBoxes](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreTextBoxes), [KeepSourceNumbering](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getKeepSourceNumbering), [MergePastedLists](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getMergePastedLists), و [SmartStyleBehavior](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getSmartStyleBehavior).

Aspose.Words به شما اجازه می دهد تا تجسم یک سند حاصل را با استفاده از ویژگی های [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) و [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) تنظیم کنید. ویژگی **PageSetup** شامل تمام ویژگی های یک بخش مانند [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getSectionStart), [RestartPageNumbering](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getRestartPageNumbering), [PageStartingNumber](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getPageStartingNumber), [Orientation](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOrientation), و دیگران. رایج ترین مورد استفاده این است که ویژگی **SectionStart** را برای تعریف اینکه آیا محتوای اضافه شده در همان صفحه ظاهر می شود یا به یک صفحه جدید تقسیم می شود، تنظیم کنید.

{{% alert color="primary" %}}

توجه داشته باشید که ویژگی های **Section** و **PageSetup** کنترل نمی کنند که چگونه دو سند با هم وارد/اضافه می شوند. آنها فقط به شما امکان می دهند ظاهر سند نتیجه خود را تغییر دهید.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه یک سند را به سند دیگر اضافه کنیم در حالی که محتوای آن را از تقسیم در دو صفحه جلوگیری می کنیم:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "different-page-setup.java" >}}
