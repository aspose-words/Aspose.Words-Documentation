---
title: استفاده از `DocumentBuilder` اصلاح یک سند
second_title: Aspose.Words برای Java
articleTitle: استفاده از `DocumentBuilder` اصلاح یک سند
linktitle: استفاده از `DocumentBuilder` اصلاح یک سند
type: docs
description: "از سازنده سند برای اصلاح یک سند به راحتی استفاده کنید Java..."
weight: 20
url: /fa/java/using-documentbuilder-to-modify-a-document/
timestamp: 2024-10-21-11-17-44
---

## تصویرسازی Formatting

### قالب بندی

قالب بندی فونت فعلی توسط یک `Font` جسم بازگشت شده توسط `DocumentBuilder.Font` مالکیت The The The The The The `Font` کلاس شامل طیف گسترده ای از خواص فونت ممکن در Microsoft Word...

| ![font-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-1.png) |
|  :-  |
مثال کد زیر نشان می دهد که چگونه قالب بندی فونت را تنظیم کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetFontFormatting-DocumentBuilderSetFontFormatting.java" >}}


### Cell Formatting

قالب بندی سلولی در طول ساخت یک میز استفاده می شود. توسط یک `CellFormat` جسم بازگشت شده توسط `DocumentBuilder.CellFormat` مالکیت CellFormat شامل ویژگی های مختلف سلولی مانند عرض یا تراز عمودی است.

| ![cell-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-2.png) |
|  :-  |
مثال کد زیر نشان می دهد که چگونه یک جدول ایجاد کنیم که شامل یک سلول تک فرمت شده است.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableCellFormatting-DocumentBuilderSetTableCellFormatting.java" >}}

### Row Formatting

قالب بندی ردیف فعلی توسط یک `RowFormat` چیزی که توسط `DocumentBuilder.RowFormat` مالکیت این شی اطلاعات را در مورد تمام قالب بندی ردیف جدول قرار می دهد.

| ![row-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-3.png) |
|  :-  |
بودنlow code مثال نشان می دهد که چگونه یک جدول ایجاد کنیم که شامل یک سلول واحد است و قالب بندی ردیف را اعمال می کند.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableRowFormatting-DocumentBuilderSetTableRowFormatting.java" >}}

### فهرست بندی

Aspose.Words اجازه می دهد تا آسان ایجاد لیست با استفاده از قالب بندی لیست. DocumentBuilder ارائه می دهد `DocumentBuilder.ListFormat` اموالی که بازگشت `ListFormat` جسم این شی دارای چندین روش برای شروع و پایان دادن به یک لیست و افزایش / کاهش ناتوانی است.

| ![list-fformatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-4.png) |
|  :-  |
دو نوع کلی لیست در Microsoft Wordگلوله و شماره

- برای شروع یک لیست گلوله، تماس بگیرید [ListFormat.applyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault) ...
- برای شروع یک لیست شماره، تماس بگیرید [ListFormat.applyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault) ...

گلوله یا شماره و قالب بندی به پاراگراف فعلی اضافه می شود و تمام پاراگراف های بعدی ایجاد شده با استفاده از آن اضافه می شوند. **DocumentBuilder** تا زمانی که [ListFormat.removeNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) فراخوانده شده است برای متوقف کردن قالب بندی لیست گلوله.

در اسناد Word، لیست ها ممکن است شامل حداکثر ۹ سطح باشند. قالب بندی لیست برای هر سطح مشخص می کند که چه گلوله یا شماره ای استفاده می شود، بدون داخل، فضای بین گلوله و متن و غیره.

- برای افزایش سطح فهرست پاراگراف فعلی توسط یک سطح، تماس بگیرید [ListFormat.listIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)...
- برای کاهش سطح فهرست پاراگراف فعلی توسط یک سطح، تماس بگیرید [ListFormat.listOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)...

روش ها سطح لیست را تغییر می دهند و خواص قالب بندی سطح جدید را اعمال می کنند.

{{% alert color="primary" %}}

