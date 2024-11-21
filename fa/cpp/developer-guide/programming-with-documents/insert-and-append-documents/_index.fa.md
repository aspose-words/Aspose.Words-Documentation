---
title: وارد کردن و اضافه کردن اسناد در C++
second_title: Aspose.Words برای C++
articleTitle: اسناد را وارد و اضافه کنید
linktitle: اسناد را وارد و اضافه کنید
description: "اسناد را به یک ترکیب کنید: یک سند را با استفاده از find and replace، merge field، bookmark یا به سادگی در انتهای سند وارد یا به یک سند جدید یا موجود اضافه کنید."
type: docs
weight: 80
url: /fa/cpp/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

گاهی اوقات لازم است چندین سند را در یک ترکیب کنید. شما می توانید این کار را به صورت دستی انجام دهید یا می توانید از ویژگی Aspose.Words insert یا append استفاده کنید.

عملیات insert به شما امکان می دهد محتوای اسناد ایجاد شده قبلی را در یک سند جدید یا موجود وارد کنید.

به نوبه خود، ویژگی append به شما امکان می دهد فقط در انتهای سند دیگری یک سند اضافه کنید.

در این مقاله نحوه درج یا الحاق سند به سند دیگر به روش های مختلف توضیح داده شده و خصوصیات مشترکی که می توانید هنگام درج یا الحاق اسناد اعمال کنید شرح داده شده است.

## یک سند وارد کنید

همانطور که در بالا ذکر شد، در Aspose.Words یک سند به عنوان یک درخت گره نشان داده می شود و عملیات وارد کردن یک سند به سند دیگر کپی کردن گره ها از درخت سند اول به درخت دوم است.

شما می توانید اسناد را در مکان های مختلف به روش های مختلف وارد کنید. به عنوان مثال، شما می توانید یک سند را از طریق یک عملیات جایگزینی، یک فیلد ادغام در طول یک عملیات ادغام، یا از طریق یک نشانه قرار دهید.

شما همچنین می توانید از روش [InsertDocument](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocument/) که شبیه به قرار دادن یک سند در Microsoft Word است، برای قرار دادن یک سند کامل در موقعیت فعلی نشانگر بدون هیچ گونه واردات قبلی استفاده کنید.

مثال کد زیر نشان می دهد که چگونه یک سند را با استفاده از روش `InsertDocument` وارد کنید:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-with-builder.h" >}}

زیربخش های زیر گزینه هایی را توصیف می کنند که در طی آن می توانید یک سند را در سند دیگر قرار دهید.

### وارد کردن یک سند در طول عملیات Find and Replace {#insert-a-document-during-find-and-replace-operation}

شما می توانید اسناد را در حین انجام عملیات find and replace وارد کنید. به عنوان مثال، یک سند می تواند شامل پاراگراف هایی با متن [INTRODUCTION] و [CONCLUSION] باشد. اما در سند نهایی، شما باید آن پاراگراف ها را با محتوای بدست آمده از سند خارجی دیگر جایگزین کنید. برای رسیدن به این هدف، باید یک کنترل کننده برای رویداد replace ایجاد کنید.

مثال کد زیر نشان می دهد که چگونه یک کنترل کننده برای رویداد جایگزین ایجاد کنید تا بعدا در فرآیند وارد کردن از آن استفاده کنید:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-replace-handler.h" >}}

مثال کد زیر نشان می دهد که چگونه محتوای یک سند را در طول عملیات find and replace وارد دیگری کنید:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-replace.h" >}}

### یک سند را در طول Mail Merge عملیات {#insert-a-document-during-mail-merge-operation}وارد کنید

شما می توانید یک سند را در یک فیلد ادغام در طول یک عملیات mail merge وارد کنید. به عنوان مثال، یک قالب mail merge می تواند شامل یک فیلد ادغام مانند [Summary] باشد. اما در سند نهایی، شما باید محتوای بدست آمده از یک سند خارجی دیگر را در این فیلد ادغام قرار دهید. برای رسیدن به این هدف، شما باید یک کنترل کننده برای رویداد ادغام ایجاد کنید.

مثال کد زیر نشان می دهد که چگونه یک کنترل کننده برای رویداد ادغام ایجاد کنیم تا بعدا در فرآیند وارد کردن از آن استفاده کنیم:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-mail-merge-handler.h" >}}

مثال کد زیر نشان می دهد که چگونه یک سند را با استفاده از کنترل کننده ایجاد شده در فیلد ادغام وارد کنید:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-mail-merge.h" >}}

### یک سند را در نشانک قرار دهید

شما می توانید یک فایل متنی را به یک سند وارد کنید و بلافاصله پس از یک نشانه که در سند تعریف کرده اید، آن را وارد کنید. برای انجام این کار، یک پاراگراف نشانه گذاری شده ایجاد کنید که در آن می خواهید سند وارد شود.

مثال کدگذاری زیر نشان می دهد که چگونه محتویات یک سند را در یک سند دیگر به یک نشانه گذاری وارد کنید:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-bookmark.h" >}}

{{% alert color="primary" %}}

توجه داشته باشید که علامت گذاری نباید چندین پاراگراف یا متن را که می خواهید در سند نهایی شما ظاهر شود، شامل شود.

{{% /alert %}}

## اضافه کردن یک سند

