---
title: درج و ضمیمه اسناد در C#
second_title: Aspose.Words برای .NET
articleTitle: درج و الحاق اسناد
linktitle: درج و الحاق اسناد
description: "اسناد را در یک ترکیب کنید: یک سند را با استفاده از پیدا کردن و جایگزینی، ادغام فیلد، نشانک یا به سادگی در انتهای سند در C# به یک سند جدید یا موجود اضافه کنید."
type: docs
weight: 80
url: /fa/net/insert-and-append-documents/
---

گاهی اوقات لازم است چندین سند را در یک سند ترکیب کنید. می توانید این کار را به صورت دستی انجام دهید یا می توانید از ویژگی درج یا ضمیمه Aspose.Words استفاده کنید.

عملیات درج به شما امکان می دهد محتوای اسناد ایجاد شده قبلی را در اسناد جدید یا موجود درج کنید.

به نوبه خود، ویژگی الحاق به شما امکان می دهد یک سند را فقط در انتهای یک سند دیگر اضافه کنید.

این مقاله نحوه درج یا الحاق یک سند به سند دیگر را به روش‌های مختلف توضیح می‌دهد و ویژگی‌های رایجی را که می‌توانید هنگام درج یا الحاق اسناد اعمال کنید، توضیح می‌دهد.

## یک سند {#insert-a-document} را وارد کنید

همانطور که در بالا ذکر شد، در Aspose.Words یک سند به صورت درختی از گره ها نشان داده می شود و عملیات درج یک سند در سند دیگر، کپی کردن گره ها از درخت سند اول به دومین درخت است.

شما می توانید اسناد را در مکان های مختلف به روش های مختلف وارد کنید. به عنوان مثال، می توانید یک سند را از طریق عملیات جایگزینی، یک فیلد ادغام در طول عملیات ادغام یا از طریق یک نشانک وارد کنید.

همچنین می‌توانید از روش [InsertDocument](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocument/#insertdocument/) یا [InsertDocumentInline](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocumentinline/)، که شبیه درج یک سند در Microsoft Word است، برای درج یک سند کامل در موقعیت مکان‌نمای فعلی بدون وارد کردن قبلی استفاده کنید.

مثال کد زیر نحوه درج یک سند با استفاده از روش **InsertDocument** را نشان می دهد:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-with-builder.cs" >}}

مثال کد زیر نحوه درج یک سند با استفاده از روش **InsertDocumentInline** را نشان می دهد:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-inline-with-builder.cs" >}}

بخش‌های فرعی زیر گزینه‌هایی را توضیح می‌دهند که طی آن می‌توانید یک سند را در سند دیگر وارد کنید.

### در حین عملیات یافتن و جایگزینی {#insert-a-document-during-find-and-replace-operation} یک سند وارد کنید

هنگام انجام عملیات یافتن و جایگزینی می توانید اسناد را وارد کنید. به عنوان مثال، یک سند می تواند شامل پاراگراف هایی با متن [مقدمه] و [نتیجه گیری] باشد. اما در سند نهایی باید آن پاراگراف ها را با محتوای بدست آمده از یک سند خارجی دیگر جایگزین کنید. برای دستیابی به آن، باید یک هندلر برای رویداد جایگزین ایجاد کنید.

مثال کد زیر نحوه ایجاد یک کنترل کننده برای رویداد جایگزین را نشان می دهد تا بعداً از آن در فرآیند درج استفاده شود:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace-handler.cs" >}}

مثال کد زیر نشان می دهد که چگونه محتوای یک سند را در طی عملیات Find and جایگزینی در سند دیگر وارد کنید:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace.cs" >}}

### در حین عملیات Mail Merge {#insert-a-document-during-mail-merge-operation} یک سند وارد کنید

شما می توانید یک سند را در یک فیلد ادغام در طول عملیات mail merge وارد کنید. برای مثال، یک الگوی mail merge می‌تواند شامل یک فیلد ادغام مانند [خلاصه] باشد. اما در سند نهایی، باید محتوای به دست آمده از یک سند خارجی دیگر را در این فیلد ادغام درج کنید. برای رسیدن به آن، باید یک کنترل کننده برای رویداد ادغام ایجاد کنید.

مثال کد زیر نحوه ایجاد یک کنترل کننده برای رویداد ادغام را نشان می دهد تا بعداً از آن در فرآیند درج استفاده شود:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge-handler.cs" >}}

مثال کد زیر نحوه درج یک سند را در فیلد ادغام با استفاده از کنترل کننده ایجاد شده نشان می دهد:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge.cs" >}}

### یک سند در نشانک {#insert-a-document-at-bookmark} وارد کنید

می توانید یک فایل متنی را در یک سند وارد کنید و آن را درست بعد از نشانکی که در سند تعریف کرده اید وارد کنید. برای انجام این کار، یک پاراگراف نشانه گذاری شده ایجاد کنید که می خواهید سند در آن درج شود.

مثال کدنویسی زیر نحوه درج محتوای یک سند را در یک نشانک در سند دیگر نشان می دهد:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-bookmark.cs" >}}

{{% alert color="primary" %}}

توجه داشته باشید که نشانک نباید چندین پاراگراف یا متنی را که می‌خواهید در سند نهایی شما نمایش داده شود، در بر گیرد.

{{% /alert %}}

## یک سند {#append-a-document} را اضافه کنید

ممکن است یک مورد استفاده داشته باشید که در آن باید صفحات اضافی را از یک سند تا انتهای یک سند موجود اضافه کنید. برای این کار، فقط باید روش [AppendDocument](https://reference.aspose.com/words/net/aspose.words/document/appenddocument/) را فراخوانی کنید تا یک سند به انتهای سند دیگر اضافه شود.

{{% alert color="primary" %}}

توجه داشته باشید که [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) یک روش سطح گره در یک سند است. برای مثال، می‌توانید یک پاراگراف ایجاد کنید، ویژگی‌های قالب‌بندی را تنظیم کنید، و سپس آن را به‌عنوان کودک با استفاده از روش **AppendChild** به بدنه اضافه کنید.

{{% /alert %}}

مثال کد زیر نحوه الحاق یک سند را به انتهای یک سند دیگر نشان می دهد:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "keep-source-formatting.cs" >}}