شما همچنین می توانید از [ListFormat.listLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#setListLevelNumber-int) مالکیت برای دریافت یا تنظیم سطح لیست برای پاراگراف سطح لیست 0 تا 8 عدد است.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه یک لیست چند سطحی ایجاد کنیم.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

### راه اندازی صفحه و بخش Formatting

تنظیمات صفحه و ویژگی های بخش در `PageSetup` چیزی که توسط `DocumentBuilder.PageSetup` مالکیت این شی شامل تمام ویژگی های تنظیم صفحه از یک بخش ( حاشیه چپ، حاشیه پایین، اندازه کاغذ و غیره) به عنوان خواص است.

| ![section-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-5.png) |
|  :-  |
مثال کد زیر نشان می دهد که چگونه می توان چنین ویژگی هایی را به عنوان اندازه صفحه و جهت گیری برای بخش فعلی تنظیم کرد.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetPageSetupAndSectionFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.java" >}}

### استفاده از یک سبک

برخی از اشیاء قالب بندی مانند فونت یا سبک های پشتیبانی Paragraph Format. یک سبک واحد ساخته شده در یا تعریف شده توسط یک کاربر نشان داده می شود `Style` شی که شامل خواص سبک مربوطه مانند نام، سبک پایه، فونت و قالب بندی پاراگراف از سبک و غیره است.

علاوه بر این، **Style** جسم فراهم می کند [Style.getStyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) اموالی که یک شناسه سبک مستقل محلی را که توسط یک شناسه سبک مستقل نمایندگی می شود، بازگرداند. **Style.StyleIdentifier** افزایش ارزش نکته این است که نام سبک های داخلی در Microsoft Word برای زبان های مختلف محلی هستند. با استفاده از یک شناسه سبک، شما می توانید سبک صحیح را بدون در نظر گرفتن زبان سند پیدا کنید. ارزش های enumeration مربوط به Microsoft Word سبک های داخلی مانند عادی، سر 1، سر 2 و غیره. تمام سبک های تعریف شده توسط کاربر اختصاص داده شده است **StyleIdentifier ارزش کاربر**...

| ![apply-style-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-6.png) |
|  :-  |
مثال کد زیر نشان می دهد که چگونه یک سبک پاراگراف را اعمال کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

### مرز و سایه

مرزها توسط مرز نمایندگی می شوند. این مجموعه ای از اشیاء مرزی است که توسط شاخص یا توسط نوع مرزی قابل دسترسی هستند. نوع مرز توسط `BorderType` تکرار برخی از ارزش های آن برای چندین یا تنها یک عنصر سند قابل اجرا هستند. برای مثال، `BorderType.Bottom` قابل اجرا برای یک بند یا سلول جدول در حالی که `BorderType.DiagonalDown` مرز قطر را فقط در یک سلول جدول مشخص می کند.

هر دو مجموعه مرزی و هر مرز جداگانه دارای ویژگی های مشابه مانند رنگ، سبک خط، عرض خط، فاصله از متن و سایه اختیاری هستند. آنها توسط خواص همان نام نمایندگی می شوند. شما می توانید با ترکیب ارزش های مالکیت به انواع مختلف مرزی دست یابید. علاوه بر این، هر دو **BorderCollection** و **Border** اشیا به شما اجازه می دهد تا این ارزش ها را به طور پیش فرض با تماس با [Border.clearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) روش توجه داشته باشید که هنگامی که املاک مرزی برای مقادیر پیش فرض تنظیم می شوند، مرز نامرئی است.

| ![set-borders-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-7.png) |
|  :-  |
The The The The The The [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) کلاس شامل ویژگی های سایه دار برای عناصر سند است. شما می توانید بافت سایه مورد نظر و رنگ هایی که در پس زمینه و پیش زمینه عنصر اعمال می شود را تنظیم کنید.

بافت سایه دار با یک [آرشیو برچسب ها](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) افزایش ارزش که اجازه می دهد تا استفاده از الگوهای مختلف به **Shading** جسم به عنوان مثال، برای تنظیم یک رنگ پس زمینه برای یک عنصر سند، استفاده از آن [دانلود موسیقی متن بازی The Punch دانلود بازی Punch Solid](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) ارزش و تنظیم رنگ سایه به عنوان مناسب.

| ![borders-and-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-8.png) |
|  :-  |
مثال زیر نشان می دهد که چگونه مرزها و سایه را به یک پاراگراف اعمال کنیم.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}

### Snap to Grid

Aspose.Words دو ویژگی را فراهم می کند `ParagraphFormat.SnapToGrid` و `Font.SnapToGrid` برای دریافت و تنظیم اموال پاراگراف به شبکه

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetSnapToGrid.java" >}}

### حرکت دادن Cursor

### تشخیص موقعیت فعلی Cursor

شما می توانید به جایی برسید که نشانگر سازنده در حال حاضر در هر زمان قرار دارد. The The The The The The [DocumentBuilder.getCurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) ملک به گره ای که در حال حاضر در این سازنده انتخاب شده است، باز می گردد. این گره یک کودک مستقیم از یک پاراگراف است. هر عملیات ورودی که با استفاده از آن انجام می دهید `DocumentBuilder` پیش از آنکه `DocumentBuilder.CurrentNode`... هنگامی که پاراگراف فعلی خالی است یا مکان نما درست قبل از پایان پاراگراف قرار می گیرد، `DocumentBuilder.CurrentNode` بازگشت null

