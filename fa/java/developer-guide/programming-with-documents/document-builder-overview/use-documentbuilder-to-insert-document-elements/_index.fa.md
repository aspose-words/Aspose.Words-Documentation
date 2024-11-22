---
title: استفاده از `DocumentBuilder` گزینه Insert Document Elements
second_title: Aspose.Words برای Java
articleTitle: استفاده از `DocumentBuilder` گزینه Insert Document Elements
linktitle: استفاده از `DocumentBuilder` گزینه Insert Document Elements
type: docs
description: "عناصر سند را با استفاده از سازنده سند در Java..."
weight: 10
url: /fa/java/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

The The The The The The [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) برای اصلاح اسناد استفاده می شود. این مقاله توضیح می دهد و توضیح می دهد که چگونه تعدادی از وظایف را انجام دهید.

## اضافه کردن یک رشته از متن

به سادگی رشته ای از متن را که شما نیاز به وارد کردن به سند به [DocumentBuilder.write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write(java.lang.String)روش قالب بندی متن توسط `Font` مالکیت این شی شامل ویژگی های مختلف فونت (نام فونت، اندازه فونت، رنگ و غیره) است. برخی از ویژگی های فونت مهم نیز توسط [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) ویژگی هایی که به شما اجازه می دهد به طور مستقیم به آنها دسترسی داشته باشید. خواص Boolean [Font.getBold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.getItalic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic), و [Font.getUnderline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline)...

{{% alert color="primary" %}}

توجه داشته باشید که قالب بندی شخصیت شما برای تمام متن های موجود از موقعیت فعلی در سند به بعد اعمال خواهد شد.

{{% /alert %}}

مثال کد زیر شامل متن قالب شده با استفاده از DocumentBuilder است.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WriteAndFont-WriteAndFont.java" >}}

## قرار دادن یک پاراگراف

DocumentBuilder.Writeln رشته ای از متن را به سند وارد می کند اما علاوه بر این، یک پاراگراف را اضافه می کند. قالب بندی فونت فعلی نیز توسط DocumentBuilder مشخص شده است. دریافت کنید مالکیت فونت و قالب بندی فعلی پاراگراف توسط سندساز تعیین می شود.getParagraph Format ملک

مثال کد زیر نشان می دهد که چگونه یک پاراگراف را به سند وارد کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

## اضافه کردن یک جدول

الگوریتم پایه برای ایجاد یک جدول با استفاده از `DocumentBuilder` ساده است:

1. شروع جدول با استفاده از [DocumentBuilder.startTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable)...
1. قرار دادن یک سلول با استفاده از [DocumentBuilder.insertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell)... این به طور خودکار یک ردیف جدید را شروع می کند. در صورت لزوم، استفاده از [DocumentBuilder.getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) مالکیت برای مشخص کردن قالب بندی سلولی
1. اضافه کردن محتویات سلول با استفاده از `DocumentBuilder` روش ها
1. مراحل 2 و 3 را تا زمانی که ردیف کامل شود تکرار کنید.
1. Call Call Call [DocumentBuilder.endRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) برای پایان دادن به ردیف فعلی در صورت لزوم استفاده [DocumentBuilder.RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) مالکیت برای مشخص کردن قالب بندی ردیف
1. مراحل 2 - 5 را تا زمانی که میز کامل شود تکرار کنید.
1. Call Call Call [DocumentBuilder.endTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) برای پایان دادن به ساختمان جدول روش های مناسب برای ایجاد جدول در زیر شرح داده شده است.

### شروع یک جدول

Calling DocumentBuilder جدول اولین گام در ساخت یک میز است. همچنین می توان آن را در داخل یک سلول نامید، در این صورت، یک میز لانه ای را شروع می کند. روش بعدی برای تماس، DocumentBuilder است.

### قرار دادن یک سلول

بعد از این که به DocumentBuilder زنگ بزنید. Insert سلول، یک سلول جدید ایجاد می شود و هر محتوایی که با استفاده از روش های دیگر اضافه می کنید. `DocumentBuilder` کلاس به سلول فعلی اضافه خواهد شد. برای شروع یک سلول جدید در یک ردیف، DocumentBuilder را نام ببرید. Insert دوباره سلول استفاده از DocumentBuilder.get cell ویژگی های فرمت برای مشخص کردن قالب بندی سلولی بازگشت یک [getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) شی که نشان دهنده همه قالب بندی برای یک سلول جدول است.

### پایان دادن به یک Row

Call DocumentBuilder برای پایان دادن به ردیف فعلی اگر شما به DocumentBuilder زنگ بزنید. Insert بلافاصله بعد از آن، میز بر روی یک ردیف جدید ادامه می یابد. استفاده از `DocumentBuilder.RowFormat` مالکیت برای مشخص کردن قالب بندی ردیف بازگشت یک [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) شی که نشان دهنده همه قالب بندی برای یک ردیف جدول است.

### پایان دادن به یک جدول

Call DocumentBuilder جدول برای پایان دادن به میز فعلی این روش باید تنها یک بار پس از DocumentBuilder نام گذاری شود. EndRow نامیده شد. هنگامی که به نام DocumentBuilder.end جدول، نشانگر را از سلول فعلی به یک موقعیت درست بعد از میز حرکت می کند. مثال زیر نشان می دهد که چگونه یک جدول فرمت شده ایجاد کنیم که شامل 2 ردیف و 2 ستون است.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.java" >}}

## قرار دادن یک استراحت

اگر می خواهید به طور صریح یک خط، پاراگراف، ستون، بخش یا صفحه را شروع کنید، به DocumentBuilder زنگ بزنید. کشویی را وارد کنید. Pass به این روش نوع شکستن شما نیاز به وارد کردن آن را نشان داده شده توسط `BreakType` تکرار
مثال کد زیر نشان می دهد که چگونه صفحه را به یک سند وارد کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.java" >}}

## اضافه کردن یک تصویر

DocumentBuilder چندین بار اضافی از [DocumentBuilder.insertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) روش هایی که به شما اجازه می دهد یک تصویر درون خط یا شناور را وارد کنید. اگر تصویر یک متافایل EMF یا WMF باشد، در قالب metafile وارد سند می شود. تمام تصاویر دیگر در فرمت PNG ذخیره می شوند. The DocumentBuilder روش تصویر می تواند از تصاویر از منابع مختلف استفاده کند:

- از یک فایل یا `URL` با گذشت یک پارامتر رشته
- از یک جریان با عبور `Stream` پارامتر پارامتر پارامتر پارامتر
- از یک شی تصویر با عبور یک پارامتر تصویر
- از یک آرایه بایت با عبور یک پارامتر آرایه بایت
- و دیگران

برای هر یک از سندسازها Insert روش های تصویر، اضافه بار بیشتری وجود دارد که به شما اجازه می دهد یک تصویر را با گزینه های زیر وارد کنید:

- • داخل خط یا شناور در یک موقعیت خاص
- درصد مقیاس یا اندازه سفارشی

علاوه بر این، سندساز روش تصویر بازگشت [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) چیزی که فقط ایجاد و وارد شده است، بنابراین شما می توانید خواص شکل را بیشتر تغییر دهید.

### اضافه کردن یک تصویر Inline

یک رشته واحد را به نمایندگی از یک فایل که شامل تصویر به DocumentBuilder. Insert تصویر برای قرار دادن تصویر به سند به عنوان یک گرافیک خط. مثال کد زیر نشان می دهد که چگونه یک تصویر خط در موقعیت نشانگر را به یک سند وارد کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertInlineImage-DocumentBuilderInsertInlineImage.java" >}}

### تصویر شناور (به طور کامل موقعیت)

این مثال یک تصویر شناور را از یک فایل یا یک فایل وارد می کند. `URL` در یک موقعیت و اندازه مشخص

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertFloatingImage-DocumentBuilderInsertFloatingImage.java" >}}

## اضافه کردن یک Bookmark

برای قرار دادن یک نشانه در سند، باید موارد زیر را انجام دهید:

1. Call Call Call [DocumentBuilder.startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) آن را به عنوان نام مورد نظر از نشانه.
1. اضافه کردن متن نشانه با استفاده از `DocumentBuilder` روش ها
1. Call Call Call [DocumentBuilder.endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) عبور از آن همان نام که شما با DocumentBuilder.startBookmark استفاده می کنید.

نشانه ها می توانند همپوشانی داشته باشند و هر محدوده ای را پوشش دهند. برای ایجاد یک نشانه معتبر شما نیاز به تماس با هر دو DocumentBuilder.startBookmark و DocumentBuilder.endBookmark با همان نام نشانه.

نشانه ها یا نشانه های بد شکل گرفته با نام های تکراری زمانی که سند ذخیره می شود نادیده گرفته می شوند.

مثال کد زیر نشان می دهد که چگونه یک نشانه را به یک سند با استفاده از یک سازنده سند وارد کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.java" >}}

## قرار دادن یک فیلد

فیلد ها در Microsoft Word اسناد شامل یک کد زمینه و یک نتیجه زمینه است. کد زمینه مانند فرمول است و نتیجه زمینه ارزش تولید فرمول است. کد زمینه همچنین ممکن است شامل سوئیچ های میدانی باشد که دستورالعمل های اضافی برای انجام یک عمل خاص هستند. شما می توانید بین نمایش کدهای زمینه ای و نتایج در سند خود تغییر دهید. Microsoft Word با استفاده از کلید میانبر Alt+F9 کد های فیلد بین بریس های پیچی ظاهر می شوند ( { } استفاده [DocumentBuilder.insertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) برای ایجاد زمینه در سند شما باید یک نوع فیلد، کد زمینه و ارزش فیلد را مشخص کنید. اگر شما در مورد ترکیب کد زمینه خاص مطمئن نیستید، زمینه را در زمینه ایجاد کنید Microsoft Word ابتدا و تغییر دهید تا کد فیلد آن را ببینید
مثال کد زیر یک فیلد ادغام را به یک سند با استفاده از DocumentBuilder وارد می کند.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertField-DocumentBuilderInsertField.java" >}}

## قرار دادن یک `Form` Field Field

فیلدهای فرم یک مورد خاص از زمینه های Word است که اجازه می دهد "interaction" با کاربر است. فیلدهای فرم در Microsoft Word شامل Textbox، Compbox و Checkbox است. DocumentBuilder روش های خاصی را برای قرار دادن هر نوع زمینه فرم در سند فراهم می کند: [DocumentBuilder.insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput-java.lang.String-int-java.lang.String-java.lang.String-int) , [DocumentBuilder.insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), و [DocumentBuilder.insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertComboBox-java.lang.String-java.lang.String---int)... توجه داشته باشید که اگر یک نام را برای فیلد فرم مشخص کنید، یک نشانه به طور خودکار با همان نام ایجاد می شود.

### اضافه کردن یک ورودی متن

DocumentBuilder.TextInput برای قرار دادن یک Textbox به سند. مثال کد زیر نشان می دهد که چگونه یک فیلد فرم ورودی متن را به یک سند وارد کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### قرار دادن یک `CheckBox`

Call DocumentBuilder CheckBox برای قرار دادن چک باکس به سند مثال کد زیر نشان می دهد که چگونه یک فیلد فرم چک باکس را به یک سند وارد کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### اضافه کردن یک جعبه جدید

Call DocumentBuilderComboBox برای قرار دادن یک جعبه شانه به سند. مثال کد زیر نشان می دهد که چگونه یک فیلد فرم شانه را به یک سند وارد کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## قرار دادن محلی در سطح Field

مشتریان می توانند مشخص کنند محلی در سطح میدان در حال حاضر و می تواند به کنترل بهتر دست یابد. محلی Ids می تواند با هر زمینه در داخل DocumentBuilder مرتبط باشد. مثال های زیر نشان می دهد که چگونه از این گزینه استفاده کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

## اضافه کردن HTML

شما به راحتی می توانید یک رشته HTML را وارد کنید که شامل یک قطعه HTML یا کل سند HTML در سند Word است. فقط این رشته را به DocumentBuilder منتقل کنید. Insert روش Html یکی از پیاده سازی های مفید این روش ذخیره سازی یک رشته HTML در یک پایگاه داده و قرار دادن آن در سند در طول زمان Mail Merge برای به دست آوردن محتوای فرمت شده به جای ساخت آن با استفاده از روش های مختلف سازنده سند. مثال کد زیر نشان می دهد که HTML را به یک سند با استفاده از DocumentBuilder وارد می کند.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHtml-DocumentBuilderInsertHtml.java" >}}

## اضافه کردن Hyperlink

از DocumentBuilderlink برای وارد کردن یک لینک به سند استفاده کنید. این روش سه پارامتر را می پذیرد: متن لینک در سند، مقصد لینک (URL یا نام یک نشانه در داخل سند) و یک پارامتر بولین که باید نمایش داده شود. true اگر `URL` نام یک نشانه در داخل سند است. DocumentBuilder این روش همیشه apostrophes را در ابتدا و انتهای URL اضافه می کند. توجه داشته باشید که شما باید قالب بندی فونت را برای متن صفحه نمایش لینک به وضوح با استفاده از `Font` مالکیت مثال کد زیر یک لینک را به یک سند با استفاده از DocumentBuilder وارد می کند.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## اضافه کردن یک جدول از محتوا

شما می توانید یک `TOC` (در مورد محتوا) زمینه در سند در موقعیت فعلی با تماس با [DocumentBuilder.insertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String) روش روش محتوایی DocumentBuilder `TOC` زمینه در سند برای ساخت جدول محتوا و نمایش آنها با توجه به اعداد صفحه، هر دو **Document.UpdateFields**روش باید پس از قرار دادن میدان نامیده شود. مثال کد زیر نشان می دهد که چگونه یک جدول از محتوا را وارد یک سند کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTableOfContents-DocumentBuilderInsertTableOfContents.java" >}}

## اضافه کردن Ole Object

اگر می خواهید Ole Object Call [DocumentBuilder.insertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.lang.String-boolean-java.lang.String-java.lang.String)...

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

## ایجاد نام فایل و تمدید زمانی که Insert Ole Object

بسته OLE یک میراث و "undocumented" راه برای ذخیره اشیاء جاسازی شده اگر OLE handler ناشناخته است. اوایل Windows نسخه هایی مانند Windows 3.1، 95 و 98 بسته بندی داشتند. exe Application که می تواند برای جاسازی هر نوع داده در سند استفاده شود. در حال حاضر، این برنامه از بین رفته است Windows اما MS Word و سایر برنامه ها هنوز هم از آن برای جاسازی داده ها استفاده می کنند اگر OLE handler گم شده یا ناشناخته باشد. کلاس OlePackage اجازه دسترسی به ویژگی های بسته OLE را می دهد. مثال کد زیر نشان می دهد که چگونه نام فایل، پسوند و نمایش نام برای بسته OLE را تنظیم کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

## دسترسی به OLE Object RAW Data

مثال کد زیر نشان می دهد که چگونه OLE را دریافت کنیم داده های خام Object خام با استفاده از `OleFormat.GetRawData`() روش

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

## Insert افقی قانون در سند

مثال کد زیر نشان می دهد که چگونه می توان شکل حکومت افقی را به یک سند وارد کرد. `DocumentBuilder.InsertHorizontalRule` روش

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.java" >}}

## کار با Shapes

### اضافه کردن Inline و Free-floating Shapes

شما می توانید یک شکل خط را با یک نوع و اندازه مشخص و یک شکل شناور آزاد با موقعیت مشخص، اندازه و نوع بسته بندی متن به یک سند با استفاده از یک نوع مشخص وارد کنید. `DocumentBuilder.InsertShape` روش The The The The The The `DocumentBuilder.InsertShape` روش اجازه می دهد تا شکل DML را به مدل سند وارد کنید. این سند باید در قالب ذخیره شود، که از اشکال DML پشتیبانی می کند، در غیر این صورت این گره ها به شکل VML تبدیل می شوند، در حالی که صرفه جویی در سند. مثال کد زیر نشان می دهد که چگونه این نوع اشکال را به سند وارد کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

### ایجاد Snip Corner Rectangle

شما می توانید یک مستطیل گوشه snip با استفاده از Aspose.Words... انواع شکل تک CornerSnd، TopCornersSnd، DiagonalCornersSn، TopCorners OneRounded OneSed، SingleCornerRounded، TopCornersRounded و DiagonalCornersRounded. شکل DML با استفاده از `DocumentBuilder.InsertShape` روش با این انواع شکل این نوع را نمی توان برای ایجاد شکل VML استفاده کرد. تلاش برای ایجاد یک شکل با استفاده از سازنده عمومی طبقه "شکل" استثنا "بدون پشتیبانی" را افزایش می دهد. مثال کد زیر نشان می دهد که چگونه این نوع اشکال را به سند وارد کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

### شکل واردات با Math XML به عنوان شکل به DOM

می توانید استفاده کنید `LoadOptions.ConvertShapeToOfficeMath` اموال برای تبدیل اشکال با معادلهXML به اشیاء ریاضی Office. ارزش پیش فرض این ملک با رفتار MS Word مطابقت دارد یعنی شکل با معادله XML به اشیاء ریاضی آفیس تبدیل نمی شود.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-ConvertShapeToOfficeMath.java" >}}