## وارد کردن و درج گره ها به صورت دستی {#import-and-insert-nodes-manually}

Aspose.Words به شما امکان می دهد اسناد را به طور خودکار بدون نیاز به وارد کردن قبلی وارد و اضافه کنید. با این حال، اگر نیاز دارید که گره خاصی از سند خود را وارد یا اضافه کنید، مانند یک بخش یا یک پاراگراف، ابتدا باید این گره را به صورت دستی وارد کنید.

هنگامی که نیاز دارید یک بخش یا پاراگراف را به قسمت دیگر اضافه یا اضافه کنید، اساساً باید گره های درخت گره سند اول را با استفاده از روش [ImportNode](https://reference.aspose.com/words/net/aspose.words/nodeimporter/importnode/) به دومی وارد کنید. پس از وارد کردن گره های خود، باید از روش [InsertAfter](https://reference.aspose.com/words/net/aspose.words/compositenode/insertafter/)/[InsertBefore](https://reference.aspose.com/words/net/aspose.words/compositenode/insertbefore/) برای درج یک گره جدید بعد از/قبل از گره مرجع استفاده کنید. این به شما این امکان را می دهد که فرآیند درج را با وارد کردن گره ها از یک سند و درج آن در موقعیت های داده شده سفارشی کنید.

همچنین می توانید از روش [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) برای اضافه کردن یک گره مشخص شده جدید به انتهای لیست گره های فرزند استفاده کنید، به عنوان مثال، اگر می خواهید محتوا را به جای در سطح بخش، در سطح پاراگراف اضافه کنید.

مثال کد زیر نحوه وارد کردن دستی گره ها و درج آنها را بعد از یک گره خاص با استفاده از روش **InsertAfter** نشان می دهد:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-as-nodes.cs" >}}

{{% alert color="primary" %}}

وارد کردن یک گره جدید ایجاد می کند که یک کپی از گره اصلی است و برای درج در سند مقصد مناسب است.

{{% /alert %}}

محتوا بخش به بخش به سند مقصد وارد می شود، به این معنی که تنظیمات، مانند تنظیم صفحه و سرصفحه ها یا پاورقی ها، در حین واردات حفظ می شوند. توجه به این نکته نیز مفید است که می‌توانید تنظیمات قالب‌بندی را زمانی که سندی را وارد یا اضافه می‌کنید تعریف کنید تا مشخص کنید که چگونه دو سند به یکدیگر متصل می‌شوند.

## ویژگی های رایج برای درج و الحاق اسناد {#common-properties-for-insert-and-append-documents}

هر دو روش [InsertDocument](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocument/) و [AppendDocument](https://reference.aspose.com/words/net/aspose.words/document/appenddocument/) [ImportFormatMode](https://reference.aspose.com/words/net/aspose.words/importformatmode/) و [ImportFormatOptions](https://reference.aspose.com/words/net/aspose.words/importformatoptions/) را به عنوان پارامترهای ورودی می پذیرند. **ImportFormatMode** به شما امکان می دهد با انتخاب حالت های قالب بندی مختلف مانند [UseDestinationStyles](https://reference.aspose.com/words/net/aspose.words/importformatmode/)، [KeepSourceFormatting](https://reference.aspose.com/words/net/aspose.words/importformatmode/)، و [KeepDifferentStyles](https://reference.aspose.com/words/net/aspose.words/importformatmode/)، نحوه ادغام قالب بندی سند را هنگام وارد کردن محتوا از یک سند به سند دیگر کنترل کنید. **ImportFormatOptions** به شما امکان می دهد گزینه های مختلف واردات مانند [IgnoreHeaderFooter](https://reference.aspose.com/words/net/aspose.words/importformatoptions/ignoreheaderfooter/)، [IgnoreTextBoxes](https://reference.aspose.com/words/net/aspose.words/importformatoptions/ignoretextboxes/)، [KeepSourceNumbering](https://reference.aspose.com/words/net/aspose.words/importformatoptions/keepsourcenumbering/)، [MergePastedLists](https://reference.aspose.com/words/net/aspose.words/importformatoptions/mergepastedlists/) و [SmartStyleBehavior](https://reference.aspose.com/words/net/aspose.words/importformatoptions/smartstylebehavior/) را انتخاب کنید.

Aspose.Words به شما این امکان را می‌دهد که با استفاده از ویژگی‌های [Section](https://reference.aspose.com/words/net/aspose.words/section/) و [PageSetup](https://reference.aspose.com/words/net/aspose.words/documentbuilder/pagesetup/)، تجسم یک سند حاصل را هنگامی که دو سند با هم در یک عملیات درج یا ضمیمه جمع می‌شوند، تنظیم کنید. ویژگی **PageSetup** شامل تمام ویژگی های یک بخش مانند [SectionStart](https://reference.aspose.com/words/net/aspose.words/pagesetup/sectionstart/)، [RestartPageNumbering](https://reference.aspose.com/words/net/aspose.words/pagesetup/restartpagenumbering/)، [PageStartingNumber](https://reference.aspose.com/words/net/aspose.words/pagesetup/pagestartingnumber/)، [Orientation](https://reference.aspose.com/words/net/aspose.words/pagesetup/orientation/) و غیره است. رایج ترین مورد استفاده، تنظیم ویژگی **SectionStart** برای تعیین اینکه آیا محتوای اضافه شده در همان صفحه ظاهر می شود یا به صفحه جدید تقسیم می شود، تنظیم می شود.

{{% alert color="primary" %}}

توجه داشته باشید که ویژگی‌های **Section** و **PageSetup** نحوه درج/الحاق دو سند را کنترل نمی‌کنند. آنها فقط به شما اجازه می دهند ظاهر سند نتیجه خود را تغییر دهید.

{{% /alert %}}

مثال کد زیر نشان می‌دهد که چگونه می‌توان یک سند را به سند دیگر اضافه کرد و در عین حال از تقسیم محتوا در دو صفحه جلوگیری کرد:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "different-page-setup.cs" >}}