شما ممکن است یک مورد استفاده داشته باشید که در آن شما باید صفحات اضافی از یک سند تا پایان یک سند موجود را شامل شوید. برای انجام این کار، فقط باید روش [AppendDocument](https://reference.aspose.com/words/cpp/aspose.words/document/appenddocument/) را فراخوانی کنید تا یک سند به پایان یک سند دیگر اضافه شود.

{{% alert color="primary" %}}

توجه داشته باشید که [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/) یک روش سطح گره در یک سند است. برای مثال، شما می توانید یک پاراگراف ایجاد کنید، ویژگی های قالب بندی را تنظیم کنید، و سپس آن را به عنوان یک کودک به بدن با استفاده از روش **AppendChild** اضافه کنید.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه یک سند را به پایان یک سند دیگر اضافه کنید:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "keep-source-formatting.h" >}}

## وارد کردن و وارد کردن گره ها به صورت دستی {#import-and-insert-nodes-manually}

Aspose.Words به شما اجازه می دهد تا اسناد را به طور خودکار بدون نیاز به واردات قبلی وارد و اضافه کنید. با این حال، اگر شما نیاز به وارد کردن یا اضافه کردن یک گره خاص از سند خود، مانند یک بخش یا یک پاراگراف، سپس ابتدا شما نیاز به وارد کردن این گره به صورت دستی.

هنگامی که شما نیاز به وارد کردن یا اضافه کردن یک بخش یا پاراگراف به دیگری دارید، اساسا باید گره های درخت گره سند اول را با استفاده از روش [ImportNode](https://reference.aspose.com/words/cpp/aspose.words/nodeimporter/importnode/) به دومین وارد کنید. پس از وارد کردن گره های خود، باید از روش [InsertAfter](https://reference.aspose.com/words/cpp/aspose.words/compositenode/insertafter/)/[InsertBefore](https://reference.aspose.com/words/cpp/aspose.words/compositenode/insertbefore/) برای وارد کردن یک گره جدید پس از/قبل از گره مرجع استفاده کنید. این به شما اجازه می دهد تا فرآیند وارد کردن را با وارد کردن گره ها از یک سند و وارد کردن آن در موقعیت های داده شده سفارشی کنید.

شما همچنین می توانید از روش [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/) برای اضافه کردن یک گره مشخص شده جدید به پایان لیست گره های کودک استفاده کنید، به عنوان مثال، اگر می خواهید محتوا را در سطح پاراگراف به جای سطح بخش اضافه کنید.

مثال کد زیر نشان می دهد که چگونه گره ها را به صورت دستی وارد کنید و آنها را پس از یک گره خاص با استفاده از روش **InsertAfter** وارد کنید:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-as-nodes.h" >}}

{{% alert color="primary" %}}

واردات یک گره جدید ایجاد می کند که یک کپی از گره اصلی است و برای قرار دادن در سند مقصد مناسب است.

{{% /alert %}}

محتوا به صورت بخش به بخش وارد سند مقصد می شود، به این معنی که تنظیمات، مانند تنظیم صفحه و سرصفحه ها یا پاورقی ها، در هنگام وارد کردن حفظ می شوند. همچنین مفید است که توجه داشته باشید که شما می توانید تنظیمات قالب بندی را هنگام وارد کردن یا اضافه کردن یک سند برای مشخص کردن چگونگی پیوستن دو سند به هم تعریف کنید.

## خواص مشترک برای وارد کردن و اضافه کردن اسناد {#common-properties-for-insert-and-append-documents}

هر دو [InsertDocument](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocument/) و [AppendDocument](https://apireference.codeporting.com/native/cs2cpp/namespace/system#a6b77ccd8c49df28c153be0462cdfdf49) روش ها [ImportFormatMode](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/) و [ImportFormatOptions](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/) را به عنوان پارامترهای ورودی قبول می کنند. **ImportFormatMode** به شما اجازه می دهد تا کنترل کنید که چگونه قالب بندی سند در هنگام وارد کردن محتوا از یک سند به سند دیگر با انتخاب حالت های مختلف فرمت مانند [UseDestinationStyles](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/)، [KeepSourceFormatting](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/) و [KeepDifferentStyles](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/) ادغام می شود. **ImportFormatOptions** به شما اجازه می دهد گزینه های مختلف واردات مانند [IgnoreHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_ignoreheaderfooter/), [IgnoreTextBoxes](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_ignoretextboxes/), [KeepSourceNumbering](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_keepsourcenumbering/), [MergePastedLists](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_mergepastedlists/), و [SmartStyleBehavior](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_smartstylebehavior/).

Aspose.Words به شما اجازه می دهد تا تجسم یک سند حاصل را با استفاده از ویژگی های [Section](https://reference.aspose.com/words/cpp/aspose.words/section/) و [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup) تنظیم کنید. ویژگی **PageSetup** شامل تمام ویژگی های یک بخش مانند [SectionStart](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_sectionstart/), [RestartPageNumbering](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_restartpagenumbering/), [PageStartingNumber](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_pagestartingnumber/), [Orientation](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_orientation/), و دیگران. رایج ترین مورد استفاده این است که ویژگی **SectionStart** را برای تعریف اینکه آیا محتوای اضافه شده در همان صفحه ظاهر می شود یا به یک صفحه جدید تقسیم می شود، تنظیم کنید.

{{% alert color="primary" %}}

توجه داشته باشید که ویژگی های **Section** و **PageSetup** کنترل نمی کنند که چگونه دو سند با هم وارد/اضافه می شوند. آنها فقط به شما امکان می دهند ظاهر سند نتیجه خود را تغییر دهید.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه یک سند را به سند دیگر اضافه کنیم در حالی که محتوای آن را از تقسیم در دو صفحه جلوگیری می کنیم:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "different-page-setup.h" >}}