همچنین می توانید از آن استفاده کنید. [DocumentBuilder.getCurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) مالکیت، که در حال حاضر پاراگراف را انتخاب می کند **DocumentBuilder**... بودنlow code مثال نشان می دهد که چگونه به گره فعلی در یک سازنده سند دسترسی داشته باشید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderCursorPosition-DocumentBuilderCursorPosition.java" >}}

### حرکت به هر گره (Paragraphs و فرزندانشان)

اگر شما یک گره شیء سند دارید، که یک پاراگراف یا یک کودک مستقیم از یک پاراگراف است، می توانید نشانگر سازنده را به این گره اشاره کنید. استفاده از [DocumentBuilder.moveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) روش برای انجام این کار
مثال کد زیر نشان می دهد که چگونه یک موقعیت نشانگر را به یک گره مشخص منتقل کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

### حرکت به سند شروع / پایان

اگر شما نیاز به حرکت به شروع سند دارید، تماس بگیرید [DocumentBuilder.moveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart)... اگر شما باید به انتهای سند بروید، تماس بگیرید [DocumentBuilder.moveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd)...

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### حرکت به یک بخش

اگر شما با یک سند کار می کنید که شامل بخش های مختلف است، می توانید با استفاده از یک بخش مطلوب به بخش دلخواه بروید. [DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int)... این روش نشانگر را به ابتدای یک بخش مشخص منتقل می کند و شاخص بخش مورد نیاز را می پذیرد. هنگامی که شاخص بخش بزرگتر یا مساوی با 0 است، شاخص را از ابتدای سند با 0 بودن بخش اول مشخص می کند. هنگامی که شاخص بخش کمتر از 0 است، شاخص را از انتهای سند مشخص می کند -1 بخش آخر است. بودنlow code مثال نشان می دهد که چگونه یک موقعیت مکانی را به بخش مشخص منتقل کنید. شما می توانید فایل قالب این مثال را دانلود کنید. [اینجا اینجا](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)...

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSection-DocumentBuilderMoveToSection.java" >}}

### حرکت به یک سرسر / پا

هنگامی که شما نیاز به قرار دادن برخی از داده ها به یک هدر یا پادار دارید، ابتدا باید با استفاده از آن حرکت کنید. [DocumentBuilder.moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int)... این روش یک مقدار enumeration HeadernelerType را می پذیرد که نوع هدر یا پابر را به جایی که نما باید منتقل شود مشخص می کند.

اگر می خواهید هدرها و پاهایی را که برای صفحه اول متفاوت هستند ایجاد کنید، باید اسلاید را تنظیم کنید. [PageSetup.getDifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) مالکیت **true**... اگر می خواهید هدرها و پاهایی را ایجاد کنید که برای صفحات عجیب و غریب متفاوت هستند، باید تنظیم کنید. [PageSetup.getOddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) برای **true**...

اگر باید به داستان اصلی برگردید، از آن استفاده کنید[DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) برای حرکت از سر یا پا در زیر مثال، هدرها و پاها را در یک سند با استفاده از DocumentBuilder ایجاد می کند.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### حرکت به یک پاراگراف

استفاده از[DocumentBuilder.moveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) برای حرکت مکان نما به یک پاراگراف مطلوب در بخش فعلی. شما باید دو پارامتر را به این روش منتقل کنید: بند Index (شاخص پاراگراف برای حرکت به سمت) و شخصیت Index (شاخص کاراکتر داخل پاراگراف).

ناوبری در داستان فعلی بخش فعلی انجام می شود. به این معنی که اگر شما به هدر اولیه بخش اول حرکت کنید، پاراگرافIndex شاخص پاراگراف را در داخل آن هدر آن بخش مشخص می کند.

هنگامی که پاراگراف Index بزرگتر یا مساوی با 0 است، شاخص را از ابتدای بخش با 0 به عنوان پاراگراف اول مشخص می کند. هنگامی که پاراگراف Index کمتر از 0 است، شاخص را از انتهای بخش مشخص می کند -1 پاراگراف آخر است. شاخص کاراکتر در حال حاضر تنها می تواند به عنوان 0 برای حرکت به ابتدای پاراگراف یا -1 برای حرکت به انتهای پاراگراف مشخص شود. مثال کد زیر نشان می دهد که چگونه یک موقعیت نشانگر را به پاراگراف مشخص منتقل کنید. شما می توانید فایل قالب این مثال را دانلود کنید. [اینجا اینجا](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)...

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToParagraph-DocumentBuilderMoveToParagraph.java" >}}

### حرکت به یک Table Cell

استفاده از [DocumentBuilder.moveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) اگر شما نیاز به حرکت نما به یک سلول جدول در بخش فعلی. این روش چهار پارامتر را می پذیرد:

