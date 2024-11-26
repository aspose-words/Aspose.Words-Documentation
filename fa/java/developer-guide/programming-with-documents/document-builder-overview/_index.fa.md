---
title: نمای کلی سازنده اسناد در Java
second_title: Aspose.Words برای Java
articleTitle: نمای کلی سازنده اسناد
linktitle: نمای کلی سازنده اسناد
type: docs
description: "DocumentBuilder به شما اجازه می دهد تا اسناد پویا را از ابتدا بسازید یا عناصر جدید را به عناصر موجود اضافه کنید. DocumentBuilder روش هایی برای وارد کردن متن، checkboxes، جداول، تصاویر و سایر عناصر محتوا در Java فراهم می کند."
weight: 30
url: /fa/java/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) یک کلاس قدرتمند است که با [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) ارتباط دارد و شما را قادر می سازد تا اسناد پویا را از ابتدا ایجاد کنید یا عناصر جدید را به یک موجود اضافه کنید.

**DocumentBuilder**

## سند ساز یا Aspose.Words DOM

**DocumentBuilder**

عملیات که با **DocumentBuilder** امکان پذیر است نیز در هنگام استفاده از کلاس های Aspose.Words DOM به طور مستقیم امکان پذیر است. با این حال، استفاده از کلاس های Aspose.Words DOM به طور مستقیم معمولا به خطوط کد بیشتری نسبت به استفاده از **DocumentBuilder** نیاز دارد.

## ناوبری اسناد

ناوبری سند بر اساس مفهوم یک مکان نما مجازی است که با استفاده از روش های مختلف **DocumentBuilder.MoveToXXX** مانند [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) و [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean) می توانید به مکان دیگری در سند بروید. این مکان نما مجازی نشان می دهد که متن در هنگام فراخوانی روش ها کجا قرار می گیرد [Write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write-java.lang.String), [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int), و دیگران. برای کسب اطلاعات بیشتر در مورد مکان نما مجازی به مقاله زیر "ناوبری با مکان نما" مراجعه کنید.

مثال کد زیر نشان می دهد که چگونه به یک نشانه حرکت کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

## سند سازی و اصلاح

Aspose.Words API چندین کلاس را فراهم می کند که مسئول قالب بندی عناصر مختلف یک سند هستند. هر یک از کلاس ها ویژگی های قالب بندی مربوط به یک عنصر سند خاص مانند متن، پاراگراف، بخش و دیگران را در بر می گیرد. به عنوان مثال، کلاس [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) ویژگی های قالب بندی کاراکتر را نشان می دهد، کلاس [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) ویژگی های قالب بندی پاراگراف را نشان می دهد و غیره. اشیاء این کلاس ها توسط ویژگی های مربوطه **DocumentBuilder** که همان نام کلاس ها را دارند، بازگردانده می شوند. بنابراین، شما می توانید به آنها دسترسی داشته باشید و قالب بندی مورد نظر را در طول ساخت سند تنظیم کنید.

همچنین می توانید متن، checkbox، ole object، تصاویر، نشانه ها، زمینه های فرم و سایر عناصر سند را در موقعیت مکان نما با استفاده از روش `Write` یا هر یک از روش های **DocumentBuilder.InsertXXX** مانند [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean)، [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String) و روش های مشابه وارد کنید.

بیایید ببینیم چگونه یک سند ساده با استفاده از **DocumentBuilder** ایجاد کنیم.

### ایجاد یک سند با استفاده از DocumentBuilder

برای شروع، باید یک **DocumentBuilder** ایجاد کنید و آن را با یک **Document** مرتبط کنید. شما یک نمونه جدید از **DocumentBuilder** را با فراخوانی سازنده آن ایجاد می کنید و آن را به یک شی **Document** برای اتصال به سازنده منتقل می کنید.

برای قرار دادن یک متن، رشته متنی را که باید در سند وارد کنید به روش **Write** منتقل کنید.

مثال کد زیر نشان می دهد که چگونه یک سند ساده با استفاده از یک سازنده سند ایجاد کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-quickstart-HelloWorld-CreateNewDocument.java" >}}

### قالب بندی سند را مشخص کنید

ویژگی [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) قالب بندی متن را تعریف می کند. این شی شامل ویژگی های فونت مختلف (نام فونت، اندازه فونت، رنگ و غیره) است. برخی از ویژگی های مهم فونت نیز توسط ویژگی های **DocumentBuilder** نشان داده شده است تا به شما اجازه دسترسی مستقیم به آنها را بدهد. این ها ویژگی های بولی [Font.Bold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold)، [Font.Italic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic) و [Font.Underline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline) هستند.

مثال کد زیر نشان می دهد که چگونه یک متن فرمت شده را با استفاده از **DocumentBuilder**وارد کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) قالب بندی کاراکتر را مشخص می کند که برای تمام متن وارد شده از موقعیت فعلی در سند به بعد اعمال می شود.
- [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) قالب بندی پاراگراف را برای فعلی و تمام پاراگراف هایی که باید وارد شوند مشخص می کند.
- [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) ویژگی های صفحه و بخش را برای بخش فعلی و کل بخش که وارد خواهد شد مشخص می کند.
- [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) و [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) ویژگی های قالب بندی را مشخص کنید که از موقعیت فعلی در سند به سلول های جدول و ردیف ها اعمال می شود.

در این وضعیت، "جریان" به معنی موقعیت، پاراگراف، بخش، سلول یا ردیف است که در آن نشانگر است.

{{% /alert %}}

{{% alert color="primary" %}}

توجه داشته باشید که ویژگی های **Font**، **ParagraphFormat** و **PageSetup** هر زمان که به مکان دیگری در سند حرکت می کنید به روز می شوند تا ویژگی های قالب بندی این مکان را منعکس کنند.

{{% /alert %}}
