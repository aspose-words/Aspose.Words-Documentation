---
title: مستند سازنده بررسی در Java
second_title: Aspose.Words برای Java
articleTitle: مستند سازنده
linktitle: مستند سازنده
type: docs
description: "DocumentBuilder به شما اجازه می دهد تا اسناد پویا را از ابتدا بسازید یا عناصر جدیدی را به عناصر موجود اضافه کنید. DocumentBuilder روش هایی را برای قرار دادن متن، چک باکس ها، جداول، تصاویر و سایر عناصر محتوا در متن، و Java..."
weight: 30
url: /fa/java/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) یک کلاس قدرتمند است که با [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) و شما را قادر به ساخت اسناد پویا از ابتدا یا اضافه کردن عناصر جدید به یک موجود است.

**DocumentBuilder** روش هایی برای قرار دادن متن، چک باکس ها، اشیاء، پاراگراف ها، لیست ها، جداول، تصاویر و سایر عناصر محتوا فراهم می کند. این اجازه می دهد تا فونت ها، پاراگراف یا قالب بندی بخش را مشخص کنید و سایر عملیات را انجام دهید.

## مستند سازنده یا Aspose.Words DOM

**DocumentBuilder** تکمیل کلاس ها و روش های موجود در Aspose.Words Document Object Model ()DOMبرای ساده کردن رایج ترین وظایف ساختمانی سند. این است که شما می توانید محتوای اسناد را از طریق هر دو ایجاد و اصلاح کنید. Aspose.Words DOMکه نیاز به درک خوبی از ساختار درخت و استفاده از سندساز دارد. The The The The The The `DocumentBuilder` "facade" برای پیچیده **Document** ساختار که به شما اجازه می دهد به سرعت و به راحتی محتوا و قالب بندی را وارد کنید.

عملیات که ممکن است با **DocumentBuilder** همچنین ممکن است هنگام استفاده از کلاس ها Aspose.Words DOM مستقیم با این حال، استفاده Aspose.Words DOM کلاس ها به طور مستقیم نیاز به خطوط کد بیشتری نسبت به استفاده دارند. **DocumentBuilder**...

## مستند ناوبری

ناوبری سند بر اساس مفهوم یک نمای مجازی است که می توانید با استفاده از آن به مکان دیگری در سند حرکت کنید. **DocumentBuilder.MoveToXXX** روش هایی مانند [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) و [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean)... این نشانگر مجازی نشان می دهد که متن در هنگام فراخوان روش ها وارد می شود. [Write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write-java.lang.String), [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int), و دیگران. مقاله زیر را "ناقدرت با Cursor" ببینید تا بیشتر در مورد نمای مجازی یاد بگیرید.

مثال کد زیر نشان می دهد که چگونه به یک نشانه بروید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

## ساخت سند و اصلاح

Aspose.Words API کلاس های مختلفی را فراهم می کند که مسئول قالب بندی عناصر مختلف یک سند هستند. هر یک از کلاس ها شامل ویژگی های قالب بندی مربوط به یک عنصر سند خاص، مانند متن، پاراگراف، بخش و دیگران است. برای مثال، [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) کلاس نشان دهنده ویژگی های قالب بندی شخصیت، [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) کلاس نشان دهنده ویژگی های قالب بندی پاراگراف و غیره است. اشیاء این کلاس ها توسط مربوطه بازگردانده می شوند **DocumentBuilder** خواص، که همان نام را به عنوان کلاس دارند. بنابراین، شما می توانید به آنها دسترسی پیدا کنید و قالب دلخواه را در طول ساخت سند تنظیم کنید.

شما همچنین می توانید متن، چک باکس، شی، تصاویر، نشانه ها، زمینه های فرم و سایر عناصر سند را در موقعیت مکانی با استفاده از سوژه قرار دهید. `Write` روش یا هر یک از **DocumentBuilder.InsertXXX** روش ها، مانند [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean), [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String), و روش های مشابه

بیایید ببینیم چگونه یک سند ساده را با استفاده از **DocumentBuilder**...

### ایجاد یک سند با استفاده از DocumentBuilder

برای شروع، شما نیاز به ایجاد یک **DocumentBuilder** و آن را با یک **Document** جسم شما یک مثال جدید ایجاد می کنید **DocumentBuilder** از طریق تماس با سازنده آن و آن را به یک **Document** اعتراض به وابستگی به سازنده

برای قرار دادن یک متن، رشته ای از متن را که باید به سند وارد کنید را به سند منتقل کنید. **Write** روش

مثال کد زیر نشان می دهد که چگونه یک سند ساده با استفاده از یک سازنده سند ایجاد کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-quickstart-HelloWorld-CreateNewDocument.java" >}}

### دانلود بازی Specify Document Formatting

The The The The The The [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) ملک قالب بندی متن را تعریف می کند. این شی شامل ویژگی های مختلف فونت (نام فونت، اندازه فونت، رنگ و غیره) است. برخی از ویژگی های فونت مهم نیز توسط **DocumentBuilder** ویژگی هایی که به شما اجازه می دهد به طور مستقیم به آنها دسترسی داشته باشید. اینها هستند. [Font.Bold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.Italic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic), و [Font.Underline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline) خواص boolean

مثال کد زیر نشان می دهد که چگونه یک متن قالب بندی شده را با استفاده از **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) قالب بندی شخصیت را مشخص می کند که به تمام متن موجود از موقعیت فعلی در سند به بعد اعمال خواهد شد.
- [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) قالب بندی پاراگراف برای حال حاضر و تمام پاراگراف ها را مشخص می کند.
- [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) ویژگی های صفحه و بخش را برای بخش فعلی و کل بخش که وارد خواهد شد مشخص می کند.
- [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) و [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) ویژگی های قالب بندی را مشخص کنید که به سلول های جدول و ردیف ها از موقعیت فعلی در سند به بعد اعمال می شود.

در این وضعیت، "در حال حاضر" به معنی موقعیت، پاراگراف، بخش، سلول یا ردیف است که در آن مکان نما است.

{{% /alert %}}

{{% alert color="primary" %}}

توجه داشته باشید که **Font**, **ParagraphFormat**, و **PageSetup** خواص زمانی که شما به یک مکان مختلف در سند حرکت می کنید به روز می شوند تا ویژگی های قالب بندی این مکان را منعکس کنند.

{{% /alert %}}