- TableIndex - شاخص جدول برای حرکت به سمت.
- ردیف Index - شاخص ردیف در جدول.
- ستون Index - شاخص ستون در جدول.
- • CharacterIndex – شاخص شخصیت داخل سلول

ناوبری در داخل داستان فعلی بخش فعلی انجام می شود.

برای پارامترهای شاخص، هنگامی که شاخص بزرگتر یا مساوی با 0 است، شاخص را از ابتدا با 0 عنصر اول مشخص می کند. هنگامی که شاخص کمتر از 0 است، شاخص را از پایان با -1 عنصر نهایی مشخص می کند.

همچنین توجه داشته باشید که شخصیت Index در حال حاضر تنها می تواند 0 را برای حرکت به ابتدای سلول یا -1 برای حرکت به انتهای سلول مشخص کند. مثال کد زیر نشان می دهد که چگونه یک موقعیت نشانگر را به سلول جدول مشخص منتقل کنید. شما می توانید فایل قالب این مثال را دانلود کنید. [اینجا اینجا](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx)...

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### حرکت به یک علامت

علامت ها اغلب برای علامت گذاری مکان های خاص در سند که در آن عناصر جدید قرار می گیرند استفاده می شوند. برای حرکت به یک نشانه، استفاده [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String)... این روش دارای دو بار اضافی است. ساده ترین چیزی را نمی پذیرد جز نام نشانه ای که در آن مکان نما باید حرکت کند. مثال کد زیر نشان می دهد که چگونه یک موقعیت نشانگر را به یک نشانه منتقل کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

این بار بار، نشانگر را به یک موقعیت درست پس از شروع علامت گذاری با نام مشخص حرکت می کند. اضافی دیگر [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) به یک نشانه با دقت بیشتر حرکت کنید. این دو پارامتر اضافی را می پذیرد:

- استارت تعیین می کند که آیا حرکت نما به آغاز و یا پایان نشانه.
- پس از تعیین اینکه آیا برای حرکت مکان نما به بعد از شروع نشانه یا موقعیت نهایی، و یا به حرکت نشانگر به قبل از علامت گذاری و یا موقعیت نهایی.

مثال کد زیر نشان می دهد که چگونه یک موقعیت نشانگر را فقط پس از پایان نشانه حرکت دهید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

قرار دادن متن جدید به این ترتیب جایگزین متن موجود نشانه نمی شود. توجه داشته باشید که برخی از نشانه ها در سند به فرم فیلد اختصاص داده شده است. انتقال به چنین نشانه ای و قرار دادن متن در آنجا متن را به کد فیلد فرم وارد می کند. اگر چه این زمینه فرم را بی اعتبار نمی کند، متن موجود قابل مشاهده نخواهد بود زیرا بخشی از کد زمینه می شود.

### حرکت به یک `Merge` Field Field

گاهی اوقات شما ممکن است نیاز به انجام یک "مدیریتی" داشته باشید. mail merge استفاده از `DocumentBuilder` یا یک فیلد ادغام شده را در یک راه خاص در داخل یک mail merge داور رویداد این زمانی است که [DocumentBuilder.moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) می تواند مفید باشد. این روش نام میدان ادغام را می پذیرد. این حرکت را به یک موقعیت فقط فراتر از زمینه ادغام مشخص و حذف میدان ادغام. مثال کد زیر نشان می دهد که چگونه نما را به یک موقعیت فقط فراتر از زمینه ادغام مشخص شده حرکت دهید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

## چگونگی تبدیل بین واحد های اندازه گیری

اکثر خواص شی ارائه شده در Aspose.Words API این نشان دهنده برخی اندازه گیری ها ( عرض / ارتفاع، حاشیه ها و مسافت های مختلف) است که ارزش ها را در نقاط (1 اینچ برابر 72 امتیاز). گاهی اوقات این راحت نیست، بنابراین وجود دارد `ConvertUtil` کلاس که توابع کمکی را برای تبدیل بین واحدهای اندازه گیری مختلف فراهم می کند. این اجازه می دهد تا تبدیل اینچ به نقاط، نقاط به اینچ، پیکسل به نقاط و نقاط به پیکسل. هنگامی که پیکسل ها به نقاط تبدیل می شوند و برعکس، می توان آن را در 96 dpi (dots در هر اینچ) قطعنامه یا در رزولوشن dpi مشخص انجام داد.

**ConvertUtil** هنگام تنظیم ویژگی های مختلف صفحه بسیار مفید است، زیرا برای مثال اینچ بیشتر از حد معمول است. مثال زیر نشان می دهد که چگونه خواص صفحه را در اینچ تنظیم کنید.

مثال کد زیر نشان می دهد که چگونه خواص صفحه را در اینچ مشخص کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
