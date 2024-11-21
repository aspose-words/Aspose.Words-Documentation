---
title: نمای کلی Document Builder در C#
second_title: Aspose.Words برای .NET
articleTitle: نمای کلی Document Builder
linktitle: نمای کلی Document Builder
type: docs
description: "DocumentBuilder به شما امکان می دهد اسناد پویا را از ابتدا بسازید یا عناصر جدیدی را با استفاده از C# به موارد موجود اضافه کنید. DocumentBuilder روش هایی را برای درج متن، چک باکس ها، جداول، تصاویر و سایر عناصر محتوا در .NET فراهم می کند."
weight: 30
url: /fa/net/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) یک کلاس قدرتمند است که با [Document](https://reference.aspose.com/words/net/aspose.words/document/) مرتبط است و به شما امکان می دهد اسناد پویا را از ابتدا بسازید یا عناصر جدیدی را به یک موجود اضافه کنید.

**DocumentBuilder** روش هایی را برای درج متن، چک باکس ها، اشیاء اول، پاراگراف ها، فهرست ها، جداول، تصاویر و سایر عناصر محتوا ارائه می دهد. به شما امکان می دهد فونت ها، قالب بندی پاراگراف ها یا بخش ها را مشخص کنید و سایر عملیات ها را انجام دهید.

## Document Builder یا Aspose.Words DOM

**DocumentBuilder** کلاس‌ها و روش‌های موجود در Aspose.Words Document Object Model (DOM) را تکمیل می‌کند تا متداول‌ترین وظایف ساخت سند را ساده کند. یعنی شما می توانید محتوای اسناد را هم از طریق Aspose.Words DOM که نیاز به درک خوب ساختار درختی دارد و هم با استفاده از DocumentBuilder ایجاد و تغییر دهید. `DocumentBuilder` یک "نما" برای ساختار پیچیده **Document** است که به شما امکان می دهد به سرعت و به راحتی محتوا و قالب بندی را وارد کنید.

عملیاتی که با **DocumentBuilder** امکان پذیر است، هنگام استفاده مستقیم از کلاس های Aspose.Words DOM نیز امکان پذیر است. با این حال، استفاده مستقیم از کلاس های Aspose.Words DOM معمولاً به خطوط کد بیشتری نسبت به استفاده از **DocumentBuilder** نیاز دارد.

## پیمایش اسناد

پیمایش سند بر اساس مفهوم مکان نما مجازی است که با استفاده از روش های مختلف **DocumentBuilder.MoveToXXX** مانند [MoveToDocumentStart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentstart/) و [MoveToField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetofield/) می توانید به مکان دیگری در سند بروید. هنگام فراخوانی متدهای [Write](https://reference.aspose.com/words/net/aspose.words/documentbuilder/write/)، [Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/write/ln/index)، [InsertBreak](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertbreak/) و موارد دیگر، این مکان‌نما مجازی مکان درج متن را نشان می‌دهد. برای اطلاعات بیشتر در مورد مکان نما مجازی، مقاله زیر "ناوبری با مکان نما" را ببینید.

مثال کد زیر نحوه پیمایش به یک نشانک را نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cs" >}}

## ساخت و اصلاح سند

Aspose.Words API چندین کلاس را ارائه می دهد که مسئول قالب بندی عناصر مختلف یک سند هستند. هر یک از کلاس‌ها ویژگی‌های قالب‌بندی مربوط به یک عنصر سند خاص، مانند متن، پاراگراف، بخش و موارد دیگر را در بر می‌گیرد. به عنوان مثال، کلاس [Font](https://reference.aspose.com/words/net/aspose.words/font/) ویژگی های قالب بندی کاراکتر را نشان می دهد، کلاس [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) ویژگی های قالب بندی پاراگراف و غیره را نشان می دهد. اشیاء این کلاس‌ها توسط ویژگی‌های **DocumentBuilder** مربوطه، که همان نام‌های کلاس‌ها هستند، برگردانده می‌شوند. بنابراین، می توانید به آنها دسترسی داشته باشید و قالب بندی مورد نظر را در طول ساخت سند تنظیم کنید.

همچنین می‌توانید با استفاده از روش `Write` یا هر یک از روش‌های **DocumentBuilder.InsertXXX**، مانند [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/#insertfield/)، [InsertHtml](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthtml/#inserthtml/) و روش‌های مشابه، متن، چک باکس، شی ole، تصاویر، نشانک‌ها، فیلدهای فرم و سایر عناصر سند را در موقعیت مکان‌نما وارد کنید.

بیایید ببینیم چگونه با استفاده از **DocumentBuilder** یک سند ساده ایجاد کنیم.

### با استفاده از DocumentBuilder یک سند ایجاد کنید

برای شروع، باید یک **DocumentBuilder** ایجاد کنید و آن را با یک شی **Document** مرتبط کنید. شما یک نمونه جدید از **DocumentBuilder** را با فراخوانی سازنده آن ایجاد می کنید و آن را به یک شی **Document** برای پیوست به سازنده ارسال می کنید.

برای درج یک متن، رشته متنی را که باید در سند وارد کنید به روش **Write** منتقل کنید.

مثال کد زیر نحوه ایجاد یک سند ساده با استفاده از سازنده سند را نشان می دهد.

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Quick-Start-HelloWorld-HelloWorld.cs" >}}

### Document Formatting را مشخص کنید

ویژگی [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) قالب بندی متن را تعریف می کند. این شی شامل ویژگی های مختلف فونت (نام فونت، اندازه فونت، رنگ و غیره) است. برخی از ویژگی های مهم فونت نیز با ویژگی های **DocumentBuilder** نشان داده می شوند تا به شما امکان دسترسی مستقیم به آنها را بدهند. اینها خواص بولی [Font.Bold](https://reference.aspose.com/words/net/aspose.words/font/bold/)، [Font.Italic](https://reference.aspose.com/words/net/aspose.words/font/italic/) و [Font.Underline](https://reference.aspose.com/words/net/aspose.words/font/underline/) هستند.

مثال کد زیر نحوه درج یک متن فرمت شده با استفاده از **DocumentBuilder** را نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) قالب‌بندی کاراکتری را مشخص می‌کند که برای تمام متن درج شده از موقعیت فعلی در سند به بعد اعمال می‌شود.
- [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) قالب بندی پاراگراف را برای جاری و تمام پاراگراف هایی که قرار است درج شوند مشخص می کند.
- [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/) ویژگی های صفحه و بخش را برای بخش فعلی و کل قسمتی که درج می شود مشخص می کند.
- [CellFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/cellformat/) و [RowFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/rowformat/) ویژگی‌های قالب‌بندی را مشخص می‌کنند که از موقعیت فعلی سند به بعد بر روی سلول‌ها و ردیف‌های جدول اعمال می‌شود.

در این وضعیت، "جریان" به معنای موقعیت، پاراگراف، بخش، سلول یا ردیفی است که مکان نما در آن قرار دارد.

{{% /alert %}}

{{% alert color="primary" %}}

توجه داشته باشید که ویژگی‌های **Font**، **ParagraphFormat** و **PageSetup** هر زمان که به مکان دیگری در سند بروید به‌روزرسانی می‌شوند تا ویژگی‌های قالب‌بندی این مکان را منعکس کنند.

{{% /alert %}}
